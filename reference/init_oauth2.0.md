# Retrieve OAuth 2.0 access token.

See demos for use.

## Usage

``` r
init_oauth2.0(
  endpoint,
  app,
  scope = NULL,
  user_params = NULL,
  type = NULL,
  use_oob = getOption("httr_oob_default"),
  oob_value = NULL,
  is_interactive = interactive(),
  use_basic_auth = FALSE,
  config_init = list(),
  client_credentials = FALSE,
  query_authorize_extra = list()
)

oauth2.0_authorize_url(
  endpoint,
  app,
  scope,
  redirect_uri = app$redirect_uri,
  state = nonce(),
  query_extra = list()
)

oauth2.0_access_token(
  endpoint,
  app,
  code,
  user_params = NULL,
  type = NULL,
  use_basic_auth = FALSE,
  redirect_uri = app$redirect_uri,
  client_credentials = FALSE,
  config = list()
)
```

## Arguments

- endpoint:

  An OAuth endpoint, created by
  [`oauth_endpoint()`](https://httr.r-lib.org/reference/oauth_endpoint.md)

- app:

  An OAuth consumer application, created by
  [`oauth_app()`](https://httr.r-lib.org/reference/oauth_app.md)

- scope:

  a character vector of scopes to request.

- user_params:

  Named list holding endpoint specific parameters to pass to the server
  when posting the request for obtaining or refreshing the access token.

- type:

  content type used to override incorrect server response

- use_oob:

  if FALSE, use a local webserver for the OAuth dance. Otherwise,
  provide a URL to the user and prompt for a validation code. Defaults
  to the of the `"httr_oob_default"` default, or `TRUE` if `httpuv` is
  not installed.

- oob_value:

  if provided, specifies the value to use for the redirect_uri parameter
  when retrieving an authorization URL. Defaults to
  "urn:ietf:wg:oauth:2.0:oob". Requires `use_oob = TRUE`.

- is_interactive:

  DEPRECATED

- use_basic_auth:

  if `TRUE` use http basic authentication to retrieve the token. Some
  authorization servers require this. If `FALSE`, the default, retrieve
  the token by including the app key and secret in the request body.

- config_init:

  Additional configuration settings sent to
  [`POST()`](https://httr.r-lib.org/reference/POST.md), e.g.
  [`user_agent()`](https://httr.r-lib.org/reference/user_agent.md).

- client_credentials:

  Default to `FALSE`. Set to `TRUE` to use *Client Credentials Grant*
  instead of *Authorization Code Grant*. See
  <https://www.rfc-editor.org/rfc/rfc6749#section-4.4>.

- query_authorize_extra:

  Default to [`list()`](https://rdrr.io/r/base/list.html). Set to named
  list holding query parameters to append to initial auth page query.
  Useful for some APIs.

- query_extra:

  See `query_authorize_extra`
