#' Maintain a pool of handles.
#'
#' The handle pool is used to automatically reuse Curl handles for the same
#' scheme/host/port combination.  This ensures that the http session is 
#' automatically reused, and cookies are maintained across requests to a site
#' without user intervention.
#'
#' @format An environment.
#' @keywords internal
handle_pool <- NULL
empty_pool <- function() {
  handle_pool <<- new.env(hash = TRUE, parent = emptyenv())
}
empty_pool()

find_handle <- function(url) {
  handle_name <- build_url(parse_url(url)[c("scheme", "hostname", "port")])
  
  if (exists(handle_name, handle_pool)) {
    handle <- handle_pool[[handle_name]]
  } else {
    handle <- handle(handle_name)
    handle_pool[[handle_name]] <- handle  
  }
  
  handle
}

