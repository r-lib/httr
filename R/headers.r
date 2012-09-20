#' Add additional headers to a request.
#'
#' \code{accept_json} and \code{accept_xml} are useful shortcuts to request
#' json or xml responses if the server supports content negotiation. json
#' and xml are both easy to work with in R. See \code{\link{content}}
#' for how to access the results as R objects.
#'
#' Wikipedia provides a useful list of common http headers:
#' \url{http://en.wikipedia.org/wiki/List_of_HTTP_header_fields}.
#'
#' @param ... named header values.  To stop an existing header from being
#'   set, pass an empty string: \code{""}.
#' @param .headers a named character vector
#' @export
#' @family config
#' @examples
#' add_headers(a = 1, b = 2)
#' add_headers(.headers = c(a = "1", b = "2"))
#'
#' # Override default headers with empty strings
#' GET("http://had.co.nz", verbose())
#' GET("http://had.co.nz", c(verbose(), add_headers(Accept = "")))
#'
#' GET("http://httpbin.org/headers")
#' GET("http://httpbin.org/headers",
#'  add_headers(version = version$version.string))
add_headers <- function(..., .headers = character()) {
  headers <- c(..., .headers)
  stopifnot(is.character(headers))

  config(httpheader = headers)
}

#' @export
#' @rdname add_headers
accept_json <- function() add_headers(Accept = "application/json")

#' @export
#' @rdname add_headers
accept_xml <- function() add_headers(Accept = "application/xml")
