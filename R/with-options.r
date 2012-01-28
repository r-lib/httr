
with_options <- function(options, expr) {
  
  
  
}

# CURLOPT_FOLLOWLOCATION - default to TRUE?
# CURLOPT_MAXREDIRS - default to 10?

# getCurlHandle
# curlSetOpt()

#' @param ... All other arguments passed on \code{\link{CURLOptions}}
config <- function(cookies, userpwd, proxy, proxyuserpwd, ...) {
  curlOptions(base.url = base.url, timeout=timeout, format=tolower(format), headers=headers, ...)
}
