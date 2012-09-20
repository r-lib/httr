#' Parse a media type.
#'
#' Parsed according to RFC 2616, as at
#' \url{http://pretty-rfc.herokuapp.com/RFC2616#media.types}.
#'
#' A simplified minimal EBNF is:
#'
#' \itemize{
#'  \item media-type     = type "/" subtype *( ";" parameter )
#'  \item type           = token
#'  \item subtype        = token
#'  \item parameter      = attribute "=" value
#'  \item attribute      = token
#'  \item value          = token | quoted-string
#'  \item token          = 1*<any CHAR except CTLs or ()<>@@,;:\"/[]?={}
#'  \item quoted-string  = " *(any text except ", unless escaped with \) "
#' }
#'
#' @export
#' @keywords internal
#' @examples
#' parse_media("text/plain")
#' parse_media("text/plain; charset=utf-8")
#' parse_media("text/plain; charset=\"utf-8\"")
#' parse_media("text/plain; randomparam=\";=;=\"")
parse_media <- function(x) {
  stopifnot(!is.null(x))
  # Use scan to deal with quoted strings. It loses the quotes, but it's
  # ok because the attribute can't be a quoted string so there's no ambiguity
  # about who the = belongs to.
  parse <- function(x, sep) {
    scan(text = x, what = character(), sep = sep, quiet = TRUE, quote = '"')
  }
  pieces <- str_trim(parse(x, ";"))

  types <- str_split_fixed(pieces[1], "/", 2)[1, ]
  type <- tolower(types[1])
  subtype <- tolower(types[2])

  param_pieces <- str_split_fixed(pieces[-1], "=", 2)
  params <- setNames(as.list(param_pieces[, 2]), param_pieces[, 1])

  list(
    complete = paste(type, "/", subtype, sep = ""),
    type = type,
    subtype = subtype,
    params = params
  )
}
