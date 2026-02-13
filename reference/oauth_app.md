# Create an OAuth application.

See the demos for instructions on how to create an OAuth app for
linkedin, twitter, vimeo, facebook, github and google. When wrapping an
API from a package, the author may want to include a default app to
facilitate early and casual use and then provide a method for heavy or
advanced users to supply their own app or key and secret.

## Usage

``` r
oauth_app(appname, key, secret = NULL, redirect_uri = oauth_callback())
```

## Arguments

- appname:

  name of the application. This is not used for OAuth, but is used to
  make it easier to identify different applications.

- key:

  consumer key, also sometimes called the client ID

- secret:

  consumer secret, also sometimes called the client secret. Despite its
  name, this does not necessarily need to be protected like a password,
  i.e. the user still has to authenticate themselves and grant the app
  permission to access resources on their behalf. For example, see
  Google's docs for [OAuth2 for installed
  applications](https://developers.google.com/identity/protocols/oauth2).

- redirect_uri:

  The URL that user will be redirected to after authorisation is
  complete. You should generally leave this as the default unless you're
  using a non-standard auth flow (like with shiny).

## See also

Other OAuth:
[`oauth1.0_token()`](https://httr.r-lib.org/reference/oauth1.0_token.md),
[`oauth2.0_token()`](https://httr.r-lib.org/reference/oauth2.0_token.md),
[`oauth_endpoint()`](https://httr.r-lib.org/reference/oauth_endpoint.md),
[`oauth_service_token()`](https://httr.r-lib.org/reference/oauth_service_token.md)

## Examples

``` r
if (FALSE) { # \dontrun{
google_app <- oauth_app(
  "google",
  key = "123456789.apps.googleusercontent.com",
  secret = "abcdefghijklmnopqrstuvwxyz"
)
} # }
```
