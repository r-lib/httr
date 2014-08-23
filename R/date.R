#' Parse an http date
#'
#' As defined in RFC2616,
#' \url{http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.3}, there are
#' three valid formats:
#' \itemize{
#'  \item Sun, 06 Nov 1994 08:49:37 GMT  ; RFC 822, updated by RFC 1123
#'  \item Sunday, 06-Nov-94 08:49:37 GMT ; RFC 850, obsoleted by RFC 1036
#'  \item Sun Nov  6 08:49:37 1994       ; ANSI C's asctime() format
#' }
#' @param x A character vector of strings to parse. All elements must be of
#'   the same type.
#' @export
#' @return A POSIXct object if succesful, otherwise NA.
#' @examples
#' parse_http_date("Sun, 06 Nov 1994 08:49:37 GMT")
#' parse_http_date("Sunday, 06-Nov-94 08:49:37 GMT")
#' parse_http_date("Sun Nov  6 08:49:37 1994")
parse_http_date <- function(x) {
  fmts <- c(
    "%a, %d %b %Y %H:%M:%S",
    "%A, %d-%b-%y %H:%M:%S",
    "%a %b %d %H:%M:%S %Y"
  )

  # Need to set C locale to ensure that months/days are parsed in English
  old <- Sys.getlocale(category = "LC_TIME")
  Sys.setlocale(category = "LC_TIME", locale = "C")
  on.exit(Sys.setlocale(category = "LC_TIME", locale = old))

  for (fmt in fmts) {
    parsed <- as.POSIXct(strptime(x, fmt, tz = "GMT"))
    if (all(!is.na(parsed))) return(parsed)
  }

  rep(NA, length(x))
}
