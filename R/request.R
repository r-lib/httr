request <- function(method = NULL, url = NULL, headers = NULL,
                    fields = NULL, options = NULL, auth_token = NULL,
                    output = NULL) {
  if (!is.null(method)) {
    stopifnot(is.character(method), length(method) == 1)
  }
  if (!is.null(url)) {
    stopifnot(is.character(url), length(url) == 1)
  }
  if (!is.null(headers)) {
    stopifnot(is.character(headers))
  }
  if (!is.null(fields)) {
    stopifnot(is.list(fields))
  }
  if (!is.null(output)) {
    stopifnot(inherits(output, "write_function"))
  }

  structure(
    list(
      method = method,
      url = url,
      headers = keep_last(headers),
      fields = fields,
      options = compact(keep_last(options)),
      auth_token = auth_token,
      output = output
    ),
    class = "request"
  )
}
is.request <- function(x) inherits(x, "request")

request_default <- function() {
  c(
    request(
      options = list(
        useragent = default_ua()
      ),
      headers = c(Accept = "application/json, text/xml, application/xml, */*"),
      output = write_function("write_memory")
    ),
    getOption("httr_config")
  )
}

#' @export
c.request <- function(...) {
  Reduce(request_combine, list(...))
}

as.request <- function(x) UseMethod("as.request")
as.request.list <- function(x) structure(x, class = "request")
as.request.request <- function(x) x
as.request.NULL <- function(x) request()
as.request.Token <- function(x) request(auth_token = x)

request_build <- function(method, url, ...) {
  extra <- list(...)
  extra[has_name(extra)] <- NULL

  if (method == "HEAD") {
    extra <- c(extra, list(config(nobody = TRUE)))
  }

  req <- Reduce(request_combine, extra, init = request())

  req$method <- toupper(method)
  req$url <- url

  req
}

request_combine <- function(x, y) {
  if (length(x) == 0 && length(y) == 0) return(request())
  if (length(x) == 0) return(y)
  if (length(y) == 0) return(x)
  stopifnot(is.request(x), is.request(y))

  request(
    method = y$method %||% x$method,
    url = y$url %||% x$url,
    headers = keep_last(x$headers, y$headers),
    fields = c(x$fields, y$fields),
    options = keep_last(x$options, y$options),
    auth_token = y$auth_token %||% x$auth_token,
    output = y$output %||% x$output
  )
}

#' @export
print.request <- function(x, ...) {
  cat("<request>\n")
  if (!is.null(x$method) && !is.null(x$url)) {
    cat(x$method, " ", x$url, "\n", sep = "")
  }
  if (!is.null(x$output)) {
    cat("Output: ", class(x$output)[[1]], "\n", sep = "")
  }
  named_vector("Options", x$options)
  named_vector("Headers", x$headers)
  named_vector("Fields", x$fields)
  if (!is.null(x$auth_token)) {
    cat("Auth token: ", class(x$auth_token)[[1]], "\n", sep = "")
  }

  invisible(x)
}

request_prepare <- function(req) {
  req <- request_combine(request_default(), req)

  # Use specific options for GET and POST; otherwise, perform a custom request.
  # The PUT/UPLOAD options don't appear to work, instead hanging forever.
  switch(req$method,
    GET = req$options$httpget <- TRUE,
    POST = req$options$post <- TRUE,
    req$options$customrequest <- req$method
  )

  # Sign request, if needed
  token <- req$auth_token
  if (!is.null(token)) {
    signed_req <- token$sign(req$method, req$url)
    stopifnot(is.request(signed_req))
    req <- c(req, signed_req)
  }

  req
}

request_perform <- function(req, handle, refresh = TRUE) {
  stopifnot(is.request(req), inherits(handle, "curl_handle"))

  req <- request_prepare(req)

  ## This callback can cancel the request
  if (!is.null(res <- perform_callback("request", req = req))) return(res)

  curl::handle_setopt(handle, .list = req$options)
  if (!is.null(req$fields)) {
    curl::handle_setform(handle, .list = req$fields)
  }
  curl::handle_setheaders(handle, .list = req$headers)
  on.exit(curl::handle_reset(handle), add = TRUE)

  resp <- request_fetch(req$output, req$url, handle)

  # If return 401 and have auth token, refresh it and then try again
  needs_refresh <- refresh && resp$status_code == 401L &&
    !is.null(req$auth_token) && req$auth_token$can_refresh()
  if (needs_refresh) {
    message("Auto-refreshing stale OAuth token.")
    req$auth_token$refresh()
    return(request_perform(req, handle, refresh = FALSE))
  }

  url_scheme <- parse_url(resp$url)$scheme
  is_http <- tolower(url_scheme) %in% c("http", "https")
  if (is_http) {
    all_headers <- parse_http_headers(resp$headers)
    headers <- last(all_headers)$headers
  } else {
    all_headers <- NULL
    headers <- resp$headers
  }

  if (is_http && !is.null(headers$date)) {
    date <- parse_http_date(headers$Date)
  } else {
    date <- Sys.time()
  }

  res <- response(
    url = resp$url,
    status_code = resp$status_code,
    headers = headers,
    all_headers = all_headers,
    cookies = curl::handle_cookies(handle),
    content = resp$content,
    date = date,
    times = resp$times,
    request = req,
    handle = handle
  )

  ## If the callback provides a result, we return that
  if (!is.null(cbres <- perform_callback("response", req, res))) {
    return(cbres)
  }

  res
}
