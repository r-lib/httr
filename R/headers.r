#' Extract the headers from a response
#'
#' @param x A request object
#' @seealso \code{\link{add_headers}()} to send additional headers in a
#'   request
#' @export
#' @examples
#' r <- GET("http://httpbin.org/get")
#' headers(r)
headers <- function(x) {
  stopifnot(is.response(x))
  x$headers
}

#' Add additional headers to a request.
#'
#' Wikipedia provides a useful list of common http headers:
#' \url{http://en.wikipedia.org/wiki/List_of_HTTP_header_fields}.
#'
#' @param ... named header values.  To stop an existing header from being
#'   set, pass an empty string: \code{""}.
#' @param .headers a named character vector
#' @export
#' @seealso \code{\link{accept}} and \code{\link{content_type}} for
#'   convenience functions for setting accept and content-type headers.
#' @family config
#' @examples
#' add_headers(a = 1, b = 2)
#' add_headers(.headers = c(a = "1", b = "2"))
#'
#' GET("http://httpbin.org/headers")
#'
#' # Add arbitrary headers
#' GET("http://httpbin.org/headers",
#'  add_headers(version = version$version.string))
#'
#' # Override default headers with empty strings
#' GET("http://httpbin.org/headers", add_headers(Accept = ""))
add_headers <- function(..., .headers = character()) {
  headers <- c(..., .headers)
  if (length(headers) == 0) return()
  stopifnot(is.character(headers))

  # Keep last of duplicated headers
  headers <- headers[!duplicated(names(headers), fromLast = TRUE)]

  config(httpheader = headers)
}


#' Set content-type and accept headers.
#'
#' These are convenient wrappers aroud \code{\link{add_headers}}.
#'
#' \code{accept_json}/\code{accept_xml} and
#' \code{content_type_json}/\code{content_type_xml} are useful shortcuts to
#' ask for json or xml responses or tell the server you are sending json/xml.
#'
#' @param type A mime type or a file extension. If a file extension (i.e. starts
#'   with \code{.}) will guess the mime type using \code{\link{guess_media}}.
#' @export
#' @examples
#' GET("http://httpbin.org/headers")
#'
#' GET("http://httpbin.org/headers", accept_json())
#' GET("http://httpbin.org/headers", accept("text/csv"))
#' GET("http://httpbin.org/headers", accept(".doc"))
#'
#' GET("http://httpbin.org/headers", content_type_xml())
#' GET("http://httpbin.org/headers", content_type("text/csv"))
#' GET("http://httpbin.org/headers", content_type(".xml"))
content_type <- function(type) {
  if (substr(type, 1, 1) == ".") {
    type <- guess_media(type)
  }

  add_headers("Content-type" = type)
}

#' @export
#' @rdname content_type
content_type_json <- function() content_type("application/json")

#' @export
#' @rdname content_type
content_type_xml <- function() content_type("application/xml")



#' @export
#' @rdname content_type
accept <- function(type) {
  if (substr(type, 1, 1) == ".") {
    type <- guess_media(type)
  }
  add_headers("Accept" = type)

}

#' @export
#' @rdname content_type
accept_json <- function() accept("application/json")

#' @export
#' @rdname content_type
accept_xml <- function() accept("application/xml")

