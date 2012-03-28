#' Create a handle tied to a particular host.
#'
#' This handle preserves settings and cookies across multiple requests. It is
#' the foundation of all requests performed through the httr package, although
#' it will mostly be hidden from the user.
#'
#' @param host host name (with protocol)
#' @export
#' @examples
#' handle("http://google.com")
#' handle("https://google.com")
handle <- function(url) {
  stopifnot(is.character(url), length(url) == 1)
  
  url <- parse_url(url)
  
  h <- getCurlHandle(.defaults = list()) 
  structure(list(handle = h, url = url), class = "handle")
}

#' @S3method print handle
print.handle <- function(x, ...) {
  cat("Host: ", build_url(x$url) , " <", ref(x), ">\n", sep = "")
}

ref <- function(x) {
  str_extract(capture.output(print(x$handle@ref)), "0x[0-9a-f]*")
}

is.handle <- function(x) inherits(x, "handle")

#' Set handle verbosity.
#' 
#' A verbose handle provides much more information about the flow of
#' information between the client and server.
#'
#' @export
#' @examples
#' b <- new_bin()
#' GET(handle = b)
#' is.verbose(b) <- TRUE
#' GET(handle = b)
#' is.verbose(b) <- FALSE
"is.verbose<-" <- function(x, value) {
  stopifnot(is.handle(x))
  stopifnot(is.logical(value), length(value) == 1)
  
  curlSetOpt(verbose = value, curl = x$handle)
  x
}
