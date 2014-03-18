make_request <- function(method, handle, url, config = NULL, body = NULL,
                         refresh = TRUE) {
  if (is.null(config)) config <- config()
  stopifnot(is.config(config))
  stopifnot(is.handle(handle))
  stopifnot(is.character(url), length(url) == 1)

  # Sign request, if needed
  signature <- sign(config$token, method, url, config)

  # Combine options
  opts <- modify_config(default_config(), signature$config)
  opts$customrequest <- toupper(method)
  opts$url <- signature$url

  # Perform request and capture output
  req <- perform(handle, opts, body)

  needs_refresh <- refresh && req$status == 401L &&
    !is.null(config$token) && config$token$can_refresh()
  if (needs_refresh) {
    message("Auto-refreshing stale OAuth token.")
    config$token$refresh()

    make_request(method, handle, url, config = config, body = body,
      refresh = FALSE)
  } else {
    req
  }
}

sign <- function(token, method, url, config) {
  if (is.null(token)) {
    list(url = url, config = config)
  } else {
    config$token <- NULL

    signed <- token$sign(method, url)
    signed$config <- modify_config(config, signed$config)
    signed
  }
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
