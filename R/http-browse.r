#' Open specified url in browser.
#'
#' (This isn't really a http verb, but it seems to follow the same format).
#'
#' Only works in interactive sessions.
#'
#' @inheritParams GET
#' @family http methods
#' @export
#' @examples
#' BROWSE("http://google.com")
BROWSE <- function(url = NULL, config = list(), ..., handle = NULL) {
  if (!interactive()) return()
  hu <- handle_url(handle, url, ...)
  browseURL(hu$url)
}
