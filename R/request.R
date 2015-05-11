request <- function(method = NULL, url = NULL, headers = NULL,
                    fields = NULL, options = NULL, auth_token = NULL,
                    output = NULL) {
  if (!is.null(method))
    stopifnot(is.character(method), length(method) == 1)
  if (!is.null(url))
    stopifnot(is.character(url), length(url) == 1)
  if (!is.null(headers))
    stopifnot(is.character(headers))
  if (!is.null(fields))
    stopifnot(is.list(fields))
  if (!is.null(output))
    stopifnot(inherits(output, "write_function"))

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
  request(
    options = list(
      useragent = default_ua(),
      cainfo = find_cert_bundle(),
      getOption("httr_config")
    ),
    headers = c(Accept = "application/json, text/xml, application/xml, */*"),
    output = write_function("write_memory")
  )
}

as.request <- function(x) UseMethod("as.request")
as.request.list <- function(x) structure(x, class = "request")
as.request.request <- function(x) x

request_build <- function(method, url, config = list(), ...) {
  extra <- list(...)
  extra[has_names(extra)] <- NULL

  req <- Reduce(request_combine, extra)
  if (!identical(config, list))
    req <- request_combine(as.request(config), req)

  req$method <- method
  req$url <- url

  req
}

request_combine <- function(x, y) {
  if (length(x) == 0 && length(y) == 0) return(request())
  if (length(x) == 0) return(y)
  if (length(y) == 0) return(x)
  stopifnot(is.request(x), is.request(y))

  request(
    method =     y$method %||% x$method,
    url =        y$url %||% x$url,
    headers =    keep_last(x$headers, y$headers),
    fields =     c(x$fields, y$fields),
    options =    keep_last(x$options, y$options),
    auth_token = y$auth_token %||% x$auth_token,
    output =     y$output %||% x$output
  )
}

#' @export
print.request <- function(x, ...) {
  cat("<request>\n")
  if (!is.null(x$method) && !is.null(x$url))
    cat(toupper(x$method), " ", x$url, "\n", sep = "")
  if (!is.null(x$output))
  cat("Output: ", class(x$output)[[1]], "\n", sep = "")
  named_vector("Options", x$options)
  named_vector("Headers", x$headers)
  named_vector("Fields", x$fields)
}

request_prepare <- function(req) {
  req <- request_combine(request_default(), req)

  if (req$method != "POST")
    req$options$customrequest <- req$method

  # Sign request, if needed
  if (!is.null(req$token))
    req <- c(req, req$token$sign(req$method, req$url))

  req
}

request_perform <- function(req, handle) {
  stopifnot(is.request(req), inherits(handle, "curl_handle"))
  req <- request_prepare(req)

  browser()
  curl::handle_setopt(handle, .list = req$options)
  curl::handle_setheaders(handle, .list = req$headers)
  curl::handle_setform(handle, .list = req$fields)
  on.exit(curl::handle_reset(handle), add = TRUE)

  resp <- request_fetch(req$output, req$url, handle)

  all_headers <- parse_headers(resp$headers)
  headers <- last(all_headers)$headers
  if (!is.null(headers$date)) {
    date <- parse_http_date(headers$Date)
  } else {
    date <- Sys.time()
  }

  response(
    url = resp$url,
    status_code = resp$status_code,
    headers = headers,
    all_headers = all_headers,
    cookies = curl::handle_cookies(handle),
    content = resp$content,
    date = date,
    times = resp$times,
    request = request
  )
}

