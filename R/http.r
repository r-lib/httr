# man 3 libcurl
# http://beders.github.com/Resty/Resty/Examples.html
# http://github.com/jnunemaker/httparty/tree/master

#' Get a url.
#'
#' \pkg{httr} automatically reuses the same http connection (aka handle)
#' for mulitple requests to the same scheme/host/port combo. This 
#' substantially reduces connection time, and ensures that cookies are 
#' maintained over multiple request to the same host. See
#' \code{\link{handle_pool}} for more details.
#'
#' @param url the url of the page to retrieve
#' @param ... Further parameters, such as \code{query}, \code{path}, etc,
#'   passed on to \code{\link{modify_url}}. These parameters must be named.
#' @param handle The handle to use with this request. If not
#'   supplied, will be retrieved and reused from the \code{\link{handle_pool}}
#'   based on the scheme, hostname and port of the url.
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
#'
#' # To get more feedback, make the handle verbose
#' is.verbose(b) <- TRUE
#' GET(handle = b)
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

#' @export
BROWSE <- function(url = NULL, ..., config = list(), handle = NULL) {
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
    postfieldsize = strlen(content)
  )
}


DELETE <- function(url, content, ...) {
  url <- modify_url(url, ...)
  getURLContent(url,
    customrequest = "DELETE",
    postfields = content,
    postfieldsize = strlen(content)
  )
}

# OPTIONS ? 
# PATCH ?

# curlPerform
# with_base_url(url, {})  
# with_base_url("http://google.com", {
#   with_base_url("/query.html", {
#     getURL(query = list())
#   })
#   
# })

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

