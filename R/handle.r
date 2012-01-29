#' Create a handle tied to a particular host.
#'
#' This handle preserves settings and cookies across multiple requests. It is
#' the foundation of all requests performed through the httr package, although
#' it will mostly be hidden from the user.
#'
#' @param host host name (with protocol)
#' @examples
#' handle("http://google.com")
#' handle("https://google.com")
handle <- function(url) {
  stopifnot(is.character(url), length(url) == 1)
  
  url <- parse_url(url)
  
  h <- getCurlHandle(.defaults = list()) 
  structure(list(handle = h, url = url), class = "handle")
}

print.handle <- function(x, ...) {
  cat("Host: ", build_url(x$url) , " <", ref(x), ">\n", sep = "")
}

ref <- function(x) {
  str_extract(capture.output(print(x$handle@ref)), "0x[0-9a-f]*")
}

is.handle <- function(x) inherits(x, "handle")

# Eventually need an automatic pool of curl handles based on host name?
# Config them - catch last (10?) hosts, reusing handle because I think
# this gives the behaviour that users expect?  How are cookies etc preserved?
# Use 0 to turn off and generate new handle for every request?

"is.verbose<-" <- function(x, value) {
  stopifnot(is.handle(x))
  stopifnot(is.logical(value), length(value) == 1)
  
  curlSetOpt(verbose = value, curl = x$handle)
  x
}
