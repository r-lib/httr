#' Set cookies.
#'
#' @param ... a named cookie values
#' @param .cookies a named character vector
#' @export
#' @family config
#' @examples
#' set_cookies(a = 1, b = 2)
#' set_cookies(.cookies = c(a = "1", b = "2"))
#'
#' GET("http://httpbin.org/cookies")
#' GET("http://httpbin.org/cookies", set_cookies(a = 1, b = 2))
set_cookies <- function(..., .cookies = character(0)) {
  cookies <- c(..., .cookies)
  stopifnot(is.character(cookies))

  cookies_str <- vapply(cookies, curlEscape, FUN.VALUE = character(1))

  cookie <- str_c(names(cookies), cookies_str, sep = "=", collapse = ";")

  config(cookie = cookie)
}
