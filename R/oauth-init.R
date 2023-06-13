#' Retrieve OAuth 1.0 access token.
#'
#' See demos for use.
#'
#' @param endpoint An OAuth endpoint, created by [oauth_endpoint()]
#' @param app An OAuth consumer application, created by
#'    [oauth_app()]
#' @param permission optional, a string of permissions to ask for.
#' @param is_interactive DEPRECATED
#' @param private_key Optional, a key provided by [openssl::read_key()].
#'   Used for signed OAuth 1.0.
#' @export
#' @keywords internal
init_oauth1.0 <- function(endpoint, app, permission = NULL,
                          is_interactive = interactive(),
                          private_key = NULL) {
  oauth_sig <- function(url, method, token = NULL, token_secret = NULL, private_key = NULL, ...) {
    oauth_header(oauth_signature(url, method, app, token, token_secret, private_key,
      other_params = c(list(...), oauth_callback = oauth_callback())
    ))
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
    permission = "read"
  ))
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
#'   code. Defaults to the of the `"httr_oob_default"` default,
#'   or `TRUE` if `httpuv` is not installed.
#' @param oob_value if provided, specifies the value to use for the redirect_uri
#'   parameter when retrieving an authorization URL. Defaults to "urn:ietf:wg:oauth:2.0:oob".
#'   Requires `use_oob = TRUE`.
#' @param use_basic_auth if `TRUE` use http basic authentication to
#'   retrieve the token. Some authorization servers require this.
#'   If `FALSE`, the default, retrieve the token by including the
#'   app key and secret in the request body.
#' @param config_init Additional configuration settings sent to
#'   [POST()], e.g. [user_agent()].
#' @param client_credentials Default to `FALSE`. Set to `TRUE` to use
#'   *Client Credentials Grant* instead of *Authorization
#'   Code Grant*. See <https://www.rfc-editor.org/rfc/rfc6749#section-4.4>.
#' @param query_authorize_extra Default to `list()`. Set to named list
#'   holding query parameters to append to initial auth page query. Useful for
#'   some APIs.
#' @export
#' @keywords internal
init_oauth2.0 <- function(endpoint, app, scope = NULL,
                          user_params = NULL,
                          type = NULL,
                          use_oob = getOption("httr_oob_default"),
                          oob_value = NULL,
                          is_interactive = interactive(),
                          use_basic_auth = FALSE,
                          config_init = list(),
                          client_credentials = FALSE,
                          query_authorize_extra = list()) {
  scope <- check_scope(scope)
  use_oob <- check_oob(use_oob, oob_value)
  if (use_oob) {
    redirect_uri <- if (!is.null(oob_value)) oob_value else "urn:ietf:wg:oauth:2.0:oob"
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
      state = state,
      query_extra = query_authorize_extra
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
    use_basic_auth = use_basic_auth,
    config = config_init
  )
}

#' @export
#' @importFrom utils modifyList
#' @rdname init_oauth2.0
#' @param query_extra See `query_authorize_extra`
oauth2.0_authorize_url <- function(endpoint, app, scope,
                                   redirect_uri = app$redirect_uri,
                                   state = nonce(),
                                   query_extra = list()) {
  # TODO might need to put some params before and some after...

  query_extra <- query_extra %||% list() # i.e. make list if query_extra is null

  default_query <- list(
    client_id = app$key,
    scope = scope,
    redirect_uri = redirect_uri,
    response_type = "code",
    state = state
  )

  query <- compact(modifyList(default_query, query_extra))

  modify_url(
    endpoint$authorize,
    query = query
  )
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
                                  config = list()) {
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
  paste(x, collapse = " ")
}

# gargle needs to access (pseudo-)OOB flow from Google Colab, so we need to
# be able to use the "rlang_interactive" option to signal that we are in
# an environment that is interactive (enough) to complete this flow.
is_interactive <- function() {
  getOption("rlang_interactive") %||% interactive()
}

check_oob <- function(use_oob, oob_value = NULL) {
  if (!is.logical(use_oob) || length(use_oob) != 1) {
    stop("`use_oob` must be a length-1 logical vector", call. = FALSE)
  }

  if (!use_oob && !is_installed("httpuv")) {
    message("httpuv not installed, defaulting to out-of-band authentication")
    use_oob <- TRUE
  }

  if (use_oob) {
    if (!is_interactive()) {
      stop(
        "Can only use oob authentication in an interactive session",
        call. = FALSE
      )
    }
  }

  if (!is.null(oob_value)) {
    if (!use_oob) {
      stop(
        "Can only use custom oob value if use_oob is enabled",
        call. = FALSE
      )
    }
  }

  use_oob
}


oauth_authorize <- function(url, oob = FALSE) {
  if (oob) {
    oauth_exchanger(url)$code
  } else {
    oauth_listener(url)$code
  }
}
