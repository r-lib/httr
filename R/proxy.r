
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

