# Check for an http error.

Check for an http error.

## Usage

``` r
http_error(x, ...)
```

## Arguments

- x:

  Object to check. Default methods are provided for strings (which
  perform an [`HEAD()`](https://httr.r-lib.org/reference/HEAD.md)
  request), responses, and integer status codes.

- ...:

  Other arguments passed on to methods.

## Value

`TRUE` if the request fails (status code 400 or above), otherwise
`FALSE`.

## See also

Other response methods:
[`content()`](https://httr.r-lib.org/reference/content.md),
[`http_status()`](https://httr.r-lib.org/reference/http_status.md),
[`response()`](https://httr.r-lib.org/reference/response.md),
[`stop_for_status()`](https://httr.r-lib.org/reference/stop_for_status.md)

## Examples

``` r
if (FALSE) { # \dontrun{
# You can pass a url:
http_error("http://www.google.com")
http_error("http://httpbin.org/status/404")

# Or a request
r <- GET("http://httpbin.org/status/201")
http_error(r)
} # }

# Or an (integer) status code
http_error(200L)
#> [1] FALSE
http_error(404L)
#> [1] TRUE
```
