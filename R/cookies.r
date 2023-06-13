#' Set cookies.
#'
#' @param ... a named cookie values
#' @param .cookies a named character vector
#' @export
#' @family config
#' @seealso [cookies()] to see cookies in response.
#' @examples
#' set_cookies(a = 1, b = 2)
#' set_cookies(.cookies = c(a = "1", b = "2"))
#'
#' \dontrun{
#' GET("http://httpbin.org/cookies")
#' GET("http://httpbin.org/cookies", set_cookies(a = 1, b = 2))
#' }
set_cookies <- function(..., .cookies = character(0)) {
  cookies <- c(..., .cookies)
  stopifnot(is.character(cookies))

  cookies_str <- vapply(cookies, curl::curl_escape, FUN.VALUE = character(1))

  cookie <- paste(names(cookies), cookies_str, sep = "=", collapse = ";")

  config(cookie = cookie)
}

#' Access cookies in a response.
#'
#' @seealso [set_cookies()] to send cookies in request.
#' @param x A response.
#' @examples
#' \dontrun{
#' r <- GET("http://httpbin.org/cookies/set", query = list(a = 1, b = 2))
#' cookies(r)
#' }
#' @export
cookies <- function(x) UseMethod("cookies")

#' @export
cookies.response <- function(x) x$cookies

#' @export
cookies.handle <- function(x) {
  curl::handle_cookies(x$handle)
}
