#' Get url HEADers.
#'
#' @section RFC2616:
#' The HEAD method is identical to GET except that the server MUST NOT return
#' a message-body in the response. The metainformation contained in the HTTP
#' headers in response to a HEAD request SHOULD be identical to the
#' information sent in response to a GET request. This method can be used for
#' obtaining metainformation about the entity implied by the request without
#' transferring the entity-body itself. This method is often used for testing
#' hypertext links for validity, accessibility, and recent modification.
#'
#' The response to a HEAD request MAY be cacheable in the sense that the
#' information contained in the response MAY be used to update a previously
#' cached entity from that resource. If the new field values indicate that the
#' cached entity differs from the current entity (as would be indicated by a
#' change in Content-Length, Content-MD5, ETag or Last-Modified), then the
#' cache MUST treat the cache entry as stale.
#'
#' @inheritParams GET
#' @family http methods
#' @export
#' @examples
#' HEAD("http://google.com")
#' HEAD("http://google.com")$headers
HEAD <- function(url = NULL, config = list(), ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  config <- make_config(config, ..., list(nobody = TRUE))

  make_request("head", hu$handle, hu$url, config)
}
