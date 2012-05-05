parse_query <- function(query) {
  params <- vapply(str_split(query, "&")[[1]], str_split_fixed, "=", 2,
    FUN.VALUE = character(2))
  values <- type.convert(curlUnescape(params[2, ]), as.is = TRUE)
  names <- params[1, ]
  setNames(as.list(values), names)
}

compose_query <- function(elements) {
  names <- curlEscape(names(elements))
  values <- vapply(elements, curlEscape, character(1))
  str_c(names, "=", values, collapse = "&")
}