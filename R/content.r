#' Extract content from a request.
#'
#' There are currently three ways to retrieve the contents of a request:
#' as a raw object (`as = "raw"`), as a character vector,
#' (`as = "text"`), and as parsed into an R object where possible,
#' (`as = "parsed"`). If `as` is not specified, `content`
#' does its best to guess which output is most appropriate.
#'
#' `content` currently knows about the following mime types:
#'
#' * `text/html`: [xml2::read_html()]
#' * `text/xml`: [xml2::read_xml()]
#' * `text/csv`: [readr::read_csv()]
#' * `text/tab-separated-values`: [readr::read_tsv()]
#' * `application/json`: [jsonlite::fromJSON()]
#' * `application/x-www-form-urlencoded`: `parse_query`
#' * `image/jpeg`: [jpeg::readJPEG()]
#' * `image/png`: [png::readPNG()]
#'
#' `as = "parsed"` is provided as a convenience only: if the type you
#' are trying to parse is not available, use `as = "text"` and parse
#' yourself.
#'
#' @section WARNING:
#'
#' When using `content()` in a package, DO NOT use on `as = "parsed"`.
#' Instead, check the mime-type is what you expect, and then parse yourself.
#' This is safer, as you will fail informatively if the API changes, and
#' you will protect yourself against changes to httr.
#'
#' @param x request object
#' @param as desired type of output: `raw`, `text` or
#'   `parsed`. `content` attempts to automatically figure out
#'   which one is most appropriate, based on the content-type.
#' @param type MIME type (aka internet media type) used to override
#'   the content type returned by the server. See
#'   <https://en.wikipedia.org/wiki/Internet_media_type> for a list of
#'   common types.
#' @param encoding For text, overrides the charset or the Latin1 (ISO-8859-1)
#'   default, if you know that the server is returning the incorrect encoding
#'   as the charset in the content-type. Use for text and parsed outputs.
#' @param ... Other parameters passed on to the parsing functions, if
#'  `as = "parsed"`
#' @family response methods
#' @return
#' For "raw", a raw vector.
#'
#' For "text", a character vector of length 1. The character vector is always
#' re-encoded to UTF-8. If this encoding fails (usually because the page
#' declares an incorrect encoding), `content()` will return `NA`.
#'
#' For "auto", a parsed R object.
#' @export
#' @examples
#' \dontrun{
#' r <- POST("http://httpbin.org/post", body = list(a = 1, b = 2))
#' content(r) # automatically parses JSON
#' cat(content(r, "text"), "\n") # text content
#' content(r, "raw") # raw bytes from server
#'
#' rlogo <- content(GET("https://httpbin.org/image/png"))
#' plot(0:1, 0:1, type = "n")
#' rasterImage(rlogo, 0, 0, 1, 1)
#' }
#' @aliases text_content parsed_content
content <- function(x, as = NULL, type = NULL, encoding = NULL, ...) {
  stopifnot(is.response(x))

  type <- type %||% x$headers[["Content-Type"]] %||%
    mime::guess_type(x$url, empty = "application/octet-stream")

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
  message("text_content() deprecated. Use content(x, as = 'parsed')")
  content(x, as = "parsed", ...)
}

#' Does the request have content associated with it?
#'
#' @keywords internal
#' @export
#' @examples
#' \dontrun{
#' has_content(POST("http://httpbin.org/post", body = FALSE))
#' has_content(HEAD("http://httpbin.org/headers"))
#' }
has_content <- function(x) {
  length(x$content) > 0
}
