#' The response object.
#'
#' @description
#' The response object captures all information from a request.  It includes
#' fields:
#'
#' * `url` the url the request was actually sent to (after redirects)
#' * `handle` the handle associated with the url
#' * `status_code` the http status code
#' * `header` a named list of headers returned by the server
#' * `cookies` a named list of cookies returned by the server
#' * `content` the body of the response, as raw vector. See [content()] for various ways to access the content.
#' * `time` request timing information
#' * `config` configuration for the request
#'
#' @details For non-http(s) responses, some parts including the status and
#'   header may not be interpretable the same way as http responses.
#'
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
print.response <- function(x, ..., max.lines = 10, width = getOption("width")) {
  content_type <- x$headers$`content-type`

  cat("Response [", x$url, "]\n", sep = "")
  cat("  Date: ", format(x$date, "%Y-%m-%d %H:%M"), "\n", sep = "")
  cat("  Status: ", x$status_code, "\n", sep = "")
  cat("  Content-Type: ", content_type %||% "<unknown>", "\n", sep = "")

  size <- length(x$content)
  if (size == 0) {
    cat("<EMPTY BODY>\n")
    return()
  }

  cat("  Size: ", bytes(size), "\n", sep = "")
  if (is.path(x$content)) {
    cat("<ON DISK> ", x$content)
    return()
  }
  if (!is_text(content_type)) {
    cat("<BINARY BODY>\n")
    return()
  }

  # Content is text, so print up to `max.lines` lines, truncating each line to
  # at most `width` characters wide
  suppressMessages(text <- content(x, "text"))

  breaks <- gregexpr("\n", text, fixed = TRUE)[[1]]
  last_line <- breaks[min(length(breaks), max.lines)]
  lines <- strsplit(substr(text, 1, last_line), "\n")[[1]]

  too_wide <- nchar(lines) > width
  lines[too_wide] <- paste0(substr(lines[too_wide], 1, width - 3), "...")

  cat(lines, sep = "\n")
  if (max.lines < length(breaks)) cat("...\n")

  invisible(x)
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
