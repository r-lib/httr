#' Open specified url in browser.
#'
#' (This isn't really a http verb, but it seems to follow the same format).
#'
#' Only works in interactive sessions.
#'
#' @param config All configuration options are ignored because the request
#'   is handled by the browser, not \pkg{RCurl}.
#' @inheritParams GET
#' @family http methods
#' @export
#' @examples
#' BROWSE("http://google.com")
#' BROWSE("http://had.co.nz")
BROWSE <- function(url = NULL, config = list(), ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  if (interactive()) {
    utils::browseURL(hu$url)
  } else {
    message("Please point your browser to the following url: ")
    message(hu$url)
  }
}
