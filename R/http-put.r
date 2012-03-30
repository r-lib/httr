PUT <- function(url, content, ...) {
  url <- modify_url(url, ...)
  getURLContent(url,
    customrequest = "PUT",
    postfields = content,
    postfieldsize = str_length(content)
  )
}
