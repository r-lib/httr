#' Upload a file with \code{\link{POST}} or \code{\link{PUT}}.
#'
#' @param path path to file
#' @param type mime type of path. If not supplied, will be guess by
#'   \code{\link[mime]{guess_type}} when needed.
#' @export
#' @examples
#' citation <- upload_file(system.file("CITATION"))
#' POST("http://httpbin.org/post", body = citation)
#' POST("http://httpbin.org/post", body = list(y = citation))
upload_file <- function(path, type = NULL) {
  stopifnot(is.character(path), length(path) == 1, file.exists(path))

  if (is.null(type))
    type <- mime::guess_type(path)

  curl::form_file(path, type)
}

#' @export
as.character.form_file <- function(x, ...) x
