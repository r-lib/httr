handle_url <- function(handle = NULL, url = NULL, ...) {
  if (is.null(url) && is.null(handle)) {
    stop("Must specify at least one of url or handle")
  }

  if (is.null(handle))  handle <- handle_find(url)
  if (is.null(url))     url <- handle$url

  # If named components in ..., modify the url
  new <- named(list(...))
  if (length(new) > 0 || is.url(url)) {
    old <- parse_url(url)
    url <- build_url(modifyList(old, new))
  }

  list(handle = handle, url = url)
}
