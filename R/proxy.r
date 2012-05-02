#' Use a proxy to connect to the internet.
#'
#' @param url,port location of proxy
#' @param username,password login details for proxy, if needed
#' @family config
#' @export
#' @examples
#' # See http://www.hidemyass.com/proxy-list for a list of public proxies
#' # to test with
#' \donttest{
#' GET("http://had.co.nz", c(use_proxy("64.251.21.73", 8080), verbose()))
#' }
use_proxy <- function(url, port = NULL, username = NULL, password = NULL) {
  if (!is.null(username) || !is.null(password)) {
    proxyuserpwd <- str_c(username, ":", password)
  } else {
    proxyuserpwd <- NULL
  }
  
  if (!is.null(port)) stopifnot(is.numeric(port))
  
  config(proxy = url, proxyuserpwd = proxyuserpwd, proxyport = port)
}

