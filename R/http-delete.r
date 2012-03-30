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
  make_request("DELETE", hu$handle, hu$url, config = config)
}
