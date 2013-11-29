parse_query <- function(query) {
  params <- vapply(str_split(query, "&")[[1]], str_split_fixed, "=", 2,
    FUN.VALUE = character(2))
  
  values <- curlUnescape(params[2, ])
  names(values) <- params[1, ]
  
  lapply(values, type_convert)
}

type_convert <- function(x, ...) {
  # Otherwise type.convert converts to NA
  if (x == "") return(x)
  
  type.convert(x, as.is = TRUE, na.strings = "", ...)
}

compose_query <- function(elements) {
  names <- curlEscape(names(elements))
  values <- vapply(elements, curlEscape, character(1))
  str_c(names, "=", values, collapse = "&")
}
