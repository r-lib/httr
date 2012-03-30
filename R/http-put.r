#' Send PUT to request server.
#'
#' @inheritParams GET
#' @param content Content, if any, to send to server.
#' @export
#' @examples
#' b <- new_bin()
#' PUT(b)
PUT <- function(url = NULL, config = list(), content = NULL, ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("PUT", hu$handle, hu$url, content = content, config = config)
}
