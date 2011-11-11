# man 3 libcurl
# http://beders.github.com/Resty/Resty/Examples.html
# http://github.com/jnunemaker/httparty/tree/master

# S3 class to manage output: headers, response, 

#' @param ... Further parameters, such as \code{query}, \code{path}, etc,
#'   passed on to \code{\link{modify_url}}. Used to modify the current
#'   \code{url}.  These parameter must be named.
GET <- function(url, ..., config = config()) {
  url <- modify_url(url, ...)
  getURLContent(make_url(url, params))
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

#' @param ... All other arguments passed on \code{\link{CURLOptions}}
config <- function(cookies, userpwd, proxy, proxyuserpwd, ...) {
  CURLOptions(base.url=base.url, timeout=timeout, format=tolower(format), headers=headers)
}


# ?curlGlobalInit
# httpauth

# persist_cookies(path, {}, cleanup = TRUE)
# cookies -- read from
# cookiejar -- write to



# with_session(handle, {}) # if you want to reuse a handle in multiple
#    requests - but probably not needed with handle pool?
# with_auth(username, password, {})
# with_base_url(url, {})  
# with_base_url("http://google.com", {
#   with_base_url("/query.html", {
#     getURL(query = list())
#   })
#   
# })

# Need an automatic pool of curl handles?
# Config them - catch last (10?) domains, reusing handle because I think
# this gives the behaviour that users expect?  How are cookies etc preserved?
# Use 0 to turn off and generate new handle for every request?

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

