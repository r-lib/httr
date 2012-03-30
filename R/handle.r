#' Create a handle tied to a particular host.
#'
#' This handle preserves settings and cookies across multiple requests. It is
#' the foundation of all requests performed through the httr package, although
#' it will mostly be hidden from the user.
#'
#' @param url full url to site
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


reset_handle_config <- function(handle, config) {
  blank <- lapply(config, function(x) NULL)
  blank$httpauth <- NULL
  curlSetOpt(.opts = blank, curl = handle$handle)
  invisible(TRUE)
}

