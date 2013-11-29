#' Refresh an OAuth 2.0 credential.
#'
#' Refreshes the given token, and returns a new credential with a
#' valid access_token. Based on:
#'   https://developers.google.com/accounts/docs/OAuth2InstalledApp#refresh
#'
#' @family OAuth
#' @param endpoint
#' @param app
#' @param credential
#' @return a new credential
#' @export
refresh_oauth2.0 <- function(endpoint, app, credential) {
  if (is.null(credential$refresh_token)) {
    stop("Invalid credential: missing refresh token")
  }
  refresh_url <- endpoint$access
  body <- list(
    refresh_token = credential$refresh_token,
    client_id = app$key,
    client_secret = app$secret,
    grant_type = "refresh_token"
    )

  response <- POST(refresh_url, body = body, multipart = FALSE)
  if (response$status_code != 200) {
    stop("Failed to refresh access token")
  }
  refresh_data <- content(response)
  modifyList(credential, refresh_data)
}
