#' Post file to a server.
#'
#' @inheritParams GET
#' @param body Named of list of elements to go in the body of the post file. 
#'   Use \code{\link[RCurl]{fileUpload}} to upload files.
#' @param multipart Should the form be send as multipart/form-data 
#'   (\code{TRUE}), or application/x-www-form-urlencoded (\code{FALSE}).
#'   Files can not be uploaded when \code{FALSE}.
#' @export
#' @examples
#' b <- new_bin()
#' POST(b)
#' POST(b, body = list(a = 1, b = 2, c = 3))
#' POST(b, body = list(a = 1, file = fileUpload(system.file("CITATION"))))
#'
#' b2 <- "http://httpbin.org/post"
#' POST(b2, body = list(x = "A simple text string"))
#' POST(b2, body = list(y = fileUpload(system.file("CITATION")))
POST <- function(url = NULL, config = list(), body = NULL, multipart = TRUE, ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("POST", hu$handle, hu$url, body = body, multipart = multipart,
    config = config)
}
