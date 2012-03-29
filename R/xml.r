"[.xml" <- function(x, i, ...) {
  if (!is.xpath(i)) NextMethod()

  getNodeSet(x, i)
}


# Flags a string as an xpath expression.
#
xpath <- function(x) {
  stopifnot(length(x) == 1, is.character(x))
  structure(x, "xpath")
}

is.xpath <- function(x) inherits(x, "xpath")
