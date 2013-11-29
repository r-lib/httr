status_code <- function(x) UseMethod("status_code")
#' @export
status_code.response <- function(x) x$status_code
#' @export
status_code.numeric <- function(x) x

#' Give information on the status of a request.
#'
#' Extract the http status code and convert it into a human readable message.
#'
#' http servers send a status code with the response to each request. This code
#' gives information regarding the outcome of the execution of the request 
#' on the server. Roughly speaking, codes in the 100s and 200s mean the request 
#' was successfully executed; codes in the 300s mean the page was redirected; 
#' codes in the 400s mean there was a mistake in the way the client sent the
#' request; codes in the 500s mean the server failed to fulfill
#' an apparently valid request. More details on the codes can be found at
#' \code{http://en.wikipedia.org/wiki/Http_error_codes}.
#'
#' @param x a request object or a number.
#' @return If the status code does not match a known status, an error.
#'  Otherwise, a list with components
#'  \item{category}{the broad category of the status}
#'  \item{message}{the meaning of the status code}
#' @family response methods
#' @examples
#' http_status(100)
#' http_status(404)
#' 
#' x <- GET("http://httpbin.org/status/200")
#' http_status(x)
#'
#' http_status(GET("http://httpbin.org/status/300"))
#' http_status(GET("http://httpbin.org/status/301"))
#' http_status(GET("http://httpbin.org/status/404"))
#'
#' # errors out on unknown status
#' \dontrun{http_status(GET("http://httpbin.org/status/320"))}
#' @export
http_status <- function(x) {
  status <- status_code(x)

  status_desc <- http_statuses[as.character(status)]  
  if (is.na(status_desc)) {
    stop("Unknown http status code: ", status, call. = FALSE)
  }

  status_types <- c("information", "success", "redirection", "client error", 
    "server error")
  status_type <- status_types[status %/% 100]

  # create the final information message
  message <- paste(status_type, ": (", status, ") ", status_desc, sep = "")

  list(
    category = status_type,
    message = message
  )
}

http_statuses <- c(
  "100" = "Continue",
  "101" = "Switching Protocols",
  "102" = "Processing (WebDAV; RFC 2518)",
  "200" = "OK",
  "201" = "Created",
  "202" = "Accepted",
  "203" = "Non-Authoritative Information",
  "204" = "No Content",
  "205" = "Reset Content",
  "206" = "Partial Content",
  "207" = "Multi-Status (WebDAV; RFC 4918)",
  "208" = "Already Reported (WebDAV; RFC 5842)",
  "226" = "IM Used (RFC 3229)",
  "300" = "Multiple Choices",
  "301" = "Moved Permanently",
  "302" = "Found",
  "303" = "See Other",
  "304" = "Not Modified",
  "305" = "Use Proxy",
  "306" = "Switch Proxy",
  "307" = "Temporary Redirect",
  "308" = "Permanent Redirect (experimental Internet-Draft)",
  "400" = "Bad Request",
  "401" = "Unauthorized",
  "402" = "Payment Required",
  "403" = "Forbidden",
  "404" = "Not Found",
  "405" = "Method Not Allowed",
  "406" = "Not Acceptable",
  "407" = "Proxy Authentication Required",
  "408" = "Request Timeout",
  "409" = "Conflict",
  "410" = "Gone",
  "411" = "Length Required",
  "412" = "Precondition Failed",
  "413" = "Request Entity Too Large",
  "414" = "Request-URI Too Long",
  "415" = "Unsupported Media Type",
  "416" = "Requested Range Not Satisfiable",
  "417" = "Expectation Failed",
  "418" = "I'm a teapot (RFC 2324)",
  "420" = "Enhance Your Calm (Twitter)",
  "422" = "Unprocessable Entity (WebDAV; RFC 4918)",
  "423" = "Locked (WebDAV; RFC 4918)",
  "424" = "Failed Dependency (WebDAV; RFC 4918)",
  "424" = "Method Failure (WebDAV)",
  "425" = "Unordered Collection (Internet draft)",
  "426" = "Upgrade Required (RFC 2817)",
  "428" = "Precondition Required (RFC 6585)",
  "429" = "Too Many Requests (RFC 6585)",
  "431" = "Request Header Fields Too Large (RFC 6585)",
  "444" = "No Response (Nginx)",
  "449" = "Retry With (Microsoft)",
  "450" = "Blocked by Windows Parental Controls (Microsoft)",
  "451" = "Unavailable For Legal Reasons (Internet draft)",
  "499" = "Client Closed Request (Nginx)",
  "500" = "Internal Server Error",
  "501" = "Not Implemented",
  "502" = "Bad Gateway",
  "503" = "Service Unavailable",
  "504" = "Gateway Timeout",
  "505" = "HTTP Version Not Supported",
  "506" = "Variant Also Negotiates (RFC 2295)",
  "507" = "Insufficient Storage (WebDAV; RFC 4918)",
  "508" = "Loop Detected (WebDAV; RFC 5842)",
  "509" = "Bandwidth Limit Exceeded (Apache bw/limited extension)",
  "510" = "Not Extended (RFC 2774)",
  "511" = "Network Authentication Required (RFC 6585)",
  "598" = "Network read timeout error (Unknown)",
  "599" = "Network connect timeout error (Unknown)"
)

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
  identical(status_code(x), 200)
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
  successful(HEAD(...))
}
successful <- function(x) status_code(x) < 300

#' Take action on http error.
#'
#' Converts http errors to R errors or warnings - these should always
#' be used whenever you're creating requests inside a function, so
#' that the user knows why a request has failed. 
#' 
#' @return If request was successful, an invisible \code{TRUE}. Otherwise, 
#'   raised a classed http error or warning, as generated by 
#'   \code{\link{http_condition}}
#' @seealso \code{\link{http_status}} and 
#'   \code{http://en.wikipedia.org/wiki/Http_status_codes} for more information 
#'   on http status codes.
#' @param x a request object
#' @family response methods
#' @examples
#' x <- GET("http://httpbin.org/status/200")
#' stop_for_status(x) # nothing happens
#' warn_for_status(x)
#'
#' x <- GET("http://httpbin.org/status/300")
#' \dontrun{stop_for_status(x)}
#' warn_for_status(x)
#'
#' x <- GET("http://httpbin.org/status/404")
#' \dontrun{stop_for_status(x)}
#' warn_for_status(x)
#' @name http_error
NULL

#' @rdname http_error
#' @export
stop_for_status <- function(x) {
  if (successful(x)) return(invisible(TRUE))  
  stop(http_condition(x, "error", call = sys.call(-1)))
}

#' @rdname http_error
#' @export
warn_for_status <- function(x) {
  if (successful(x)) return(invisible(TRUE))  
  warning(http_condition(x, "warning", call = sys.call(-1)))
}

#' Generate a classed http condition.
#' 
#' This function generate S3 condition objects which are passed to 
#' \code{\link{stop}} or \code{\link{warning}} to generate classes warnings
#' and error. These can be used in conjunction with \code{\link{tryCatch}}
#' to respond differently to different type of failure.
#' 
#' @keywords internal
#' @return An S3 object that inherits from (e.g.) condition, \code{type}, 
#'   http_error, http_400 and http_404.
#' @param x a response, or numeric http code (or other object with 
#'   \code{status_code} method)
#' @param type type of condition to generate. Must be one of error,
#'   warning or message.
#' @param message The text of the message. If \code{NULL}, the default,
#'   will use \code{\link{http_status}} to generate the message.
#' @param call The call stored in the condition object.
#' @seealso 
#'   \url{http://adv-r.had.co.nz/Exceptions-Debugging.html#condition-handling}
#'   for more details about R's condition handling model
#' @export
#' @examples
#' # You can use tryCatch to take different actions based on the type
#' # of error. Note that tryCatch will call the first handler that
#' # matches any classes of the condition, not the best matching, so
#' # always list handlers from most specific to least specific
#' f <- function(url) {
#'   tryCatch(stop_for_status(GET(url)),
#'     http_404 = function(c) "That url doesn't exist",
#'     http_403 = function(c) "You need to authenticate!",
#'     http_400 = function(c) "You made a mistake!",
#'     http_500 = function(c) "The server screwed up"
#'   )  
#' }
#' f("http://httpbin.org/status/404")
#' f("http://httpbin.org/status/403")
#' f("http://httpbin.org/status/505")
http_condition <- function(x, type, message = NULL, call = sys.call(-1)) {
  status <- status_code(x)
  status_type <- (status %/% 100) * 100

  type <- match.arg(type, c("error", "warning", "message"))
  
  message <- message %||% http_status(status)$message
  
  http_class <- paste("http_", c(status, status_type, "error"), sep = "")
  
  structure(
    list(message = message, call = call),
    class = c(http_class, type, "condition")
  )
}
