#' Give information on the status of a request.
#'
#' Extract the http status code and convert it into a human readable message.
#'
#' http servers send a status code with the response to each request. This code gives
#' information regarding the outcome of the execution of the request on the server.
#' Roughly, codes in the 200s mean the request was successfully executed; codes in the
#' 300s mean the page was redirected; codes in the 400s mean there was a mistake in the
#' way the client sent the request; codes in the 500s mean the server failed to fulfill
#' an apparently valid request. More details on the codes can be found at
#' \code{http://en.wikipedia.org/wiki/Http_error_codes}.
#'
#' @param x a request object
#' @return If the status code does not match a known status, the function errors out.
#'   Otherwise, it returns a list with components
#'     \item{category}{the broad category of the status}
#'     \item{message}{the meaning of the status code}
#' @family response methods
#' @examples
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
  stopifnot(is.response(x))

  # extract status code
  status <- x$status_code

  # describe all known codes
  messages <- c(
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

  # check if the status code matches one of those
  codeMatch <- match(status, names(messages))
  if (is.na(codeMatch)) {
    stop("Unknown http status code: ", status)
  }

  # detect the category of code
  category <- as.character(cut(status,
    c(100          , 200      , 300          , 400           , 500           , 600),
    c("information", "success", "redirection", "client error", "server error"),
    include.lowest=TRUE, right=FALSE
  ))

  # create the final information message
  message <- paste(category, ": (", status, ") ", messages[codeMatch], sep = "")

  return(list(category = category, message = message))
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
  identical(x$status_code, 200)
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
  http_status(x)$category == "success"
}


#' Take action on http error.
#'
#' Converts http errors to R errors or warnings - this is useful if you want to ensure
#' the appropriate action is taken when an http request fails. See \code{\link{http_status}}
#' or \code{http://en.wikipedia.org/wiki/Http_status_codes} for more information on
#' http status codes.
#'
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

  status <- http_status(x)
  if ( status$category != "success" ) {
    stop(status$message, call. = FALSE)
  }

  return(invisible())
}

#' @rdname http_error
#' @export
warn_for_status <- function(x) {

  status <- http_status(x)
  if ( status$category != "success" ) {
    warning(status$message, call. = FALSE)
  }

  return(invisible())
}
