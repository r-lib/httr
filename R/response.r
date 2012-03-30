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
#'   \item \code{text} the body of the response, as text
#'   \item \code{time} request timing information
#'   \item \code{config} configuration for the request
#'
#' @name response
NULL


response <- function(...) {  
  structure(list(...), class = "response")
}

#' @S3method print response
print.response <- function(x, ..., max.lines = 10) {    
  cat("Response [", x$url, "]\n", sep = "")
  cat("  Status: ", x$status, "\n", sep = "")
  
  if (length(x$text) == 0) return()
  breaks <- str_locate_all(x$text, "\n")[[1]]
  
  lines <- nrow(breaks)
  if (lines > max.lines) {
    last_line <-  breaks[max.lines, 1] - 1
    cat(str_sub(x$text, 1, last_line), "...\n")
  } else {
    cat(x$text, "\n")
  }
}

#' @S3method as.character response
as.character.response <- function(x, ...) {
  x$text
}

