# Generate an oauth2.0 token.

This is the final object in the OAuth dance - it encapsulates the app,
the endpoint, other parameters and the received credentials. It is a
reference class so that it can be seamlessly updated (e.g. using
`$refresh()`) when access expires.

## Usage

``` r
oauth2.0_token(
  endpoint,
  app,
  scope = NULL,
  user_params = NULL,
  type = NULL,
  use_oob = getOption("httr_oob_default"),
  oob_value = NULL,
  as_header = TRUE,
  use_basic_auth = FALSE,
  cache = getOption("httr_oauth_cache"),
  config_init = list(),
  client_credentials = FALSE,
  credentials = NULL,
  query_authorize_extra = list()
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

- as_header:

  If `TRUE`, the default, configures the token to add itself to the
  bearer header of subsequent requests. If `FALSE`, configures the token
  to add itself as a url parameter of subsequent requests.

- use_basic_auth:

  if `TRUE` use http basic authentication to retrieve the token. Some
  authorization servers require this. If `FALSE`, the default, retrieve
  the token by including the app key and secret in the request body.

- cache:

  A logical value or a string. `TRUE` means to cache using the default
  cache file `.httr-oauth`, `FALSE` means don't cache, and `NA` means to
  guess using some sensible heuristics. A string means use the specified
  path as the cache file.

- config_init:

  Additional configuration settings sent to
  [`POST()`](https://httr.r-lib.org/reference/POST.md), e.g.
  [`user_agent()`](https://httr.r-lib.org/reference/user_agent.md).

- client_credentials:

  Default to `FALSE`. Set to `TRUE` to use *Client Credentials Grant*
  instead of *Authorization Code Grant*. See
  <https://www.rfc-editor.org/rfc/rfc6749#section-4.4>.

- credentials:

  Advanced use only: allows you to completely customise token
  generation.

- query_authorize_extra:

  Default to [`list()`](https://rdrr.io/r/base/list.html). Set to named
  list holding query parameters to append to initial auth page query.
  Useful for some APIs.

## Value

A `Token2.0` reference class (RC) object.

## Details

See [`Token()`](https://httr.r-lib.org/reference/Token-class.md) for
full details about the token object, and the caching policies used to
store credentials across sessions.

## See also

Other OAuth:
[`oauth1.0_token()`](https://httr.r-lib.org/reference/oauth1.0_token.md),
[`oauth_app()`](https://httr.r-lib.org/reference/oauth_app.md),
[`oauth_endpoint()`](https://httr.r-lib.org/reference/oauth_endpoint.md),
[`oauth_service_token()`](https://httr.r-lib.org/reference/oauth_service_token.md)
