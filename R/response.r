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


# Turn http status code into a more meaningful message
describe_status <- function(status) {

  if (status < 200) {
    out <- paste("information (", status, ")")
  } else if (status == 200 ) {
    out <- "ok"
  } else if (status < 300) {
    out <- "success"
  } else if (status < 400) {
    out <- paste("redirection (", status, ")")
  } else if (status < 500) {
    out <- paste("http client error (", status, ")")
  } else if (status < 600) {
    out <- paste("http server error (", status, ")")
  } else {
    stop("Unknown HTTP status : ", status)
  }

  return(out)
}


#' Check for an http OK status.
#'
#' Checks if a request on a given URL succeeds and returns an OK status.
#'
#' @param ... passed to HEAD to perform the request (usually just a url)
#' @return This function returns \code{TRUE} only if the http status is
#'   exactly 200, \code{FALSE otherwise}. See
#'   \code{http://en.wikipedia.org/wiki/Http_status_codes}
#'   for more information on http status codes.
#' @export
#' @family response methods
#' @examples
#' url_ok("http://www.google.com")
#' url_ok("http://httpbin.org/status/200")
#' url_ok("http://httpbin.org/status/201")
url_ok <- function(...) {
  x <- HEAD(...)
  describe_status(x$status_code) == "ok"
}

#' Check for an http success status.
#'
#' Checks if a request on a given URL succeeds.
#'
#' @param ... passed to HEAD to perform the request (usually just a url)
#' @return This function returns \code{TRUE} if the request succeeds
#'   (status in the 200s), \code{FALSE otherwise}. See
#'   \code{http://en.wikipedia.org/wiki/Http_status_codes}
#'   for more information on http status codes.
#' @export
#' @family response methods
#' @examples
#' url_success("http://www.google.com")
#' url_success("http://httpbin.org/status/200")
#' url_success("http://httpbin.org/status/201")
#' url_success("http://httpbin.org/status/300")
url_success <- function(...) {
  x <- HEAD(...)
  describe_status(x$status_code) %in% c("ok", "success")
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
#' x <- GET("http://httpbin.org/status/200")
#' stop_for_status(x) # nothing happens
#' x <- GET("http://httpbin.org/status/320")
#' \dontrun{stop_for_status(x)}
#' x <- GET("http://httpbin.org/status/404")
#' \dontrun{stop_for_status(x)}
stop_for_status <- function(x) {
  stopifnot(is.response(x))

  status <- describe_status(x$status_code)
  if ( ! status %in% c("ok", "success")) {
    stop(status, call. = FALSE)
  }

  return(invisible())
}

#' Issue a warning on http error.
#'
#' Converts http errors to R warnings - this is useful if you want to
#' monitor http request failures.
#'
#' @param x a request object
#' @export
#' @family response methods
#' @examples
#' x <- GET("http://httpbin.org/status/200")
#' warn_for_status(x) # nothing happens
#' x <- GET("http://httpbin.org/status/320")
#' warn_for_status(x)
#' x <- GET("http://httpbin.org/status/404")
#' warn_for_status(x)
warn_for_status <- function(x) {
  stopifnot(is.response(x))

  status <- describe_status(x$status_code)
  if ( ! status %in% c("ok", "success")) {
    warning(status, call. = FALSE)
  }

  return(invisible())
}
