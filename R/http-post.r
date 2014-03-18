#' POST file to a server.
#'
#' @inheritParams GET
#' @param body One of the following:
#'   \itemize{
#'     \item \code{FALSE}: No body
#'     \item \code{NULL}: An empty body
#'     \item A length one character or raw vector: sent as is in body.
#'     \item A named list: Each component should either be a string
#'       or the object returned by \code{\link[RCurl]{fileUpload}}
#'      (if you want to upload a file). Strings will be escaped
#'      automatically: use \code{I()} to prevent double-escaping.
#'   }
#' @param multipart Should the form be send as multipart/form-data
#'   (\code{TRUE}), or application/x-www-form-urlencoded (\code{FALSE}).
#'   Files can not be uploaded when \code{FALSE}.
#' @export
#' @examples
#' b <- new_bin()
#' POST(b)
#' POST(b, body = "A simple text string")
#' POST(b, body = list(a = 1, b = 2, c = 3))
#' POST(b, body = list(a = 1, file = upload_file(system.file("CITATION"))))
#'
#' b2 <- "http://httpbin.org/post"
#' POST(b2, body = "A simple text string")
#' POST(b2, body = list(x = "A simple text string"))
#' POST(b2, body = list(y = upload_file(system.file("CITATION"))))
POST <- function(url = NULL, config = list(), ..., body = NULL,
                 multipart = TRUE,  handle = NULL) {
  hu <- handle_url(handle, url, ...)
  config <- make_config(config, ...)

  make_request("post", hu$handle, hu$url, config, body_config(body, multipart))
}
