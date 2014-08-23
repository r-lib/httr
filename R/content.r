#' Extract content from a request.
#'
#' There are currently three ways to retrieve the contents of a request:
#' as a raw object (\code{as = "raw"}), as a character vector,
#' (\code{as = "text"}), and as parsed into an R object where possible,
#' (\code{as = "parsed"}). If \code{as} is not specified, \code{content}
#' does its best to guess which output is most appropriate.
#'
#' \code{content} currently knows about the following mime types:
#'
#' \itemize{
#'  \item \code{text/html}: \code{\link[XML]{htmlTreeParse}}
#'  \item \code{text/xml}: \code{\link[XML]{xmlTreeParse}}
#'  \item \code{text/csv}: \code{\link{read.csv}}
#'  \item \code{text/tab-separated-values}: \code{\link{read.delim}}
#'  \item \code{application/json}: \code{\link[jsonlite]{fromJSON}}
#'  \item \code{application/x-www-form-urlencoded}: \code{parse_query}
#'  \item \code{image/jpeg}: \code{\link[jpeg]{readJPEG}}
#'  \item \code{image/png}: \code{\link[png]{readPNG}}
#' }
#'
#' \code{as = "parsed"} is provided as a convenience only: if the type you
#' are trying to parse is not available, use \code{as = "text"} and parse
#' yourself.
#'
#' @section WARNING:
#'
#' When using \code{content()} in a package, DO NOT use on \code{as = "parsed"}.
#' Instead, check the mime-type is what you expect, and then parse yourself.
#' This is safer, as you will fail informatively if the API changes, and
#' you will protect yourself against changes to httr.
#'
#' @param x request object
#' @param as desired type of output: \code{raw}, \code{text} or
#'   \code{parsed}. \code{content} attempts to automatically figure out
#'   which one is most appropriate, based on the content-type.
#' @param type MIME type (aka internet media type) used to override
#'   the content type returned by the server. See
#'   \url{http://en.wikipedia.org/wiki/Internet_media_type} for a list of
#'   common types.
#' @param encoding For text, overrides the charset or the Latin1 (ISO-8859-1)
#'   default, if you know that the server is returning the incorrect encoding
#'   as the charset in the content-type. Use for text and auto outputs.
#' @param ... Other parameters parsed on to the parsing functions, if
#'  \code{as = "auto"}
#' @family response methods
#' @export
#' @examples
#' r <- POST("http://httpbin.org/post", body = list(a = 1, b = 2))
#' content(r) # automatically parses JSON
#' cat(content(r, "text"), "\n") # text content
#' content(r, "raw") # raw bytes from server
#'
#' rlogo <- content(GET("http://cran.r-project.org/Rlogo.jpg"))
#' plot(0:1, 0:1, type = "n")
#' rasterImage(rlogo, 0, 0, 1, 1)
#' @aliases text_content parsed_content
content <- function(x, as = NULL, type = NULL, encoding = NULL, ...) {
  stopifnot(is.response(x))

  type <- type %||% x$headers[["Content-Type"]] %||% guess_media_url(x$url)

  as <- as %||% parseability(type)
  as <- match.arg(as, c("raw", "text", "parsed"))

  if (is.path(x$content)) {
    raw <- readBin(x$content, "raw", file.info(x$content)$size)
  } else {
    raw <- x$content
  }

  switch(as,
    raw = raw,
    text = parse_text(raw, type, encoding),
    parsed = parse_auto(raw, type, encoding, ...)
  )
}

#' @export
text_content <- function(x) {
  message("text_content() deprecated. Use content(x, as = 'text')")
  content(x, as = "text")
}

#' @export
parsed_content <- function(x, ...) {
  message("text_content() deprecated. Use parsed_content(x, as = 'parsed')")
  content(x, as = "parsed", ...)
}

#' Does the request have content associated with it?
#'
#' @keywords internal
#' @export
#' @examples
#' has_content(POST("http://httpbin.org/post", body = FALSE))
#' has_content(HEAD("http://httpbin.org/headers"))
has_content <- function(x) {
  length(x) == 0
}
