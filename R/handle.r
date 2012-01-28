#' Create a handle tied to a particular host.
#'
#' This handle preserves settings and cookies across multiple requests. It is
#' the foundation of all requests performed through the httr package, although
#' it will mostly be hidden from the user.
#'
#' @param host host name (with protocol)
#' @examples
#' new_host("http://google.com")
#' new_host("https://google.com")
handle <- function(url) {
  stopifnot(is.character(url), length(url) == 1)
  
  url <- parse_url(url)
  
  h <- getCurlHandle(.defaults = list()) 
  structure(list(handle = h, url = url), class = "handle")
}

print.handle <- function(x, ...) {
  cat("Host: ", build_url(x$url) , "\n", sep = "")
}

is.handle <- function(x) inherits(x, "handle")

# Eventually need an automatic pool of curl handles based on host name?
# Config them - catch last (10?) hosts, reusing handle because I think
# this gives the behaviour that users expect?  How are cookies etc preserved?
# Use 0 to turn off and generate new handle for every request?
