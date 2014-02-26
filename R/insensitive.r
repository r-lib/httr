#' Create a vector with case insensitive name matching.
#'
#' @param x vector to modify
#' @export
#' @keywords internal
#' @examples
#' x <- c("abc" = 1, "def" = 2)
#' x["ABC"]
#' y <- insensitive(x)
#' y["ABC"]
#' y[["ABC"]]
insensitive <- function(x) {
  names(x) <- tolower(names(x))
  structure(x, class = c("insensitive", class(x)))
}

#' @export
`[.insensitive` <- function(x, i, ...) {
  if (is.character(i)) {
    i <- tolower(i)
  }

  NextMethod()
}

#' @export
`[[.insensitive` <- `[.insensitive`


#' @export
"$.insensitive" <- function(x, name) {
  name <- tolower(name)
  x[[name]]
}
