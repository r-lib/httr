#' Send PATCH request to a server.
#'
#' @inheritParams POST
#' @export
PATCH <- function(url = NULL, config = list(), body = NULL, multipart = TRUE, ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("patch", hu$handle, hu$url, body = body,
    multipart = multipart, config = config)
}

patch_config <- post_config
