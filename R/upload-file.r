#' Upload a file with \code{\link{POST}} or \code{\link{PUT}}.
#'
#' This is a tiny wrapper for \pkg{RCurl}'s \code{\link[RCurl]{fileUpload}}.
#'
#' @param path path to file
#' @param type mime type of path. If not supplied, will be guess by
#'   \code{\link{guess_media}} when needed.
#' @export
#' @examples
#' POST("http://httpbin.org/post",
#'   body = list(y = upload_file(system.file("CITATION"))))
upload_file <- function(path, type = NULL) {
  stopifnot(is.character(path), length(path) == 1)
  RCurl::fileUpload(path, contentType = type)
}
