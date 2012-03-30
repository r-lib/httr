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

