# Need to make it easy to upload files from local paths.
# Same for PUT

#' Post file to a server.
#'
#' @inheritParams GET
#' @param body Named of list of elements to go in the body of the post file.
#' @export
POST <- function(url = NULL, body = NULL, ..., config = list(), handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("POST", hu$handle, hu$url, body = body, config = config)
}

# Three options for POST bodies:
#  * raw content which server interprets
#  * multipart/form-data: like mime, multiple named sections
#  * application/x-www-form-urlencoded: url escaped params concatenated 
