parse_query <- function(query) {
  params <- vapply(strsplit(query, "&")[[1]], str_split_fixed, "=", 2,
    FUN.VALUE = character(2))

  values <- as.list(RCurl::curlUnescape(params[2, ]))
  names(values) <- RCurl::curlUnescape(params[1, ])
  values
}

# compose_query(list(x = "&", y = I("%26")))
compose_query <- function(elements) {
  stopifnot(is.list(elements))
  elements <- compact(elements)

  encode <- function(x) {
    if (inherits(x, "AsIs")) return(x)
    RCurl::curlEscape(x)
  }

  names <- RCurl::curlEscape(names(elements))
  values <- vapply(elements, encode, character(1))

  paste0(names, "=", values, collapse = "&")
}
