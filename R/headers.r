#' @export
#' @family config
add_headers <- function(..., .headers = character()) {
  headers <- c(..., .headers)
  stopifnot(is.character(headers))

  config(httpheader = headers)
}

