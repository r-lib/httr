#' @importFrom methods as
make_request <- function(method, handle, url, config = NULL, body = NULL) {
  if (is.null(config)) config <- config()
  stopifnot(is.handle(handle))
  stopifnot(is.character(url), length(url) == 1)

  # Sign request, if needed
  if (!is.null(config$token)) {
    token <- config$token
    config$token <- NULL

    signed <- token$sign(method, url)
    url <- signed$url
    config <- c(config, signed$config)
  } else {
    token <- NULL
  }

  # Figure out curl options --------------------------------------------------
  opts <- default_config()
  opts$customrequest <- toupper(method)
  opts$url <- url

  # Config argument overrides defaults
  opts <- modify_config(opts, config)

  # Perform request and capture output ---------------------------------------
  perform(handle, opts, body)
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
