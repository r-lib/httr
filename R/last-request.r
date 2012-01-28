#' Get information about the last request.
#' 
#' @param x a handle, as produced by \code{\link{new_host}}
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
