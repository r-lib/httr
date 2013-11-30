#' Describe an OAuth endpoint.
#'
#' @param request url used to request initial (unauthenticated) token.
#'   If using OAuth1.0, leave as \code{NULL}.
#' @param authorize url to send client to for authorisation
#' @param access url used to exchange unauthenticated for authenticated token.
#' @param base_url option url to use as base for \code{request},
#'   \code{authorize} and \code{access} urls.
#' @family OAuth
#' @export
#' @examples
#' linkedin <- oauth_endpoint("requestToken", "authorize", "accessToken",
#'   base_url = "https://api.linkedin.com/uas/oauth")
#' github <- oauth_endpoint(NULL, "authorize", "access_token",
#'   base_url = "https://github.com/login/oauth")
#' facebook <- oauth_endpoint(
#'   authorize = "https://www.facebook.com/dialog/oauth",
#'   access = "https://graph.facebook.com/oauth/access_token")
oauth_endpoint <- function(request = NULL, authorize, access, base_url = NULL) {
  if (is.null(base_url)) {
    return(endpoint(request, authorize, access))
  }
  
  path <- parse_url(base_url)$path
  endpoint(
    modify_url(base_url, path = file.path(path, request)),
    modify_url(base_url, path = file.path(path, authorize)),
    modify_url(base_url, path = file.path(path, access))
  )
}

endpoint <- function(request, authorize, access) {
  structure(list(request = request, authorize = authorize, access = access),
    class = "oauth_endpoint")
}

is.oauth_endpoint <- function(x) inherits(x, "endpoint")

#' @export
print.oauth_endpoint <- function(x, ...) {
  cat("<oauth_endpoint>\n")
  cat("  request:   ", x$request, "\n", sep = "")
  cat("  authorize: ", x$authorize, "\n", sep = "")
  cat("  access:    ", x$access, "\n", sep = "")
}  
