# Generate an oauth1.0 token.

This is the final object in the OAuth dance - it encapsulates the app,
the endpoint, other parameters and the received credentials.

## Usage

``` r
oauth1.0_token(
  endpoint,
  app,
  permission = NULL,
  as_header = TRUE,
  private_key = NULL,
  cache = getOption("httr_oauth_cache")
)
```

## Arguments

- endpoint:

  An OAuth endpoint, created by
  [`oauth_endpoint()`](https://httr.r-lib.org/dev/reference/oauth_endpoint.md)

- app:

  An OAuth consumer application, created by
  [`oauth_app()`](https://httr.r-lib.org/dev/reference/oauth_app.md)

- permission:

  optional, a string of permissions to ask for.

- as_header:

  If `TRUE`, the default, sends oauth in header. If `FALSE`, adds as
  parameter to url.

- private_key:

  Optional, a key provided by
  [`openssl::read_key()`](https://jeroen.r-universe.dev/openssl/reference/read_key.html).
  Used for signed OAuth 1.0.

- cache:

  A logical value or a string. `TRUE` means to cache using the default
  cache file `.httr-oauth`, `FALSE` means don't cache, and `NA` means to
  guess using some sensible heuristics. A string means use the specified
  path as the cache file.

## Value

A `Token1.0` reference class (RC) object.

## Details

See [`Token()`](https://httr.r-lib.org/dev/reference/Token-class.md) for
full details about the token object, and the caching policies used to
store credentials across sessions.

## See also

Other OAuth:
[`oauth2.0_token()`](https://httr.r-lib.org/dev/reference/oauth2.0_token.md),
[`oauth_app()`](https://httr.r-lib.org/dev/reference/oauth_app.md),
[`oauth_endpoint()`](https://httr.r-lib.org/dev/reference/oauth_endpoint.md),
[`oauth_service_token()`](https://httr.r-lib.org/dev/reference/oauth_service_token.md)
