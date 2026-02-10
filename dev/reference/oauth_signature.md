# Generate oauth signature.

For advanced use only. Occassionally needed for sites that use some
components of the OAuth spec, but not all of them (e.g. 2-legged oauth)

## Usage

``` r
oauth_signature(
  url,
  method = "GET",
  app,
  token = NULL,
  token_secret = NULL,
  private_key = NULL,
  other_params = NULL
)

oauth_header(info)
```

## Arguments

- url, method:

  Url and http method of request.

- app:

  [`oauth_app()`](https://httr.r-lib.org/dev/reference/oauth_app.md)
  object representing application.

- token, token_secret:

  OAuth token and secret.

- other_params:

  Named argument providing additional parameters (e.g. `oauth_callback`
  or `oauth_body_hash`).

## Value

A list of oauth parameters.
