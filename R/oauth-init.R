#' Retrieve OAuth 1.0 access token.
#'
#' See demos for use.
#'
#' @param endpoint An OAuth endpoint, created by \code{\link{oauth_endpoint}}
#' @param app An OAuth consumer application, created by
#'    \code{\link{oauth_app}}
#' @param permission optional, a string of permissions to ask for.
#' @param is_interactive Is the current environment interactive?
#' @param private_key Optional, a key provided by \code{\link[openssl]{read_key}}.
#'   Used for signed OAuth 1.0.
#' @export
#' @keywords internal
init_oauth1.0 <- function(endpoint, app, permission = NULL,
                          is_interactive = interactive(),
                          private_key = NULL) {

  oauth_sig <- function(url, method, token = NULL, token_secret = NULL, private_key = NULL, ...) {
    oauth_header(oauth_signature(url, method, app, token, token_secret, private_key, ...,
      callback = oauth_callback()))
  }

  # 1. Get an unauthorized request token
  response <- POST(endpoint$request, oauth_sig(endpoint$request, "POST", private_key = private_key))
  stop_for_status(response)
  params <- content(response, type = "application/x-www-form-urlencoded")
  token <- params$oauth_token
  secret <- params$oauth_token_secret

  # 2. Authorize the token
  authorize_url <- modify_url(endpoint$authorize, query = list(
    oauth_token = token,
    permission = "read"))
  verifier <- oauth_listener(authorize_url, is_interactive)$oauth_verifier

  # 3. Request access token
  response <- POST(endpoint$access,
    oauth_sig(endpoint$access, "POST", token, secret, verifier = verifier, private_key = private_key),
    body = ""
  )
  stop_for_status(response)
  content(response, type = "application/x-www-form-urlencoded")
}

#' Retrieve OAuth 2.0 access token.
#'
#' See demos for use.
#'
#' @inheritParams init_oauth1.0
#' @param type content type used to override incorrect server response
#' @param scope a character vector of scopes to request.
#' @param user_params Named list holding endpoint specific parameters to pass to
#'     the server when posting the request for obtaining or refreshing the
#'     access token.
#' @param use_oob if FALSE, use a local webserver for the OAuth dance.
#'     Otherwise, provide a URL to the user and prompt for a validation
#'     code. Defaults to the of the \code{"httr_oob_default"} default,
#'     or \code{TRUE} if \code{httpuv} is not installed.
#' @param is_interactive Is the current environment interactive?
#' @param use_basic_auth if \code{TRUE} use http basic authentication to
#'     retrieve the token. Some authorization servers require this.
#'     If \code{FALSE}, the default, retrieve the token by including the
#'     app key and secret in the request body.
#' @export
#' @keywords internal
init_oauth2.0 <- function(endpoint, app, scope = NULL, user_params = NULL,
                          type = NULL, use_oob = getOption("httr_oob_default"),
                          is_interactive = interactive(),
                          use_basic_auth = FALSE) {
  if (!use_oob && !is_installed("httpuv")) {
    message("httpuv not installed, defaulting to out-of-band authentication")
    use_oob <- TRUE
  }

  if (isTRUE(use_oob)) {
    stopifnot(interactive())
    redirect_uri <- "urn:ietf:wg:oauth:2.0:oob"
    state <- NULL
  } else {
    redirect_uri <- oauth_callback()
    state <- nonce()
  }

  scope_arg <- paste(scope, collapse = ' ')

  authorize_url <- modify_url(endpoint$authorize, query = compact(list(
    client_id = app$key,
    scope = scope_arg,
    redirect_uri = redirect_uri,
    response_type = "code",
    state = state)))
  if (isTRUE(use_oob)) {
    code <- oauth_exchanger(authorize_url)$code
  } else {
    code <- oauth_listener(authorize_url, is_interactive)$code
  }

  # Use authorisation code to get (temporary) access token

  # Send credentials using HTTP Basic or as parameters in the request body
  # See https://tools.ietf.org/html/rfc6749#section-2.3 (Client Authentication)
  req_params <- list(
    client_id = app$key,
    redirect_uri = redirect_uri,
    grant_type = "authorization_code",
    code = code)

  if (!is.null(user_params)) {
    req_params <- utils::modifyList(user_params, req_params)
  }

  if (isTRUE(use_basic_auth)) {
    req <- POST(endpoint$access, encode = "form", body = req_params,
      authenticate(app$key, app$secret, type = "basic"))
  } else {
    req_params$client_secret <- app$secret
    req <- POST(endpoint$access, encode = "form", body = req_params)
  }

  stop_for_status(req)
  content(req, type = type)
}
