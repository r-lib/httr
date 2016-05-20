parse_query <- function(query) {
  params <- vapply(strsplit(query, "&")[[1]], str_split_fixed, "=", 2,
    FUN.VALUE = character(2))

  values <- as.list(curl::curl_unescape(params[2, ]))
  names(values) <- curl::curl_unescape(params[1, ])
  values
}

compose_query <- function(elements, part = c("query", "other")) {
  if (length(elements) == 0)
    return("")

  if (!all(has_name(elements)))
    stop("All components of query must be named", call. = FALSE)

  part <- match.arg(part)

  stopifnot(is.list(elements))
  elements <- compact(elements)

  names <- curl::curl_escape(names(elements))

  encode <- function(x, part) {
    if (inherits(x, "AsIs")) return(x)
    switch(part,
           query = URLencode(enc2utf8(as.character(x))),
           other = curl::curl_escape(x))
  }
  values <- vapply(elements, encode, character(1), part = part)

  paste0(names, "=", values, collapse = "&")
}
