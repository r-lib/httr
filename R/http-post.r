# Need to make it easy to upload files from local paths.
# Same for PUT
#' @inheritParams GET
POST <- function(url = NULL, params = NULL, ..., config = list(), handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("POST", hu$handle, hu$url, params = params, config = config)
}


# OPTIONS ? 
# From Homer:
# POST_file <- function(file, ...){
#  with_body(slurp(file), {
#    with_headers(content-type="mulitpart/form-data", {
#      POST(...)
#    })
#  })
# }
# 
# The idea is that common (but not core) functionality like sending
# static files, HTTP authentication, or encoding as base 64 can be done
# once as 'middleware', which you can wrap around your existing code for
# making requests.

