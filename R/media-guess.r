#' Guess the media type of a path from its extension.
#'
#' DEPRECATED: please use \code{mime::guess_type} instead.
#'
#' @param x path to file
#' @keywords internal
#' @export
guess_media <- function(x) {
  .Deprecated("mime::guess_type")
  mime::guess_type(x, empty = NULL)
}
