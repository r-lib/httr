oauth_header <- function(info) {
  ouath <- str_c("OAuth ", str_c(
    curlEscape(names(info)), "=\"", curlEscape(info), "\"", collapse = ", "))
  add_headers(Authorization = ouath)
}
