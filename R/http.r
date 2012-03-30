#' Get a url.
#'
#' @section RFC2616:
#' The GET method means retrieve whatever information (in the form of an
#' entity) is identified by the Request-URI. If the Request-URI refers to a
#' data-producing process, it is the produced data which shall be returned as
#' the entity in the response and not the source text of the process, unless
#' that text happens to be the output of the process.
#'
#' The semantics of the GET method change to a "conditional GET" if the
#' request message includes an If-Modified-Since, If-Unmodified-Since,
#' If-Match, If-None-Match, or If-Range header field. A conditional GET method
#' requests that the entity be transferred only under the circumstances
#' described by the conditional header field(s). The conditional GET method is
#' intended to reduce unnecessary network usage by allowing cached entities to
#' be refreshed without requiring multiple requests or transferring data
#' already held by the client.
#'
#' The semantics of the GET method change to a "partial GET" if the request
#' message includes a Range header field. A partial GET requests that only
#' part of the entity be transferred, as described in \url{http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35}
#' The partial GET method is intended to reduce unnecessary network usage by
#' allowing partially-retrieved entities to be completed without transferring
#' data already held by the client.
#'
#' @param url the url of the page to retrieve
#' @param ... Further parameters, such as \code{query}, \code{path}, etc,
#'   passed on to \code{\link{modify_url}}. These parameters must be named.
#' @param config Additional configuration settings such as http
#'   authentication (\code{\link{authenticate}}), additional headers
#'   (\code{\link{add_headers}}), cookies (\code{\link{set_cookies}}) etc. 
#'   See \code{\link{config}} for full details and list of helpers.
#' @param handle The handle to use with this request. If not
#'   supplied, will be retrieved and reused from the \code{\link{handle_pool}}
#'   based on the scheme, hostname and port of the url. By default \pkg{httr}
#    automatically reuses the same http connection (aka handle) for mulitple
#'   requests to the same scheme/host/port combo. This substantially reduces
#'   connection time, and ensures that cookies are maintained over multiple
#'   requests to the same host. See \code{\link{handle_pool}} for more
#'   details.
#'
#' @family http methods
#' @export
#' @examples
#' GET("http://google.com/")
#' GET("http://google.com/", path = "search")
#' GET("http://google.com/", path = "search", query = c(q = "ham"))
#'
#' # See what GET is doing with requestb.in
#' b <- new_bin()
#' GET(handle = b)
#' GET(handle = b, config = add_headers(a = 1, b = 2))
#' GET(handle = b, config = set_cookies(a = 1, b = 2))
#' GET(handle = b, config = authenticate("username", "password"))
#' GET(handle = b, config = verbose())
#' 
#' # You might want to manually specify the handle so you can have multiple
#' # independent logins to the same website.
#' google <- handle("http://google.com")
#' GET(handle = google, path = "/")
#' GET(handle = google, path = "search")
GET <- function(url = NULL, ..., config = list(), handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("GET", hu$handle, hu$url, config = config)
}

#' Open specified url in browser.
#'
#' (This isn't really a http verb, but it seems to follow the same format).
#'
#' Only works in interactive sessions.
#'
#' @inheritParams GET
#' @family http methods
#' @export
#' @examples
#' BROWSE("http://google.com")
BROWSE <- function(url = NULL, ..., config = list(), handle = NULL) {
  if (!interactive()) return()
  hu <- handle_url(handle, url, ...)
  browseURL(hu$url)
}


handle_url <- function(handle = NULL, url = NULL, ...) {
  if (!xor(is.null(url), is.null(handle))) {
    stop("Must specify exactly one of url or handle")
  }

  if (is.null(handle))  handle <- find_handle(url)
  if (is.null(url))     url <- handle$url
  
  url <- modify_url(url, ...)

  list(handle = handle, url = url)
}

# Need to make it easy to upload files from local paths.
# Same for PUT
#' @inheritParams GET
POST <- function(url = NULL, params = NULL, ..., config = list(), handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("POST", hu$handle, hu$url, params = params, config = config)
}

#' Get url headers.
#'
#' @section RF2616:
#' The HEAD method is identical to GET except that the server MUST NOT return
#' a message-body in the response. The metainformation contained in the HTTP
#' headers in response to a HEAD request SHOULD be identical to the
#' information sent in response to a GET request. This method can be used for
#' obtaining metainformation about the entity implied by the request without
#' transferring the entity-body itself. This method is often used for testing
#' hypertext links for validity, accessibility, and recent modification.
#'
#' The response to a HEAD request MAY be cacheable in the sense that the
#' information contained in the response MAY be used to update a previously
#' cached entity from that resource. If the new field values indicate that the
#' cached entity differs from the current entity (as would be indicated by a
#' change in Content-Length, Content-MD5, ETag or Last-Modified), then the
#' cache MUST treat the cache entry as stale.
#'
#' @inheritParams GET
#' @family http methods
#' @export
#' @examples
#' HEAD("http://google.com")
#' HEAD("http://google.com")$headers
HEAD <- function(url = NULL, params = NULL, ..., config = list(), handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("HEAD", hu$handle, hu$url, params = params, config = config)
}


# maybe need POST_file ?

PUT <- function(url, content, ...) {
  url <- modify_url(url, ...)
  getURLContent(url,
    customrequest = "PUT",
    postfields = content,
    postfieldsize = str_length(content)
  )
}


DELETE <- function(url, content, ...) {
  url <- modify_url(url, ...)
  getURLContent(url,
    customrequest = "DELETE",
    postfields = content,
    postfieldsize = str_length(content)
  )
}

# OPTIONS ? 
# PATCH ?

# From Homer:
# POST_file <- function(file, ...){
#  with_body(slurp(file), {
#    with_headers(content-type="mulitpart/form-data", {
#      POST(...)
#    })
#  })
# }
# 
# The idea is that common (but not core) functionality like sending
# static files, HTTP authentication, or encoding as base 64 can be done
# once as 'middleware', which you can wrap around your existing code for
# making requests.

