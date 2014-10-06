#' POST file to a server.
#'
#' @inheritParams GET
#' @param body One of the following:
#'   \itemize{
#'     \item \code{FALSE}: No body
#'     \item \code{NULL}: An empty body
#'     \item \code{""}: A length 0 body
#'     \item \code{upload_file("path/")}: The contents of a file.  The mime
#'       type will be guessed from the extension, or can be supplied explicitly
#'       as the second argument to \code{upload_file()}
#'     \item A character or raw vector: sent as is in body. Use
#'       \code{\link{content_type}} to tell the server what sort of data
#'       you are sending.
#'     \item A named list: See details for encode.
#'   }
#' @param encode If the body is a named list, how should it be encoded? Can be
#'   one of form (application/x-www-form-urlencoded), multipart,
#'   (multipart/form-data), or json (application/json).
#'
#'   For "multipart", list elements can be strings or objects created by
#'   \code{\link{upload_file}}. For "form", elements are coerced to strings
#'   and escaped, use \code{I()} to prevent double-escaping.
#' @param multipart Deprecated. \code{TRUE} = \code{encode = "multipart"},
#'   \code{FALSE} = {encode = "form"}.
#'   Files can not be uploaded when \code{FALSE}.
#' @export
#' @examples
#' b2 <- "http://httpbin.org/post"
#' POST(b2, body = "A simple text string")
#' POST(b2, body = list(x = "A simple text string"))
#' POST(b2, body = list(y = upload_file(system.file("CITATION"))))
#' POST(b2, body = list(x = "A simple text string"), encode = "json")
#'
#' # Various types of empty body:
#' POST(b2, body = NULL, verbose())
#' POST(b2, body = FALSE, verbose())
#' POST(b2, body = "", verbose())
POST <- function(url = NULL, config = list(), ..., body = NULL,
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

  make_request("post", hu$handle, hu$url, config,
               body_config(body, encode))
}
