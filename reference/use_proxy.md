# Use a proxy to connect to the internet.

Use a proxy to connect to the internet.

## Usage

``` r
use_proxy(url, port = NULL, username = NULL, password = NULL, auth = "basic")
```

## Arguments

- url, port:

  location of proxy

- username, password:

  login details for proxy, if needed

- auth:

  type of HTTP authentication to use. Should be one of the following:
  basic, digest, digest_ie, gssnegotiate, ntlm, any.

## See also

Other config:
[`add_headers()`](https://httr.r-lib.org/reference/add_headers.md),
[`authenticate()`](https://httr.r-lib.org/reference/authenticate.md),
[`config()`](https://httr.r-lib.org/reference/config.md),
[`set_cookies()`](https://httr.r-lib.org/reference/set_cookies.md),
[`timeout()`](https://httr.r-lib.org/reference/timeout.md),
[`user_agent()`](https://httr.r-lib.org/reference/user_agent.md),
[`verbose()`](https://httr.r-lib.org/reference/verbose.md)

## Examples

``` r
# See http://www.hidemyass.com/proxy-list for a list of public proxies
# to test with
# GET("http://had.co.nz", use_proxy("64.251.21.73", 8080), verbose())
```
