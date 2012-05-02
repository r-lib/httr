# @param action function with (at least) arguments \code{handle}, \code{url},
#   \code{opts}, which should return binary content from the specified request
make_request <- function(action, handle, url, ..., config = list()) {
  hg <- basicHeaderGatherer()
  
  opts <- modifyList(default_config(), config)
  opts$headerfunction <- hg$update

  content <- action(handle, url, ..., opts = opts)
  reset_handle_config(handle, opts)
  
  info <- last_request(handle)
  times <- request_times(handle)
  headers <- as.list(hg$value())
  
  response(
    url = info$effective.url,
    handle = handle,
    status_code = as.numeric(headers$status),
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