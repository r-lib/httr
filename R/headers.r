#' Extract the headers from a response
#'
#' @param x A request object
#' @seealso [add_headers()] to send additional headers in a
#'   request
#' @export
#' @examples
#' \dontrun{
#' r <- GET("http://httpbin.org/get")
#' headers(r)
#' }
headers <- function(x) UseMethod("headers")

#' @export
headers.response <- function(x) {
  x$headers
}

#' Add additional headers to a request.
#'
#' Wikipedia provides a useful list of common http headers:
#' <https://en.wikipedia.org/wiki/List_of_HTTP_header_fields>.
#'
#' @param ... named header values.  To stop an existing header from being
#'   set, pass an empty string: `""`.
#' @param .headers a named character vector
#' @export
#' @seealso [accept()] and [content_type()] for
#'   convenience functions for setting accept and content-type headers.
#' @family config
#' @examples
#' add_headers(a = 1, b = 2)
#' add_headers(.headers = c(a = "1", b = "2"))
#'
#' \dontrun{
#' GET("http://httpbin.org/headers")
#'
#' # Add arbitrary headers
#' GET(
#'   "http://httpbin.org/headers",
#'   add_headers(version = version$version.string)
#' )
#'
#' # Override default headers with empty strings
#' GET("http://httpbin.org/headers", add_headers(Accept = ""))
#' }
add_headers <- function(..., .headers = character()) {
  request(headers = c(..., .headers))
}


#' Set content-type and accept headers.
#'
#' These are convenient wrappers aroud [add_headers()].
#'
#' `accept_json`/`accept_xml` and
#' `content_type_json`/`content_type_xml` are useful shortcuts to
#' ask for json or xml responses or tell the server you are sending json/xml.
#'
#' @param type A mime type or a file extension. If a file extension (i.e. starts
#'   with `.`) will guess the mime type using [mime::guess_type()].
#' @export
#' @examples
#' \dontrun{
#' GET("http://httpbin.org/headers")
#'
#' GET("http://httpbin.org/headers", accept_json())
#' GET("http://httpbin.org/headers", accept("text/csv"))
#' GET("http://httpbin.org/headers", accept(".doc"))
#'
#' GET("http://httpbin.org/headers", content_type_xml())
#' GET("http://httpbin.org/headers", content_type("text/csv"))
#' GET("http://httpbin.org/headers", content_type(".xml"))
#' }
content_type <- function(type) {
  if (is.null(type)) return()

  if (substr(type, 1, 1) == ".") {
    type <- mime::guess_type(type, empty = NULL)
  }

  add_headers("Content-Type" = type)
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
    type <- mime::guess_type(type, empty = NULL)
  }
  add_headers("Accept" = type)
}

#' @export
#' @rdname content_type
accept_json <- function() accept("application/json")

#' @export
#' @rdname content_type
accept_xml <- function() accept("application/xml")

# Parses a header lines as recieved from libcurl. Multiple responses
# will be intermingled, each separated by an http status line.
parse_http_headers <- function(raw) {
  lines <- strsplit(rawToChar(raw), "\r?\n")[[1]]

  new_response <- grepl("^HTTP", lines)
  grps <- cumsum(new_response)

  lapply(unname(split(lines, grps)), parse_single_header)
}

parse_single_header <- function(lines) {
  status <- parse_http_status(lines[[1]])

  # Parse headers into name-value pairs
  header_lines <- lines[lines != ""][-1]
  pos <- regexec("^([^:]*):\\s*(.*)$", header_lines)
  pieces <- regmatches(header_lines, pos)

  n <- vapply(pieces, length, integer(1))
  if (any(n != 3)) {
    bad <- header_lines[n != 3]
    pieces <- pieces[n == 3]

    warning("Failed to parse headers:\n", paste0(bad, "\n"), call. = FALSE)
  }

  names <- vapply(pieces, "[[", 2, FUN.VALUE = character(1))
  values <- lapply(pieces, "[[", 3)
  headers <- insensitive(stats::setNames(values, names))

  list(status = status$status, version = status$version, headers = headers)
}

parse_http_status <- function(x) {
  status <- as.list(strsplit(x, "\\s+")[[1]])
  names(status) <- c("version", "status", "message")[seq_along(status)]
  status$status <- as.integer(status$status)


  status
}
