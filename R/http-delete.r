#' Send a delete request.
#'
#' @inheritParams GET
#' @family http methods
#' @export
#' @examples
#' b <- new_bin()
#' DELETE(b)
DELETE <- function(url = NULL, config = list(), ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request(delete_request, hu$handle, hu$url, config = config)
}

delete_request <- function(handle, url, opts) {
  opts$customrequest <- "DELETE"
  opts$nobody <- 1L

  get_request(handle, url, opts)
}