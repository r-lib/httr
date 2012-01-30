# persist_cookies(path, {}, cleanup = TRUE)
# cookies -- read from
# cookiejar -- write to

set_cookies <- function(..., .cookies = character(0)) {
  cookies <- c(..., .cookies)
  stopifnot(is.character(cookies))
  
  cookies_str <- vapply(cookies, curlEscape, FUN.VALUE = character(1))
  
  cookie <- str_c(names(cookies), cookies_str, sep = "=", collapse = ";")
  
  config(cookie = cookie)
}

