#' The response object.
#'
#' The response object captures all information from a request.  It includes
#' fields:
#'
#' \itemize{
#'   \item \code{url} the url the request was actually sent to
#'     (after redirects)
#'   \item \code{handle} the handle associated with the url
#'   \item \code{status_code} the http status code
#'   \item \code{header} a named list of headers returned by the server
#'   \item \code{cookies} a named list of cookies returned by the server
#'   \item \code{content} the body of the response, as raw vector. See
#'      \code{\link{content}} for various ways to access the content.
#'   \item \code{time} request timing information
#'   \item \code{config} configuration for the request
#' }
#' @name response
#' @family response methods
NULL

response <- function(...) {
  structure(list(...), class = "response")
}

is.response <- function(x) {
  inherits(x, "response")
}

#' @export
print.response <- function(x, ..., max.lines = 10) {
  content_type <- x$headers$`content-type`

  cat("Response [", x$url, "]\n", sep = "")
  cat("  Status: ", x$status, "\n", sep = "")
  cat("  Content-type: ", content_type %||% "<unknown>", "\n", sep = "")

  size <- length(x$content)
  if (size == 0) {
    cat("<EMPTY BODY>\n")
    return()
  }

  cat("  Size: ", bytes(size), "\n", sep = "")
  if (!is_text(content_type)) {
    cat("<BINARY BODY>\n")
    return()
  }

  text <- content(x, "text")
  if (length(text) == 0) return()
  breaks <- str_locate_all(text, "\n")[[1]]

  lines <- nrow(breaks)
  if (lines > max.lines) {
    last_line <-  breaks[max.lines, 1] - 1
    cat(str_sub(text, 1, last_line), "...\n")
  } else {
    cat(text, "\n")
  }
}

is_text <- function(type) {
  if (is.null(type)) return(FALSE)

  media <- parse_media(type)
  if (media$type == "text") return(TRUE)
  if (media$type == "application" && media$subtype == "json") return(TRUE)

  FALSE
}

#' @export
as.character.response <- function(x, ...) {
  content(x, "text")
}
