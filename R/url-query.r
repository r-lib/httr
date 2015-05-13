parse_query <- function(query) {
  params <- vapply(strsplit(query, "&")[[1]], str_split_fixed, "=", 2,
    FUN.VALUE = character(2))

  values <- as.list(curl::curl_unescape(params[2, ]))
  names(values) <- curl::curl_unescape(params[1, ])
  values
}

# compose_query(list(x = "&", y = I("%26")))
compose_query <- function(elements) {
  if (length(elements) == 0)
    return("")

  if (!all(has_name(elements)))
    stop("All components of query must be named", call. = FALSE)

  stopifnot(is.list(elements))
  elements <- compact(elements)

  encode <- function(x) {
    if (inherits(x, "AsIs")) return(x)
    curl::curl_escape(as.character(x))
  }

  names <- curl::curl_escape(names(elements))
  values <- vapply(elements, encode, character(1))

  paste0(names, "=", values, collapse = "&")
}
