# Set cookies.

Set cookies.

## Usage

``` r
set_cookies(..., .cookies = character(0))
```

## Arguments

- ...:

  a named cookie values

- .cookies:

  a named character vector

## See also

[`cookies()`](https://httr.r-lib.org/dev/reference/cookies.md) to see
cookies in response.

Other config:
[`add_headers()`](https://httr.r-lib.org/dev/reference/add_headers.md),
[`authenticate()`](https://httr.r-lib.org/dev/reference/authenticate.md),
[`config()`](https://httr.r-lib.org/dev/reference/config.md),
[`timeout()`](https://httr.r-lib.org/dev/reference/timeout.md),
[`use_proxy()`](https://httr.r-lib.org/dev/reference/use_proxy.md),
[`user_agent()`](https://httr.r-lib.org/dev/reference/user_agent.md),
[`verbose()`](https://httr.r-lib.org/dev/reference/verbose.md)

## Examples

``` r
set_cookies(a = 1, b = 2)
#> <request>
#> Options:
#> * cookie: a=1;b=2
set_cookies(.cookies = c(a = "1", b = "2"))
#> <request>
#> Options:
#> * cookie: a=1;b=2

if (FALSE) { # \dontrun{
GET("http://httpbin.org/cookies")
GET("http://httpbin.org/cookies", set_cookies(a = 1, b = 2))
} # }
```
