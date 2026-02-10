# Set user agent.

Override the default RCurl user agent of `NULL`

## Usage

``` r
user_agent(agent)
```

## Arguments

- agent:

  string giving user agent

## See also

Other config:
[`add_headers()`](https://httr.r-lib.org/dev/reference/add_headers.md),
[`authenticate()`](https://httr.r-lib.org/dev/reference/authenticate.md),
[`config()`](https://httr.r-lib.org/dev/reference/config.md),
[`set_cookies()`](https://httr.r-lib.org/dev/reference/set_cookies.md),
[`timeout()`](https://httr.r-lib.org/dev/reference/timeout.md),
[`use_proxy()`](https://httr.r-lib.org/dev/reference/use_proxy.md),
[`verbose()`](https://httr.r-lib.org/dev/reference/verbose.md)

## Examples

``` r
if (FALSE) { # \dontrun{
GET("http://httpbin.org/user-agent")
GET("http://httpbin.org/user-agent", user_agent("httr"))
} # }
```
