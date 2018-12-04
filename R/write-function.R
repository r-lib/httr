#' S3 object to define response writer.
#'
#' This S3 object allows you to control how the response body is saved.
#'
#' @param subclass,... Class name and fields. Used in class constructors.
#' @param x A `write_function` object to process.
#' @keywords internal
#' @export
write_function <- function(subclass, ...) {
  structure(list(...), class = c(subclass, "write_function"))
}

#' Control where the response body is written.
#'
#' The default behaviour is to use `write_memory()`, which caches
#' the response locally in memory. This is useful when talking to APIs as
#' it avoids a round-trip to disk. If you want to save a file that's bigger
#' than memory, use `write_disk()` to save it to a known path.
#'
#' @param path Path to content to.
#' @param overwrite Will only overwrite existing `path` if TRUE.
#' @export
#' @examples
#' tmp <- tempfile()
#' r1 <- GET("https://www.google.com", write_disk(tmp))
#' readLines(tmp)
#' 
#' # The default
#' r2 <- GET("https://www.google.com", write_memory())
#' 
#' # Save a very large file
#' \dontrun{
#' GET(
#'   "http://www2.census.gov/acs2011_5yr/pums/csv_pus.zip",
#'   write_disk("csv_pus.zip"), progress()
#' )
#' }
write_disk <- function(path, overwrite = FALSE) {
  if (!overwrite && file.exists(path)) {
    stop("Path exists and overwrite is FALSE", call. = FALSE)
  }
  request(output = write_function("write_disk", path = path, file = NULL))
}

#' @rdname write_disk
#' @export
write_memory <- function() {
  request(output = write_function("write_memory"))
}

# Streaming -----------------------------------------------------------------------

#' Process output in a streaming manner.
#'
#' This is the most general way of processing the response from the server -
#' you receive the raw bytes as they come in, and you can do whatever you want
#' with them.
#'
#' @param f Callback function. It should have a single argument, a raw
#'   vector containing the bytes recieved from the server. This will usually
#'   be 16k or less. The return value of the function is ignored.
#' @examples
#' GET(
#'   "https://github.com/jeroen/data/raw/gh-pages/diamonds.json",
#'   write_stream(function(x) {
#'     print(length(x))
#'     length(x)
#'   })
#' )
#' @export
write_stream <- function(f) {
  stopifnot(is.function(f), length(formals(f)) == 1)
  request(output = write_function("write_stream", f = f))
}


request_fetch <- function(x, url, handle) UseMethod("request_fetch")
request_fetch.write_memory <- function(x, url, handle) {
  curl::curl_fetch_memory(url, handle = handle)
}
request_fetch.write_disk <- function(x, url, handle) {
  resp <- curl::curl_fetch_disk(url, x$path, handle = handle)
  resp$content <- path(resp$content)
  resp
}
request_fetch.write_stream <- function(x, url, handle) {
  curl::curl_fetch_stream(url, x$f, handle = handle)
}

path <- function(x) structure(x, class = "path")
length.path <- function(x) file.info(x)$size
is.path <- function(x) inherits(x, "path")
