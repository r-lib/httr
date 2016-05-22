#' Send PATCH request to a server.
#'
#' @inheritParams GET
#' @inheritParams POST
#' @family http methods
#' @export
PATCH <- function(url = NULL, config = list(), ...,
                  body = NULL, encode = c("multipart", "form", "json", "raw"),
                  handle = NULL) {
  encode <- match.arg(encode)

  hu <- handle_url(handle, url, ...)
  req <- request_build("PATCH", hu$url, body_config(body, match.arg(encode)), config, ...)
  request_perform(req, hu$handle$handle)
}
