# Describe an OAuth endpoint.

See
[`oauth_endpoints()`](https://httr.r-lib.org/reference/oauth_endpoints.md)
for a list of popular OAuth endpoints baked into httr.

## Usage

``` r
oauth_endpoint(request = NULL, authorize, access, ..., base_url = NULL)
```

## Arguments

- request:

  url used to request initial (unauthenticated) token. If using
  OAuth2.0, leave as `NULL`.

- authorize:

  url to send client to for authorisation. Set to `NULL` if not needed

- access:

  url used to exchange unauthenticated for authenticated token.

- ...:

  other additional endpoints.

- base_url:

  option url to use as base for `request`, `authorize` and `access`
  urls.

## See also

Other OAuth:
[`oauth1.0_token()`](https://httr.r-lib.org/reference/oauth1.0_token.md),
[`oauth2.0_token()`](https://httr.r-lib.org/reference/oauth2.0_token.md),
[`oauth_app()`](https://httr.r-lib.org/reference/oauth_app.md),
[`oauth_service_token()`](https://httr.r-lib.org/reference/oauth_service_token.md)

## Examples

``` r
linkedin <- oauth_endpoint("requestToken", "authorize", "accessToken",
  base_url = "https://api.linkedin.com/uas/oauth"
)
github <- oauth_endpoint(NULL, "authorize", "access_token",
  base_url = "https://github.com/login/oauth"
)
facebook <- oauth_endpoint(
  authorize = "https://www.facebook.com/dialog/oauth",
  access = "https://graph.facebook.com/oauth/access_token"
)

oauth_endpoints
#> function (name) 
#> {
#>     switch(name, linkedin = oauth_endpoint(base_url = "https://www.linkedin.com/uas/oauth2", 
#>         authorize = "authorization", access = "accessToken"), 
#>         twitter = oauth_endpoint(base_url = "https://api.twitter.com/oauth", 
#>             request = "request_token", authorize = "authenticate", 
#>             access = "access_token"), vimeo = oauth_endpoint(base_url = "https://api.vimeo.com/oauth", 
#>             request = "request_token", authorize = "authorize", 
#>             access = "access_token"), yahoo = oauth_endpoint(base_url = "https://api.login.yahoo.com/oauth2", 
#>             request = "get_request_token", authorize = "request_auth", 
#>             access = "get_token"), google = oauth_endpoint(base_url = "https://accounts.google.com/o/oauth2", 
#>             authorize = "auth", access = "token", validate = "https://www.googleapis.com/oauth2/v1/tokeninfo", 
#>             revoke = "revoke"), tumblr = oauth_endpoint(base_url = "http://www.tumblr.com/oauth/", 
#>             request = "request_token", authorize = "authorize", 
#>             access = "access_token"), facebook = oauth_endpoint(authorize = "https://www.facebook.com/dialog/oauth", 
#>             access = "https://graph.facebook.com/oauth/access_token"), 
#>         github = oauth_endpoint(base_url = "https://github.com/login/oauth", 
#>             request = NULL, authorize = "authorize", access = "access_token"), 
#>         azure = oauth_endpoint(base_url = "https://login.windows.net/common/oauth2", 
#>             authorize = "authorize", access = "token"), meetup = oauth_endpoint(base_url = "https://secure.meetup.com/oauth2", 
#>             authorize = "authorize", access = "access"), stop("Unknown endpoint", 
#>             call. = FALSE))
#> }
#> <bytecode: 0x55d3e8177040>
#> <environment: namespace:httr>
```
