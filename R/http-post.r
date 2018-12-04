#' POST file to a server.
#'
#' @inherit GET params return
#' @param body One of the following:
#'
#'   * `FALSE`: No body. This is typically not used with `POST`,
#'     `PUT`, or `PATCH`, but can be useful if you need to send a
#'     bodyless request (like `GET`) with `VERB()`.
#'   * `NULL`: An empty body
#'   * `""`: A length 0 body
#'   * `upload_file("path/")`: The contents of a file.  The mime
#'     type will be guessed from the extension, or can be supplied explicitly
#'     as the second argument to `upload_file()`
#'   * A character or raw vector: sent as is in body. Use
#'     [content_type()] to tell the server what sort of data
#'     you are sending.
#'   * A named list: See details for encode.
#' @param encode If the body is a named list, how should it be encoded? Can be
#'   one of form (application/x-www-form-urlencoded), multipart,
#'   (multipart/form-data), or json (application/json).
#'
#'   For "multipart", list elements can be strings or objects created by
#'   [upload_file()]. For "form", elements are coerced to strings
#'   and escaped, use `I()` to prevent double-escaping. For "json",
#'   parameters are automatically "unboxed" (i.e. length 1 vectors are
#'   converted to scalars). To preserve a length 1 vector as a vector,
#'   wrap in `I()`. For "raw", either a character or raw vector. You'll
#'   need to make sure to set the [content_type()] yourself.
#' @export
#' @family http methods
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
                 encode = c("multipart", "form", "json", "raw"),
                 handle = NULL) {
  encode <- match.arg(encode)

  hu <- handle_url(handle, url, ...)
  req <- request_build("POST", hu$url, body_config(body, match.arg(encode)), as.request(config), ...)
  request_perform(req, hu$handle$handle)
}
