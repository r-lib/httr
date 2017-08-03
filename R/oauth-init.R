#' Retrieve OAuth 1.0 access token.
#'
#' See demos for use.
#'
#' @param endpoint An OAuth endpoint, created by \code{\link{oauth_endpoint}}
#' @param app An OAuth consumer application, created by
#'    \code{\link{oauth_app}}
#' @param permission optional, a string of permissions to ask for.
#' @param is_interactive DEPRECATED
#' @param private_key Optional, a key provided by \code{\link[openssl]{read_key}}.
#'   Used for signed OAuth 1.0.
#' @export
#' @keywords internal
init_oauth1.0 <- function(endpoint, app, permission = NULL,
                          is_interactive = interactive(),
                          private_key = NULL) {

  oauth_sig <- function(url, method, token = NULL, token_secret = NULL, private_key = NULL, ...) {
    oauth_header(oauth_signature(url, method, app, token, token_secret, private_key,
        other_params = c(list(...), oauth_callback = oauth_callback())))
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
  verifier <- oauth_listener(authorize_url, is_interactive)
  verifier <- verifier$oauth_verifier %||% verifier[[1]]

  # 3. Request access token
  response <- POST(endpoint$access,
    oauth_sig(endpoint$access, "POST", token, secret, oauth_verifier = verifier, private_key = private_key),
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
#' @param scope a character vector of scopes to request.
#' @param user_params Named list holding endpoint specific parameters to pass to
#'   the server when posting the request for obtaining or refreshing the
#'   access token.
#' @param type content type used to override incorrect server response
#' @param use_oob if FALSE, use a local webserver for the OAuth dance.
#'   Otherwise, provide a URL to the user and prompt for a validation
#'   code. Defaults to the of the \code{"httr_oob_default"} default,
#'   or \code{TRUE} if \code{httpuv} is not installed.
#' @param use_basic_auth if \code{TRUE} use http basic authentication to
#'   retrieve the token. Some authorization servers require this.
#'   If \code{FALSE}, the default, retrieve the token by including the
#'   app key and secret in the request body.
#' @param config_init Additional configuration settings sent to
#'   \code{\link{POST}}, e.g. \code{\link{user_agent}}.
#' @param client_credentials Default to \code{FALSE}. Set to \code{TRUE} to use
#'   \emph{Client Credentials Grant} instead of \emph{Authorization
#'   Code Grant}. See \url{https://tools.ietf.org/html/rfc6749#section-4.4}.
#' @export
#' @keywords internal
init_oauth2.0 <- function(endpoint, app, scope = NULL,
                          user_params = NULL,
                          type = NULL,
                          use_oob = getOption("httr_oob_default"),
                          is_interactive = interactive(),
                          use_basic_auth = FALSE,
                          config_init = list(),
                          client_credentials = FALSE
                         ) {

  scope <- check_scope(scope)
  use_oob <- check_oob(use_oob)

  if (use_oob) {
    redirect_uri <- "urn:ietf:wg:oauth:2.0:oob"
    state <- NULL
  } else {
    redirect_uri <- app$redirect_uri
    state <- nonce()
  }

  # Some Oauth2 grant type not required an authorization request and code
  # (see https://tools.ietf.org/html/rfc6749#section-4.4)
  if (client_credentials) {
    code <- NULL
  } else {
    authorize_url <- oauth2.0_authorize_url(
      endpoint,
      app,
      scope = scope,
      redirect_uri = redirect_uri,
      state = state
    )
    code <- oauth_authorize(authorize_url, use_oob)
  }

  # Use authorisation code to get (temporary) access token
  oauth2.0_access_token(
    endpoint,
    app,
    code = code,
    user_params = user_params,
    type = type,
    redirect_uri = redirect_uri,
    client_credentials = client_credentials,
    config = config_init
  )
}

#' @export
#' @rdname init_oauth2.0
oauth2.0_authorize_url <- function(endpoint, app, scope,
                                   redirect_uri = app$redirect_uri,
                                   state = nonce()
                                   ) {
  modify_url(endpoint$authorize, query = compact(list(
    client_id = app$key,
    scope = scope,
    redirect_uri = redirect_uri,
    response_type = "code",
    state = state)
  ))
}

#' @export
#' @rdname init_oauth2.0
oauth2.0_access_token <- function(endpoint,
                                  app,
                                  code,
                                  user_params = NULL,
                                  type = NULL,
                                  use_basic_auth = FALSE,
                                  redirect_uri = app$redirect_uri,
                                  client_credentials = FALSE,
                                  config = list()
                                  ) {

  req_params <- compact(list(
    client_id = app$key,
    redirect_uri = if (client_credentials) NULL else redirect_uri,
    grant_type = if (client_credentials) "client_credentials" else "authorization_code",
    code = code
  ))

  if (!is.null(user_params)) {
    req_params <- utils::modifyList(user_params, req_params)
  }

  # Send credentials using HTTP Basic or as parameters in the request body
  # See https://tools.ietf.org/html/rfc6749#section-2.3 (Client Authentication)
  if (isTRUE(use_basic_auth)) {
    req <- POST(endpoint$access,
      encode = "form",
      body = req_params,
      authenticate(app$key, app$secret, type = "basic"),
      config = config
    )
  } else {
    req_params$client_secret <- app$secret
    req <- POST(endpoint$access,
      encode = "form",
      body = req_params,
      config = config
    )
  }

  stop_for_status(req, task = "get an access token")
  content(req, type = type)
}


# Parameter checking ------------------------------------------------------

check_scope <- function(x) {
  if (is.null(x)) {
    return(NULL)
  }

  if (!is.character(x)) {
    stop("`scope` must be a character vector", call. = FALSE)
  }
  paste(x, collapse = ' ')
}

check_oob <- function(x) {
  if (!is.logical(x) || length(x) != 1) {
    stop("`use_oob` must be a length-1 logical vector", call. = FALSE)
  }

  if (!x && !is_installed("httpuv")) {
    message("httpuv not installed, defaulting to out-of-band authentication")
    x <- TRUE
  }

  if (x) {
    if (!interactive()) {
      stop(
        "Can only use oob authentication in an interactive session",
        call. = FALSE
      )
    }
  }

  x
}


oauth_authorize <- function(url, oob = FALSE) {
  if (oob) {
    oauth_exchanger(url)$code
  } else {
    oauth_listener(url)$code
  }
}
