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

#' @S3method print response
print.response <- function(x, ..., max.lines = 10) {    
  cat("Response [", x$url, "]\n", sep = "")
  cat("  Status: ", x$status, "\n", sep = "")
  
  text <- text_content(x)
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

#' @S3method as.character response
as.character.response <- function(x, ...) {
  text_content(x)
}

#' Throw error on http error.
#'
#' Converts http errors to R errors - this is useful if you want to ensure
#' the appropriate action is taken when an http request fails.
#'
#' @param x a request object
#' @export
#' @family response methods
#' @examples
#' x <- GET("http://httpbin.org/status/320")
#' stop_for_status(x) # nothing happens
#' x <- GET("http://httpbin.org/status/404")
#' \dontrun{stop_for_status(x)}
stop_for_status <- function(x) {
  stopifnot(is.response(x))
  
  status <- x$status_code
  if (status < 400) return(invisible())
  
  if (status >= 400 & status < 500) {
    stop("http client error (", status, ")", call. = FALSE)
  }
  if (status >= 500 & status < 600) {
    stop("http server error (", status, ")", call. = FALSE)
  }
}

