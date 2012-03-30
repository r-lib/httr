DELETE <- function(url, content, ...) {
  url <- modify_url(url, ...)
  getURLContent(url,
    customrequest = "DELETE",
    postfields = content,
    postfieldsize = str_length(content)
  )
}
