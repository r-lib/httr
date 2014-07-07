make_request <- function(method, handle, url, config = NULL, body = NULL,
                         refresh = TRUE) {
  if (is.null(config)) config <- config()
  stopifnot(is.config(config))
  stopifnot(is.handle(handle))
  stopifnot(is.character(url), length(url) == 1)

  # Combine with default config
  opts <- modify_config(default_config(), config)
  opts$customrequest <- toupper(method)

  # Sign request, if needed
  token <- opts$token
  if (!is.null(token)) {
    signature <- token$sign(method, url)

    opts <- modify_config(opts, signature$config)
    opts$token <- NULL
    opts$url <- signature$url
  } else {
    opts$url <- url
  }

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

last_request <- function(x) {
  stopifnot(is.handle(x))
  RCurl::getCurlInfo(x[[1]])
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
