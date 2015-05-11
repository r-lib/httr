make_request <- function(method, handle, url, config = NULL, body = NULL,
                         refresh = TRUE) {
  method <- toupper(method)
  if (is.null(config)) config <- config()
  stopifnot(is.config(config))
  stopifnot(is.handle(handle))
  stopifnot(is.character(url), length(url) == 1)

  # Sign request, if needed
  token <- opts$token
  if (!is.null(token)) {
    signature <- token$sign(method, url)

    opts <- modify_config(opts, signature$config)
    opts$token <- NULL
    opts$url <- signature$url
  } else {
    opts$url <- url
  }

  # Extract writer object
  writer <- opts$writer
  opts$writer <- NULL

  # Perform request and capture output
  res <- perform(handle, writer, method, opts, body)

  needs_refresh <- refresh && res$status_code == 401L &&
    !is.null(config$token) && config$token$can_refresh()
  if (needs_refresh) {
    message("Auto-refreshing stale OAuth token.")
    config$token$refresh()

    make_request(method, handle, url, config = config, body = body,
      refresh = FALSE)
  } else {
    res
  }
}
