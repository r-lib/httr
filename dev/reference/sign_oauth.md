# Sign an OAuth request

Deprecated. Instead create a config object directly using
`config(token = my_token)`.

## Usage

``` r
sign_oauth1.0(app, token = NULL, token_secret = NULL, as_header = TRUE, ...)

sign_oauth2.0(access_token, as_header = TRUE)
```
