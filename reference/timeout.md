# Set maximum request time.

Set maximum request time.

## Usage

``` r
timeout(seconds)
```

## Arguments

- seconds:

  number of seconds to wait for a response until giving up. Can not be
  less than 1 ms.

## Details

This timeout is passed on to
[`curl::handle_setopt()`](https://jeroen.r-universe.dev/curl/reference/handle.html).
See there and
[`curl::curl_options()`](https://jeroen.r-universe.dev/curl/reference/curl_options.html)
for more details.

## See also

Other config:
[`add_headers()`](https://httr.r-lib.org/reference/add_headers.md),
[`authenticate()`](https://httr.r-lib.org/reference/authenticate.md),
[`config()`](https://httr.r-lib.org/reference/config.md),
[`set_cookies()`](https://httr.r-lib.org/reference/set_cookies.md),
[`use_proxy()`](https://httr.r-lib.org/reference/use_proxy.md),
[`user_agent()`](https://httr.r-lib.org/reference/user_agent.md),
[`verbose()`](https://httr.r-lib.org/reference/verbose.md)

## Examples

``` r
if (FALSE) { # \dontrun{
GET("http://httpbin.org/delay/3", timeout(1))
GET("http://httpbin.org/delay/1", timeout(2))
} # }
```
