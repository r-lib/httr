#' Maintain a pool of handles.
#'
#' The handle pool is used to automatically reuse Curl handles for the same
#' scheme/host/port combination. This ensures that the http session is
#' automatically reused, and cookies are maintained across requests to a site
#' without user intervention.
#'
#' @format An environment.
#' @keywords internal
handle_pool <- new.env(hash = TRUE, parent = emptyenv())

handle_name <- function(url) {
  build_url(parse_url(url)[c("scheme", "hostname", "port")])
}

#' @export
#' @rdname handle_pool
handle_find <- function(url) {
  name <- handle_name(url)
  if (exists(name, handle_pool)) {
    handle <- handle_pool[[name]]
  } else {
    handle <- handle(name)
    handle_pool[[name]] <- handle
  }

  handle
}

#' @export
#' @rdname handle_pool
handle_reset <- function(url) {
  name <- handle_name(url)
  if (exists(name, envir = handle_pool)) {
    rm(list = name, envir = handle_pool)
  }
}
