#' Add additional headers to a request.
#' 
#' @param ... named header values
#' @param .headers a named character vector
#' @export
#' @family config
#' @examples
#' add_headers(a = 1, b = 2)
#' add_headers(.headers = c(a = "1", b = "2"))
add_headers <- function(..., .headers = character()) {
  headers <- c(..., .headers)
  stopifnot(is.character(headers))

  config(httpheader = headers)
}

