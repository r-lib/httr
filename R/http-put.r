#' Send PUT request to server.
#'
#' @inheritParams POST
#' @family http methods
#' @export
#' @examples
#' \dontrun{
#' POST("http://httpbin.org/put")
#' PUT("http://httpbin.org/put")
#'
#' b2 <- "http://httpbin.org/put"
#' PUT(b2, body = "A simple text string")
#' PUT(b2, body = list(x = "A simple text string"))
#' PUT(b2, body = list(y = upload_file(system.file("CITATION"))))
#' PUT(b2, body = list(x = "A simple text string"), encode = "json")
#' }
PUT <- function(url = NULL, config = list(), ...,
                body = NULL, encode = c("multipart", "form", "json", "raw"),
                handle = NULL) {
  hu <- handle_url(handle, url, ...)
  req <- request_build("PUT", hu$url, body_config(body, match.arg(encode)), config, ...)
  request_perform(req, hu$handle$handle)
}
