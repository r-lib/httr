#' Parse and print http dates.
#'
#' @description
#' As defined in RFC2616,
#' <https://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.3>, there are
#' three valid formats:
#'
#' * Sun, 06 Nov 1994 08:49:37 GMT  ; RFC 822, updated by RFC 1123
#' * Sunday, 06-Nov-94 08:49:37 GMT ; RFC 850, obsoleted by RFC 1036
#' * Sun Nov  6 08:49:37 1994       ; ANSI C's asctime() format
#'
#' @param x For `parse_http_date`, a character vector of strings to parse.
#'   All elements must be of the same type.
#'
#'   For `http_date`, a `POSIXt` vector.
#' @param failure What to return on failure?
#' @export
#' @return A POSIXct object if succesful, otherwise `failure`
#' @examples
#' parse_http_date("Sun, 06 Nov 1994 08:49:37 GMT")
#' parse_http_date("Sunday, 06-Nov-94 08:49:37 GMT")
#' parse_http_date("Sun Nov  6 08:49:37 1994")
#'
#' http_date(Sys.time())
parse_http_date <- function(x, failure = structure(NA_real_, class = "Date")) {
  if (length(x) == 0) return(NULL)

  fmts <- c(
    "%a, %d %b %Y %H:%M:%S",
    "%A, %d-%b-%y %H:%M:%S",
    "%a %b %d %H:%M:%S %Y"
  )

  # Need to set C locale to ensure that months/days are parsed in English

  for (fmt in fmts) {
    parsed <- c_time(as.POSIXct(strptime(x, fmt, tz = "GMT")))
    if (all(!is.na(parsed))) return(parsed)
  }

  rep(failure, length(x))
}

#' @export
#' @rdname parse_http_date
http_date <- function(x) {
  if (is.null(x)) return(NULL)
  stopifnot(inherits(x, "POSIXt"))
  c_time(strftime(x, "%a, %d %b %Y %H:%M:%S", tz = "GMT", usetz = TRUE))
}

c_time <- function(code) {
  old <- Sys.getlocale(category = "LC_TIME")
  Sys.setlocale(category = "LC_TIME", locale = "C")
  on.exit(Sys.setlocale(category = "LC_TIME", locale = old))

  force(code)
}
