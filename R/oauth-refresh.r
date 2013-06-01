#' Refresh OAuth 2.0 access token.
#'
#' @param endpoint An OAuth endpoint, created by \code{\link{oauth_endpoint}}
#' @param app An OAuth consumer application, created by
#'    \code{\link{oauth_app}}
#' @param access_token the access token to refresh
#' @param type content type used to override incorrect server response
#' @family OAuth
#' @export
oauth2.0_refresh <- function(endpoint, app, access_token, type = NULL) {
  # Use refresh_token to get a new (temporary) access token
  req <- POST(
    url = endpoint$access,
    multipart = FALSE,
    body = list(
      client_id = app$key,
      client_secret = app$secret,
      grant_type = "refresh_token",
      refresh_token = access_token$refresh_token
    )
  )
  content_out <- content(req, type = type)
  content_out <- c(
    content_out,
    access_token['refresh_token']
  )
  stopifnot(
    length(content_out$expires_in) == 1
  )
  content_out$use_by <- Sys.time() + content_out$expires_in
  content_out
}
