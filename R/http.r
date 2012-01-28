# man 3 libcurl
# http://beders.github.com/Resty/Resty/Examples.html
# http://github.com/jnunemaker/httparty/tree/master

# S3 class to manage output: headers, response, 

#' @param handle the handle for the domain you're interested in
#' @param url the url relative to the domain root
#' @param ... Further parameters, such as \code{query}, \code{path}, etc,
#'   passed on to \code{\link{modify_url}}. Used to modify the current
#'   \code{url}.  These parameter must be named.
#' @examples
#' google <- new_host("http://google.com")
#' GET(google, "/")
GET <- function(handle, path, ..., config = config()) {
  url <- modify_url(handle$url, path = path, ...)
  hg <- basicHeaderGatherer()
  
  content <- getURL(url, curl = handle$handle, headerfunction = hg$update)
  # Probably needs to work like Python's request and return text, binary 
  # and raw streams. Need to think about memory implications - maybe should be 
  # argument to request?
  
  info <- last_request(handle)
  
  headers <- as.list(hg$value())
  
  response(
    url = info$effective.url,
    status_code = headers$status,
    headers = headers,
    text = content
  )
}

# Need to make it easy to upload files from local paths.
# Same for PUT
#' @inheritParams GET
POST <- function(url, ..., config = config()) {
  url <- modify_url(url, ...)
  postForm(url, style = "post", params = params)
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

# curlPerform

# ?curlGlobalInit
# httpauth

# persist_cookies(path, {}, cleanup = TRUE)
# cookies -- read from
# cookiejar -- write to

# with_session(handle, {}) # if you want to reuse a handle in multiple
#    requests - but probably not needed with handle pool?

# with_headers
# with_auth(username, password, {})
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


# Check that location redirects are turned on my default.

# look up setInternet2 and see if it can be copied
set_proxy <- function(url, username, password) {
  old <- getOption("RCurlOptions")
  if (is.null(old)) old <- list()
  
  new <- modifyList(old, list(proxy = url, 
    proxyuserpwd = str_c(username, ":", password)))
  
  options(RCurlOptions = new)
  invisible(old)
}

