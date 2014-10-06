#' S3 object to define respose writer.
#'
#' This S3 object allows you to control how the response body is saved.
#'
#' There are three key methods:
#' \itemize{
#'   \item \code{write_init()}: called before the write is started. It should
#'     return a modified object.
#'   \item \code{write_opts()}: returns a list options passed on to RCurl
#'   \item \code{write_term()}: called after the request is complete.
#'     Should return the content (or a pointer to it)
#' }
#' @param subclass,... Class name and fields. Used in class constructors.
#' @param x A \code{write_function} object to process.
#' @keywords internal
#' @export
write_function <- function(subclass, ...) {
  structure(list(...), class = c(subclass, "write_function"))
}
#' @export
#' @rdname write_function
write_init <- function(x) UseMethod("write_init")
#' @export
#' @rdname write_function
write_opts <- function(x) UseMethod("write_opts")
#' @export
#' @rdname write_function
write_term <- function(x) UseMethod("write_term")

# Disk -------------------------------------------------------------------------

#' Control where the response body is written.
#'
#' The default behaviour is to use \code{write_memory()}, which caches
#' the response locally in memory. This is useful when talking to APIs as
#' it avoids a round-trip to disk. If you want to save a file that's bigger
#' than memory, use \code{write_disk()} to save it to a known path.
#'
#' @param path Path to content to.
#' @param overwrite Will only overwrite existing \code{path} if TRUE.
#' @export
#' @useDynLib httr writer
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
#' GET("http://www2.census.gov/acs2011_5yr/pums/csv_pus.zip",
#'   write_disk("csv_pus.zip"), progress())
#' }
write_disk <- function(path, overwrite = FALSE) {
  if (!overwrite && file.exists(path)) {
    stop("Path exists and overrwrite is FALSE", call. = FALSE)
  }
  config(
    writer = write_function("write_disk", path = path, file = NULL)
  )
}
#' @export
write_init.write_disk <- function(x) {
  x$file <- RCurl::CFILE(x$path, "wb")
  x
}
#' @export
write_opts.write_disk <- function(x) {
  list(
    writefunction = writer$address,
    writedata = x$file@ref
  )
}
#' @export
#' @useDynLib httr close_file
write_term.write_disk <- function(x) {
  .Call(close_file, x$file@ref)
  x$file <- NULL
  path(x$path)
}
#' @export
print.write_disk <- function(x, ...) {
  cat("<write_disk> ", x$path, "\n", sep = "")
}

path <- function(x) structure(x, class = "path")
#' @export
length.path <- function(x) file.info(x)$size
is.path <- function(x) inherits(x, "path")

# Memory -----------------------------------------------------------------------

#' @rdname write_disk
#' @export
write_memory <- function() {
  config(
    writer = write_function("write_memory", buffer = NULL)
  )
}
#' @export
print.write_memory <- function(x, ...) {
  cat("<write_memory>\n")
}

#' @export
write_init.write_memory <- function(x) {
  x$buffer <- RCurl::binaryBuffer()
  x
}
#' @export
write_opts.write_memory <- function(x) {
  list(
    writefunction = getNativeSymbolInfo("R_curl_write_binary_data")$address,
    writedata = x$buffer@ref
  )
}
#' @export
write_term.write_memory <- function(x) {
  methods::as(x$buffer, "raw")
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
#'   be 16k or less
#' @examples
#' GET("https://jeroenooms.github.io/data/diamonds.json",
#'   write_stream(function(x) print(length(x)))
#' )
#' @export
write_stream <- function(f) {
  stopifnot(is.function(f), length(formals(f)) == 1)

  config(
    writer = write_function("write_stream", f = safe_callback(f))
  )
}
#' @export
print.write_stream <- function(x, ...) {
  cat("<write_stream>\n")
}

#' @export
write_init.write_stream <- function(x) {
  x
}
#' @export
#' @useDynLib httr write_callback
write_opts.write_stream <- function(x) {
  list(
    writefunction = write_callback$address,
    writedata = x$f
  )
}
#' @export
write_term.write_stream <- function(x) {
  raw()
}
