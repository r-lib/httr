#' VERB a url.
#'
#' Use an arbitrary verb.
#'
#' @inherit GET params return
#' @inheritParams POST
#' @param verb Name of verb to use.
#' @family http methods
#' @export
#' @examples
#' r <- VERB(
#'   "PROPFIND", "http://svn.r-project.org/R/tags/",
#'   add_headers(depth = 1), verbose()
#' )
#' stop_for_status(r)
#' content(r)
#' 
#' VERB("POST", url = "http://httpbin.org/post")
#' VERB("POST", url = "http://httpbin.org/post", body = "foobar")
VERB <- function(verb, url = NULL, config = list(), ...,
                 body = NULL, encode = c("multipart", "form", "json", "raw"),
                 handle = NULL) {
  hu <- handle_url(handle, url, ...)
  req <- request_build(verb, hu$url, body_config(body, match.arg(encode)), config, ...)
  request_perform(req, hu$handle$handle)
}
