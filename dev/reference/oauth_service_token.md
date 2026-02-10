# Generate OAuth token for service accounts.

Service accounts provide a way of using OAuth2 without user
intervention. They instead assume that the server has access to a
private key used to sign requests. The OAuth app is not needed for
service accounts: that information is embedded in the account itself.

## Usage

``` r
oauth_service_token(endpoint, secrets, scope = NULL, sub = NULL)
```

## Arguments

- endpoint:

  An OAuth endpoint, created by
  [`oauth_endpoint()`](https://httr.r-lib.org/dev/reference/oauth_endpoint.md)

- secrets:

  Secrets loaded from JSON file, downloaded from console.

- scope:

  a character vector of scopes to request.

- sub:

  The email address of the user for which the application is requesting
  delegated access.

## See also

Other OAuth:
[`oauth1.0_token()`](https://httr.r-lib.org/dev/reference/oauth1.0_token.md),
[`oauth2.0_token()`](https://httr.r-lib.org/dev/reference/oauth2.0_token.md),
[`oauth_app()`](https://httr.r-lib.org/dev/reference/oauth_app.md),
[`oauth_endpoint()`](https://httr.r-lib.org/dev/reference/oauth_endpoint.md)

## Examples

``` r
if (FALSE) { # \dontrun{
endpoint <- oauth_endpoints("google")
secrets <- jsonlite::fromJSON("~/Desktop/httrtest-45693cbfac92.json")
scope <- "https://www.googleapis.com/auth/bigquery.readonly"

token <- oauth_service_token(endpoint, secrets, scope)
} # }
```
