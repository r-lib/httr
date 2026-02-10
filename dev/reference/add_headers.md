# Add additional headers to a request.

Wikipedia provides a useful list of common http headers:
<https://en.wikipedia.org/wiki/List_of_HTTP_header_fields>.

## Usage

``` r
add_headers(..., .headers = character())
```

## Arguments

- ...:

  named header values. To stop an existing header from being set, pass
  an empty string: `""`.

- .headers:

  a named character vector

## See also

[`accept()`](https://httr.r-lib.org/dev/reference/content_type.md) and
[`content_type()`](https://httr.r-lib.org/dev/reference/content_type.md)
for convenience functions for setting accept and content-type headers.

Other config:
[`authenticate()`](https://httr.r-lib.org/dev/reference/authenticate.md),
[`config()`](https://httr.r-lib.org/dev/reference/config.md),
[`set_cookies()`](https://httr.r-lib.org/dev/reference/set_cookies.md),
[`timeout()`](https://httr.r-lib.org/dev/reference/timeout.md),
[`use_proxy()`](https://httr.r-lib.org/dev/reference/use_proxy.md),
[`user_agent()`](https://httr.r-lib.org/dev/reference/user_agent.md),
[`verbose()`](https://httr.r-lib.org/dev/reference/verbose.md)

## Examples

``` r
add_headers(a = 1, b = 2)
#> <request>
#> Headers:
#> * a: 1
#> * b: 2
add_headers(.headers = c(a = "1", b = "2"))
#> <request>
#> Headers:
#> * a: 1
#> * b: 2

if (FALSE) { # \dontrun{
GET("http://httpbin.org/headers")

# Add arbitrary headers
GET(
  "http://httpbin.org/headers",
  add_headers(version = version$version.string)
)

# Override default headers with empty strings
GET("http://httpbin.org/headers", add_headers(Accept = ""))
} # }
```
