# @param action function with (at least) arguments \code{handle}, \code{url},
#   \code{opts}, which should return binary content from the specified
#   request. \code{make_request} will take care of resetting the handle's
#   config after the request is made.
make_request <- function(method, handle, url, ..., config = list()) {
  # Sign request, if needed
  if (!is.null(config$signature)) {
    signed <- config$signature(method, url)
    url <- signed$url
    config <- c(config, signed$config)

    config$signature <- NULL
  }
  
  hg <- basicHeaderGatherer()
  opts <- modifyList(default_config(), as.list(config))
  opts$headerfunction <- hg$update
  
  action <- match.fun(str_c(tolower(method), "_request"))
  content <- action(handle, url, ..., opts = opts)
  on.exit({
    reset_handle_config(handle, opts)
    reset(handle$handle)
  })  
  
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