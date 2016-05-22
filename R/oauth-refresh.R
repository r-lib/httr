# Refresh an OAuth 2.0 credential.
#
# Refreshes the given token, and returns a new credential with a
# valid access_token. Based on:
# https://developers.google.com/accounts/docs/OAuth2InstalledApp#refresh
refresh_oauth2.0 <- function(endpoint, app, credentials, user_params = NULL,
                             use_basic_auth = FALSE) {
  if (is.null(credentials$refresh_token)) {
    stop("Refresh token not available", call. = FALSE)
  }

  refresh_url <- endpoint$access
  req_params <- list(
      refresh_token = credentials$refresh_token,
      client_id = app$key,
      grant_type = "refresh_token")

  if (! is.null(user_params)) {
    req_params <- utils::modifyList(user_params, req_params)
  }

  if (isTRUE(use_basic_auth)) {
    response <- POST(refresh_url, body = req_params, encode = "form",
      authenticate(app$key, app$secret, type = "basic"))
  } else {
    req_params$client_secret <- app$secret
    response <- POST(refresh_url, body = req_params, encode = "form")
  }

  if (known_oauth2.0_error(response)) {
    warning("Unable to refresh token", call. = FALSE)
    return(NULL)
  }
  stop_for_status(response)

  refresh_data <- content(response)
  utils::modifyList(credentials, refresh_data)
}
