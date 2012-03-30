# Need to make it easy to upload files from local paths.
# Same for PUT

#' Post file to a server.
#'
#' @inheritParams GET
#' @param body Named of list of elements to go in the body of the post file.
#' @export
POST <- function(url = NULL, config = list(), body = NULL, ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("POST", hu$handle, hu$url, body = body, config = config)
}

# Three options for POST bodies:
#  * raw content which server interprets
#  * multipart/form-data: like mime, multiple named sections
#  * application/x-www-form-urlencoded: url escaped params concatenated 

is.connection <- function(x) inherit(x, "connection")
# If is.connection(x) - base64 encode data and send as is
# If is.raw(x) or is.character(x) and length(x) == 1 send as is
# If is.raw(x) or is.character(x) and length(x) > 1 throw error
# If is.list(x), 
#   separate character/raw vs. connections
#
# Alternative is to have separate files and fields - but then still need
# some way of sending raw bodies

# encode_multipart argument?
#  - if TRUE, use multipart encoding
#  - if FALSE, use urlencoding

# https://github.com/kennethreitz/requests/blob/develop/requests/packages/urllib3/filepost.py
# https://github.com/kennethreitz/requests/blob/develop/requests/packages/urllib3/request.py#L82
