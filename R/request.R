request <- function(method = "GET", url = NA_character_, headers = character(),
                    fields = list(),
                    options = character(), auth_token = NULL,
                    output = c("memory", "file", "stream")) {
  stopifnot(is.character(method), length(method) == 1)
  stopifnot(is.character(url), length(url) == 1)
  stopifnot(is.character(headers))
  output <- match.arg(output)

  structure(
    list(
      method = toupper(method),
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

request_default <- function() {
  cert <- system.file("cacert.pem", package = "httr")
  request(
    options = list(
      followlocation = TRUE,
      maxredirs = 10L,
      accept_encoding = "gzip",
      useragent = default_ua(),
      if (.Platform$OS.type == "windows") config(cainfo = cert),
      getOption("httr_config")
    ),
    headers = c(Accept = "application/json, text/xml, application/xml, */*")
  )
}

is.request <- function(x) inherits(x, "request")

combine_requests <- function(x, y) {
  stopifnot(is.request(x), is.request(y))

  request(
    y$method,
    y$url,
    keep_last(x$headers, y$headers),
    c(x$fields, y$fields),
    keep_last(x$options, y$options),
    y$output
  )
}

#' @export
c.request <- function(...) {
  Reduce(combine_requests, list(...))
}

#' @export
print.request <- function(x, ...) {
  x <- request_build(x)

  cat(x$method, " ", x$url, " -> ", x$output, "\n", sep = "")
  named_vector("Options", x$options)
  named_vector("Headers", x$headers)
  named_vector("Fields", x$fields)
}

named_vector <- function(title, x) {
  if (length(x) == 0) return()

  cat(title, ":\n", sep = "")
  bullets <- paste0("* ", names(x), ": ", as.character(x))
  cat(bullets, sep = "\n")
}

keep_last <- function(...) {
  x <- c(...)
  x[!duplicated(names(x), fromLast = TRUE)]
}


request_build <- function(req) {
  req <- c(request_default(), req)

  if (req$method != "POST")
    req$options$customrequest <- req$method

  # Sign request, if needed
  if (!is.null(req$token))
    req <- c(req, req$token$sign(req$method, req$url))

  req
}

# Abstract over the differences in RCurl API depending on whether or not
# you send a body.
httr_perform <- function(req, handle) {
  stopifnot(is.request(req), inherits(handle, "curl_handle"))
  req <- request_build(req)

  # Set handle options
  do.call(curl::handle_setopt, c(list(handle), req$options))
  do.call(curl::handle_setheaders, c(list(handle), req$headers))
  do.call(curl::handle_setfields, c(list(handle), req$fields))
  on.exit(curl::handle_reset(handle), add = TRUE)

  resp <- curl::curl_perform(req$url, handle)

  all_headers <- curl::parse_headers(resp$headers, multiple = TRUE)
  headers <- last(all_headers)
  if (!is.null(headers$date)) {
    date <- parse_http_date(headers$Date)
  } else {
    date <- Sys.time()
  }

  response(
    url = res$url,
    status_code = res$status_code,
    headers = headers,
    all_headers = all_headers,
    cookies = curl::handle_cookies(handle),
    content = content,
    date = date,
    times = res$times,
    request = request
  )
}

