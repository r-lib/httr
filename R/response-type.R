#' Extract the content type of a response
#'
#' @param x A response
#' @return A string giving the complete mime type, with all parameters
#'   stripped off.
#' @export
#' @examples
#' r1 <- GET("http://httpbin.org/image/png")
#' http_type(r1)
#' headers(r1)[["Content-Type"]]
#' 
#' r2 <- GET("http://httpbin.org/ip")
#' http_type(r2)
#' headers(r2)[["Content-Type"]]
http_type <- function(x) {
  stopifnot(is.response(x))

  type <- x$headers[["Content-Type"]] %||%
    mime::guess_type(x$url, empty = "application/octet-stream")

  parse_media(type)$complete
}
