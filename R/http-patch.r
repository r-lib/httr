#' Send PATCH request to a server.
#'
#' @inheritParams GET
#' @inheritParams POST
#' @export
PATCH <- function(url = NULL, config = list(), ..., body = NULL,
                  multipart = TRUE, handle = NULL) {
  hu <- handle_url(handle, url, ...)
  config <- make_config(config, ...)

  make_request("patch", hu$handle, hu$url, config, body_config(body, multipart))
}
