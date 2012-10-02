# @param action function with (at least) arguments \code{handle}, \code{url},
#   \code{opts}, which should return binary content from the specified
#   request. \code{make_request} will take care of resetting the handle's
#   config after the request is made.
make_request <- function(method, handle, url, ..., config = list()) {
  stopifnot(is.handle(handle))
  stopifnot(is.character(url), length(url) == 1)

  # Sign request, if needed
  if (!is.null(config$signature)) {
    signed <- config$signature(method, url)
    url <- signed$url
    config <- c(config, signed$config)

    config$signature <- NULL
  }

  # Figure out curl options --------------------------------------------------
  opts <- default_config()
  opts$customrequest <- toupper(method)
  opts$url <- url

  # Action config override defaults
  config_f <- match.fun(str_c(tolower(method), "_config"))
  action_config <- config_f(...)
  opts <- modifyList(opts, action_config)

  # Config argument overrides everything
  opts <- modifyList(opts, config)

  # But we always override headerfunction and writefunction
  hg <- basicHeaderGatherer()
  opts$headerfunction <- hg$update
  buffer <- binaryBuffer()
  opts$writefunction <-
    getNativeSymbolInfo("R_curl_write_binary_data")$address
  opts$writedata <- buffer@ref

  # Must always reset the handle config, even if something goes wrong
  on.exit(reset_handle_config(handle, opts))

  # Perform request and capture output ---------------------------------------
  curl_opts <- curlSetOpt(curl = NULL, .opts = opts)

  is_post <- isTRUE(attr(action_config, "post"))
  if (is_post) {
    body <- attr(action_config, "body")
    style <- attr(action_config, "style")
    .postForm(handle$handle, curl_opts, body, style)
    curlSetOpt(httppost = NULL, post = NULL, postfields = NULL,
      curl = handle$handle)
  } else {
    curlPerform(curl = handle$handle, .opts = curl_opts$values)
  }

  content <- as(buffer, "raw")
  info <- last_request(handle)
  times <- request_times(handle)
  headers <- insensitive(as.list(hg$value()))
  status <- as.numeric(str_extract(headers$status, "[0-9]+"))

  response(
    url = info$effective.url,
    handle = handle,
    status_code = status,
    headers = headers,
    cookies = parse_cookies(info$cookielist),
    content = content,
    times = times,
    config = config
  )
}

last_request <- function(x) {
  stopifnot(is.handle(x))
  getCurlInfo(x[[1]])
}

request_times <- function(x) {
  req <- last_request(x)

  c(redirect = req$redirect.time,
    namelookup = req$namelookup.time,
    connect = req$connect.time,
    pretransfer = req$pretransfer.time,
    starttransfer = req$starttransfer.time,
    total = req$total.time)

}

parse_cookies <- function(x) {
  if (length(x) == 0) return(list())

  pieces <- str_split_fixed(x, fixed("\t"), n = 7)
  setNames(as.list(pieces[, 7]), pieces[, 6])
}
