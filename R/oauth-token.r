#' Retrieve OAuth 1.0 acces token.
#'
#' See demos for use.
#'
#' @param endpoint An OAuth endpoint, created by \code{\link{oauth_endpoint}}
#' @param app An OAuth consumer application, created by
#'    \code{\link{oauth_app}}
#' @param permission optional, a string of permissions to ask for.
#' @export
#' @family OAuth
oauth1.0_token <- function(endpoint, app, permission = NULL) {
  # 1. Get an unauthorised request token
  response <- GET(endpoint$request,
    sign_oauth1.0(app, callback = oauth_callback()))
  stop_for_status(response)
  params <- content(response, type = "application/x-www-form-urlencoded")
  token <- params$oauth_token
  secret <- params$oauth_token_secret

  # 2. Authorise the token
  authorise <- modify_url(endpoint$authorize, query = list(
    oauth_token = token,
    permission = "read"))
  verifier <- oauth_listener(authorise)$oauth_verifier

  # 3. Request access token
  response <- GET(endpoint$access,
    sign_oauth1.0(app, token, secret, verifier = verifier))
  stop_for_status(response)
  content(response, type = "application/x-www-form-urlencoded")
}

#' Retrieve OAuth 2.0 access token.
#'
#' See demos for use.
#'
#' @inheritParams oauth1.0_token
#' @param type content type used to override incorrect server response
#' @param scope a character string of scopes to apply for.
#' @family OAuth
#' @export
oauth2.0_token <- function(endpoint, app, scope = NULL, type = NULL) {
  authorize <- modify_url(endpoint$authorize, query = compact(list(
      client_id = app$key,
      scope = scope,
      redirect_uri = oauth_callback(),
      response_type = "code",
      state = nonce())))
  code <- oauth_listener(authorize)$code

  # Use authorisation code to get (temporary) access token
  req <- POST(endpoint$access,  multipart = FALSE,
    body = list(
      client_id = app$key,
      client_secret = app$secret,
      redirect_uri = oauth_callback(),
      grant_type = "authorization_code",
      code = code))
  content(req, type = type)
}


