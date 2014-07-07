#' Send PATCH request to a server.
#'
#' @inheritParams GET
#' @inheritParams POST
#' @export
PATCH <- function(url = NULL, config = list(), ..., body = NULL,
                  encode = c("multipart", "form", "json"),
                  multipart = TRUE, handle = NULL) {

  if (!missing(multipart)) {
    warning("multipart is deprecated, please use encode argument instead",
      call. = FALSE)
    encode <- if (multipart) "multipart" else "form"
  }
  encode <- match.arg(encode)

  hu <- handle_url(handle, url, ...)
  config <- make_config(config, ...)

  make_request("patch", hu$handle, hu$url, config, body_config(body, encode))
}
