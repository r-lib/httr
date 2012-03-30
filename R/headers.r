#' Add additional headers to a request.
#' 
#' @param ... named header values.  To stop an existing header from being
#'   set, pass an empty string: \code{""}.
#' @param .headers a named character vector
#' @export
#' @family config
#' @examples
#' add_headers(a = 1, b = 2)
#' add_headers(.headers = c(a = "1", b = "2"))
#' 
#' # Override default headers with empty strings
#' GET("http://had.co.nz", config = verbose())
#' GET("http://had.co.nz", config = c(verbose(), add_headers(Accept = "")))
add_headers <- function(..., .headers = character()) {
  headers <- c(..., .headers)
  stopifnot(is.character(headers))

  config(httpheader = headers)
}

