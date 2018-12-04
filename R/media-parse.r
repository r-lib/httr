#' Parse a media type.
#'
#' Parsed according to RFC 2616, as at
#' <http://pretty-rfc.herokuapp.com/RFC2616#media.types>.
#'
#' A simplified minimal EBNF is:
#'
#' * media-type     = `type "/" subtype *( ";" parameter )`
#' * type           = `token`
#' * subtype        = `token`
#' * parameter      = `attribute "=" value`
#' * attribute      = `token`
#' * value          = `token | quoted-string`
#' * token          = `1*<any CHAR except CTLs or ()<>@@,;:\"/[]?=\{\}`
#' @export
#' @param x String to parse
#' @keywords internal
#' @examples
#' parse_media("text/plain")
#' parse_media("text/plain; charset=utf-8")
#' parse_media("text/plain; charset=\"utf-8\"")
#' parse_media("text/plain; randomparam=\";=;=\"")
parse_media <- function(x) {
  stopifnot(is.character(x), length(x) == 1)

  # Use scan to deal with quoted strings. It loses the quotes, but it's
  # ok because the attribute can't be a quoted string so there's no ambiguity
  # about who the = belongs to.
  parse <- function(x, sep) {
    scan(text = x, what = character(), sep = sep, quiet = TRUE, quote = '"')
  }
  pieces <- str_trim(parse(tolower(x), ";"))

  types <- str_split_fixed(pieces[1], "/", 2)[1, ]
  type <- tolower(types[1])
  subtype <- tolower(types[2])

  if (length(pieces) > 1) {
    param_pieces <- lapply(pieces[-1], str_split_fixed, "=", 2)
    names <- vapply(param_pieces, "[", 1, FUN.VALUE = character(1))
    values <- vapply(param_pieces, "[", 2, FUN.VALUE = character(1))

    params <- stats::setNames(as.list(values), names)
  } else {
    params <- list()
  }

  list(
    complete = paste(type, "/", subtype, sep = ""),
    type = type,
    subtype = subtype,
    params = params
  )
}
