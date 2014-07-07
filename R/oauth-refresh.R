# Refresh an OAuth 2.0 credential.
#
# Refreshes the given token, and returns a new credential with a
# valid access_token. Based on:
# https://developers.google.com/accounts/docs/OAuth2InstalledApp#refresh
refresh_oauth2.0 <- function(endpoint, app, credentials) {
  if (is.null(credentials$refresh_token)) {
    stop("Refresh token not available", call. = FALSE)
  }

  refresh_url <- endpoint$access
  body <- list(
    refresh_token = credentials$refresh_token,
    client_id = app$key,
    client_secret = app$secret,
    grant_type = "refresh_token"
  )

  response <- POST(refresh_url, body = body, encode = "form")
  stop_for_status(response)

  refresh_data <- content(response)
  modifyList(credentials, refresh_data)
}
