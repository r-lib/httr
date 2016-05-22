#' Send a DELETE request.
#'
#' @section RFC2616:
#'
#' The DELETE method requests that the origin server delete the resource
#' identified by the Request-URI. This method MAY be overridden by human
#' intervention (or other means) on the origin server. The client cannot be
#' guaranteed that the operation has been carried out, even if the status code
#' returned from the origin server indicates that the action has been
#' completed successfully. However, the server SHOULD NOT indicate success
#' unless, at the time the response is given, it intends to delete the
#' resource or move it to an inaccessible location.
#'
#' A successful response SHOULD be 200 (OK) if the response includes an entity
#' describing the status, 202 (Accepted) if the action has not yet been
#' enacted, or 204 (No Content) if the action has been enacted but the
#' response does not include an entity.
#'
#' If the request passes through a cache and the Request-URI identifies one or
#' more currently cached entities, those entries SHOULD be treated as stale.
#' Responses to this method are not cacheable.
#'
#' @inheritParams GET
#' @inheritParams POST
#' @family http methods
#' @export
#' @examples
#' DELETE("http://httpbin.org/delete")
#' POST("http://httpbin.org/delete")
DELETE <- function(url = NULL, config = list(), ...,
                   body = NULL, encode = c("multipart", "form", "json", "raw"),
                   handle = NULL) {
  hu <- handle_url(handle, url, ...)
  req <- request_build("DELETE", hu$url, body_config(body, match.arg(encode)),
    as.request(config), ...)
  request_perform(req, hu$handle$handle)
}
