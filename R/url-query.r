parse_query <- function(query) {
  params <- vapply(str_split(query, "&")[[1]], str_split_fixed, "=", 2,
    FUN.VALUE = character(2))

  setNames(as.list(curlUnescape(params[2, ])), curlUnescape(params[1, ]))
}

# compose_query(list(x = "&", y = I("%26")))
compose_query <- function(elements) {
  stopifnot(is.list(elements))
  elements <- compact(elements)

  encode <- function(x) {
    if (inherits(x, "AsIs")) return(x)
    curlEscape(x)
  }

  names <- curlEscape(names(elements))
  values <- vapply(elements, encode, character(1))

  paste0(names, "=", values, collapse = "&")
}
