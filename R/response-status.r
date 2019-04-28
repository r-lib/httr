#' Extract status code from response.
#'
#' @param x A response
#' @export
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
#' `http://en.wikipedia.org/wiki/Http_error_codes`.
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
#' \dontrun{
#' http_status(GET("http://httpbin.org/status/320"))
#' }
#' @export
http_status <- function(x) {
  status <- status_code(x)

  if (!status %in% names(http_statuses)) {
    stop("Unknown http status code: ", status, call. = FALSE)
  }

  status_desc <- http_statuses[[as.character(status)]]

  status_types <- c(
    "Information", "Success", "Redirection", "Client error",
    "Server error"
  )
  status_type <- status_types[[status %/% 100]]

  # create the final information message
  message <- paste(status_type, ": (", status, ") ", status_desc, sep = "")

  list(
    category = status_type,
    reason = status_desc,
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

#' Check for an http error.
#'
#' @param x Object to check. Default methods are provided for strings
#'   (which perform an [HEAD()] request), responses, and
#'   integer status codes.
#' @param ... Other arguments passed on to methods.
#' @return  `TRUE` if the request fails (status code 400 or above),
#'   otherwise `FALSE`.
#' @export
#' @family response methods
#' @examples
#' # You can pass a url:
#' http_error("http://www.google.com")
#' http_error("http://httpbin.org/status/404")
#' 
#' # Or a request
#' r <- GET("http://httpbin.org/status/201")
#' http_error(r)
#' 
#' # Or an (integer) status code
#' http_error(200L)
#' http_error(404L)
http_error <- function(x, ...) {
  UseMethod("http_error")
}
#' @export
http_error.character <- function(x, ...) {
  http_error(HEAD(x, ...))
}
#' @export
http_error.response <- function(x, ...) {
  http_error(status_code(x))
}

#' @export
http_error.integer <- function(x, ...) {
  x >= 400L
}

#' @export
#' @rdname http_error
#' @usage NULL
url_success <- function(x, ...) {
  warning(
    "`url_success(x)` is deprecated; please use `!http_error(x)` instead.",
    call. = FALSE
  )
  !http_error(x, ...)
}

#' @export
#' @rdname http_error
#' @usage NULL
url_ok <- function(x, ...) {
  warning(
    "`url_ok(x)` is deprecated; ",
    "please use `identical(status_code(x), 200L)` instead.",
    call. = FALSE
  )
  identical(status_code(HEAD(x, ...)), 200L)
}

#' Take action on http error.
#'
#' Converts http errors to R errors or warnings - these should always
#' be used whenever you're creating requests inside a function, so
#' that the user knows why a request has failed.
#'
#' @return If request was successful, the response (invisibly). Otherwise,
#'   raised a classed http error or warning, as generated by
#'   [http_condition()]
#' @inheritParams http_condition
#' @seealso [http_status()] and
#'   `http://en.wikipedia.org/wiki/Http_status_codes` for more information
#'   on http status codes.
#' @family response methods
#' @examples
#' x <- GET("http://httpbin.org/status/200")
#' stop_for_status(x) # nothing happens
#' warn_for_status(x)
#' message_for_status(x)
#' 
#' x <- GET("http://httpbin.org/status/300")
#' \dontrun{
#' stop_for_status(x)
#' }
#' warn_for_status(x)
#' message_for_status(x)
#' 
#' x <- GET("http://httpbin.org/status/404")
#' \dontrun{
#' stop_for_status(x)
#' }
#' warn_for_status(x)
#' message_for_status(x)
#' 
#' # You can provide more information with the task argument
#' warn_for_status(x, "download spreadsheet")
#' message_for_status(x, "download spreadsheet")
#' @export
stop_for_status <- function(x, task = NULL) {
  if (status_code(x) < 300) {
    return(invisible(x))
  }

  call <- sys.call(-1)
  stop(http_condition(x, "error", task = task, call = call))
}

#' @rdname stop_for_status
#' @export
warn_for_status <- function(x, task = NULL) {
  if (status_code(x) < 300) {
    return(invisible(x))
  }

  call <- sys.call(-1)
  warning(http_condition(x, "warning", task = task, call = call))
}

#' @rdname stop_for_status
#' @export
message_for_status <- function(x, task = NULL) {
  call <- sys.call(-1)
  message(http_condition(x, "message", task = task, call = call))
}


#' Generate a classed http condition.
#'
#' This function generate S3 condition objects which are passed to
#' [stop()] or [warning()] to generate classes warnings
#' and error. These can be used in conjunction with [tryCatch()]
#' to respond differently to different type of failure.
#'
#' @keywords internal
#' @return An S3 object that inherits from (e.g.) condition, `type`,
#'   http_error, http_400 and http_404.
#' @param x a response, or numeric http code (or other object with
#'   `status_code` method)
#' @param type type of condition to generate. Must be one of error,
#'   warning or message.
#' @param task The text of the message: either `NULL` or a
#'   character vector. If non-`NULL`, the error message will finish with
#'   "Failed to `task`".
#' @param call The call stored in the condition object.
#' @seealso
#'   <http://adv-r.had.co.nz/Exceptions-Debugging.html#condition-handling>
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
http_condition <- function(x, type, task = NULL, call = sys.call(-1)) {
  type <- match.arg(type, c("error", "warning", "message"))

  if (is.null(task)) {
    task <- ""
  } else if (is.character(task)) {
    task <- paste0(" Failed to ", task, ".")
  } else {
    stop("`task` must be NULL or a character vector", call. = FALSE)
  }

  status <- status_code(x)
  reason <- http_status(status)$reason

  message <- sprintf("%s (HTTP %d).%s", reason, status, task)

  status_type <- (status %/% 100) * 100
  http_class <- paste0("http_", unique(c(status, status_type, "error")))

  structure(
    list(message = message, call = call),
    class = c(http_class, type, "condition")
  )
}
