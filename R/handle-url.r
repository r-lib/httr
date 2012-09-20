handle_url <- function(handle = NULL, url = NULL, ...) {
  if (!xor(is.null(url), is.null(handle))) {
    stop("Must specify exactly one of url or handle")
  }

  if (is.null(handle))  handle <- find_handle(url)
  if (is.null(url))     url <- handle$url

  url <- modify_url(url, ...)

  list(handle = handle, url = url)
}
