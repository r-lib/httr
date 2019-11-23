#' Create a handle tied to a particular host.
#'
#' This handle preserves settings and cookies across multiple requests. It is
#' the foundation of all requests performed through the httr package, although
#' it will mostly be hidden from the user.
#'
#' @param url full url to site
#' @param cookies DEPRECATED
#' @export
#' @note
#' Because of the way argument dispatch works in R, using handle() in the
#' http methods (See [GET()]) will cause problems when trying to
#' pass configuration arguments (See examples below). Directly specifying the
#' handle when using http methods is not recommended in general, since the
#' selection of the correct handle is taken care of when the user passes an url
#' (See [handle_pool()]).
#'
#' @examples
#' handle("http://google.com")
#' handle("https://google.com")
#' 
#' h <- handle("http://google.com")
#' GET(handle = h)
#' # Should see cookies sent back to server
#' GET(handle = h, config = verbose())
#' 
#' h <- handle("http://google.com", cookies = FALSE)
#' GET(handle = h)$cookies
#' \dontrun{
#' # Using the preferred way of configuring the http methods
#' # will not work when using handle():
#' GET(handle = h, timeout(10))
#' # Passing named arguments will work properly:
#' GET(handle = h, config = list(timeout(10), add_headers(Accept = "")))
#' }
#' 
handle <- function(url, cookies = TRUE) {
  stopifnot(is.character(url), length(url) == 1)

  if (!missing(cookies)) {
    warning("Cookies argument is deprecated", call. = FALSE)
  }

  h <- curl::new_handle()
  structure(list(handle = h, url = url), class = "handle")
}

#' @export
print.handle <- function(x, ...) {
  cat("Host: ", x$url, " <", ref(x$handle), ">\n", sep = "")
  invisible(x)
}

ref <- function(x) {
  str_extract(utils::capture.output(print(x))[1], "0x[0-9a-f]*")
}

is.handle <- function(x) inherits(x, "handle")
