# Walk the user through the OAuth2 dance without a local webserver.

This performs a similar function to
[`oauth_listener()`](https://httr.r-lib.org/reference/oauth_listener.md),
but without running a local webserver. This manual process can be useful
in situations where the user is remotely accessing the machine outside a
browser (say via ssh) or when it's not possible to successfully receive
a callback (such as when behind a firewall).

## Usage

``` r
oauth_exchanger(request_url)
```

## Arguments

- request_url:

  the url to provide to the user

## Details

This function should generally not be called directly by the user.
