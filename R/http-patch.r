#' Send PATCH request to a server.
#'
#' @inheritParams GET
#' @inheritParams POST
#' @family http methods
#' @export
PATCH <- function(url = NULL, config = list(), ..., body = NULL,
                  encode = c("multipart", "form", "json"),
                  multipart = TRUE, handle = NULL,
                  json.NA = c("null", "string")) {

  if (!missing(multipart)) {
    warning("multipart is deprecated, please use encode argument instead",
      call. = FALSE)
    encode <- if (multipart) "multipart" else "form"
  }
  encode <- match.arg(encode)

  hu <- handle_url(handle, url, ...)
  req <- request_build("PATCH", hu$url, body_config(body, encode, json.NA = json.NA), config, ...)
  request_perform(req, hu$handle$handle)
}
