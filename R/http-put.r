#' Send PUT request to server.
#'
#' @inheritParams POST
#' @export
#' @examples
#' b <- new_bin()
#' PUT(b)
#'
#' POST("http://httpbin.org/put")
#' PUT("http://httpbin.org/put")
#'
#' b2 <- "http://httpbin.org/put"
#' PUT(b2, body = "A simple text string")
#' PUT(b2, body = list(x = "A simple text string"))
#' PUT(b2, body = list(y = upload_file(system.file("CITATION"))))
PUT <- function(url = NULL, config = list(), ..., body = NULL, multipart = TRUE,
                handle = NULL) {
  hu <- handle_url(handle, url, ...)
  config <- make_config(config, ...)

  make_request("put", hu$handle, hu$url, config, body_config(body, multipart))
}
