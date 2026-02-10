# Retrieve OAuth 1.0 access token.

See demos for use.

## Usage

``` r
init_oauth1.0(
  endpoint,
  app,
  permission = NULL,
  is_interactive = interactive(),
  private_key = NULL
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

- is_interactive:

  DEPRECATED

- private_key:

  Optional, a key provided by
  [`openssl::read_key()`](https://jeroen.r-universe.dev/openssl/reference/read_key.html).
  Used for signed OAuth 1.0.
