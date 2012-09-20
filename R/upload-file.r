#' Upload a file with \code{\link{POST}} or \code{\link{PUT}}.
#'
#' This is a tiny wrapper for \pkg{RCurl}'s \code{\link[RCurl]{fileUpload}}.
#'
#' @param path path to file
#' @export
#' @examples
#' POST("http://httpbin.org/post",
#'   body = list(y = upload_file(system.file("CITATION"))))
upload_file <- function(path) {
  stopifnot(is.character(path), length(path) == 1)
  fileUpload(path)
}
