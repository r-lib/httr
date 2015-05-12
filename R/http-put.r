#' Send PUT request to server.
#'
#' @inheritParams POST
#' @export
#' @examples
#' POST("http://httpbin.org/put")
#' PUT("http://httpbin.org/put")
#'
#' b2 <- "http://httpbin.org/put"
#' PUT(b2, body = "A simple text string")
#' PUT(b2, body = list(x = "A simple text string"))
#' PUT(b2, body = list(y = upload_file(system.file("CITATION"))))
#' PUT(b2, body = list(x = "A simple text string"), encode = "json")
PUT <- function(url = NULL, config = list(), ..., body = NULL,
                  encode = c("multipart", "form", "json"),
                  multipart = TRUE, handle = NULL) {
  if (!missing(multipart)) {
    warning("multipart is deprecated, please use encode argument instead",
      call. = FALSE)
    encode <- if (multipart) "multipart" else "form"
  }
  encode <- match.arg(encode)

  hu <- handle_url(handle, url, ...)
  req <- request_build("PUT", hu$url, body_config(body, encode), config, ...)
  request_perform(req, hu$handle$handle)
}
