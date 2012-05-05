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
#' GET(b)
#' GET(b, add_headers(a = 1, b = 2))
#' GET(b, set_cookies(a = 1, b = 2))
#' GET(b, authenticate("username", "password"))
#' GET(b, verbose())
#' 
#' # You might want to manually specify the handle so you can have multiple
#' # independent logins to the same website.
#' google <- handle("http://google.com")
#' GET(handle = google, path = "/")
#' GET(handle = google, path = "search")
GET <- function(url = NULL, config = list(), ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("get", hu$handle, hu$url, config = config)
}

get_config <- function() {
  config()
}