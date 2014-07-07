#' Set cookies.
#'
#' @param ... a named cookie values
#' @param .cookies a named character vector
#' @export
#' @family config
#' @seealso \code{\link{cookies}()} to see cookies in response.
#' @examples
#' set_cookies(a = 1, b = 2)
#' set_cookies(.cookies = c(a = "1", b = "2"))
#'
#' GET("http://httpbin.org/cookies")
#' GET("http://httpbin.org/cookies", set_cookies(a = 1, b = 2))
set_cookies <- function(..., .cookies = character(0)) {
  cookies <- c(..., .cookies)
  stopifnot(is.character(cookies))

  cookies_str <- vapply(cookies, RCurl::curlEscape, FUN.VALUE = character(1))

  cookie <- paste0(names(cookies), cookies_str, sep = "=", collapse = ";")

  config(cookie = cookie)
}

#' Access cookies in a response.
#'
#' @seealso \code{\link{set_cookies}()} to send cookies in request.
#' @param x A response.
#' @examples
#' r <- GET("http://httpbin.org/cookies/set", query = list(a = 1, b = 2))
#' cookies(r)
#' @export
cookies <- function(x) UseMethod("cookies")

#' @export
cookies.response <- function(x) x$cookies

#' @export
cookies.handle <- function(x) {
  raw <- RCurl::getCurlInfo(x$handle, "cookielist")[[1]]
  if (length(raw) == 0) return(list())

  parsed <- read.delim(text = raw, sep = "\t", header = FALSE,
    stringsAsFactors = FALSE)
  names(parsed) <- c("domain", "tailmatch", "path", "secure", "expires", "name",
    "value")

  setNames(as.list(parsed$value), parsed$name)
}
