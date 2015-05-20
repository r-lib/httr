#' VERB a url.
#'
#' Use an arbitrary verb.
#'
#' @inheritParams GET
#' @param verb Name of verb to use.
#' @family http methods
#' @export
#' @examples
#' r <- VERB("PROPFIND", "http://svn.r-project.org/R/tags/",
#'   add_headers(depth = 1), verbose())
#' stop_for_status(r)
#' content(r)
VERB <- function(verb, url = NULL, config = list(), ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  req <- request_build(verb, hu$url, config, ...)
  request_perform(req, hu$handle$handle)
}
