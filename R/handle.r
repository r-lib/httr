# Start by assuming that every first starts by creating a handle

#' Create a handle tied to a particular domain.
#'
#' This handle preserves settings and cookies across multiple requests. It is
#' the foundation of all requests performed through the httr package, although
#' it will mostly be hidden from the user.
#'
#' @param domain domain name (with protocol)
#' @examples
#' new_handle("http://google.com")
#' new_handle("https://google.com")
new_handle <- function(domain) {
  stopifnot(is.character(domain), length(domain) == 1)
  
  h <- getCurlHandle(.defaults = list()) 
  structure(list(h), domain = domain, class = "handle")
}

print.handle <- function(x, ...) {
  cat("Request handle [", attr(x, "domain"), "]\n", sep = "")
}

is.handle <- function(x) inherits(x, "handle")

# Eventually need an automatic pool of curl handles based on domain name?
# Config them - catch last (10?) domains, reusing handle because I think
# this gives the behaviour that users expect?  How are cookies etc preserved?
# Use 0 to turn off and generate new handle for every request?
