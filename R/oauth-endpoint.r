#' @include url.r
NULL

#' Describe an OAuth endpoint.
#'
#' See \code{\link{oauth_endpoints}} for a list of popular OAuth endpoints
#' baked into httr.
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
#'   
#' oauth_endpoints
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

is.oauth_endpoint <- function(x) inherits(x, "oauth_endpoint")

#' @export
print.oauth_endpoint <- function(x, ...) {
  cat("<oauth_endpoint>\n")
  cat("  request:   ", x$request, "\n", sep = "")
  cat("  authorize: ", x$authorize, "\n", sep = "")
  cat("  access:    ", x$access, "\n", sep = "")
}  

#' Popular oauth endpoints.
#' 
#' This list provides some common OAuth endpoints.
#' 
#' @export
oauth_endpoints <- list(
  linkedin = oauth_endpoint(base_url = "https://api.linkedin.com/uas/oauth",
    "requestToken", "authorize", "accessToken"),
  twitter = oauth_endpoint(base_url = "http://api.twitter.com/oauth",
    "request_token", "authenticate", "access_token"),
  vimeo = oauth_endpoint(base_url = "http://vimeo.com/oauth",
    "request_token", "authorize", "access_token"),
  google = oauth_endpoint(base_url = "https://accounts.google.com/o/oauth2",
    NULL, "auth", "token"),
  facebook = oauth_endpoint(
    authorize = "https://www.facebook.com/dialog/oauth",
    access = "https://graph.facebook.com/oauth/access_token"),
  github = oauth_endpoint(base_url = "https://github.com/login/oauth",
    NULL, "authorize", "access_token")
)
