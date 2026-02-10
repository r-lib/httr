# Create a webserver to listen for OAuth callback.

This opens a web browser pointing to `request_url`, and opens a
webserver on port 1410 to listen to the reponse. The redirect url should
either be set previously (during the OAuth authentication dance) or
supplied as a parameter to the url. See
[`oauth1.0_token()`](https://httr.r-lib.org/dev/reference/oauth1.0_token.md)
and
[`oauth2.0_token()`](https://httr.r-lib.org/dev/reference/oauth2.0_token.md)
for examples of both techniques.

## Usage

``` r
oauth_listener(request_url, is_interactive = interactive())
```

## Arguments

- request_url:

  the url to send the browser to

- is_interactive:

  DEPRECATED

## Details

This function should not normally be called directly by the user.
