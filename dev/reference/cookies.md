# Access cookies in a response.

Access cookies in a response.

## Usage

``` r
cookies(x)
```

## Arguments

- x:

  A response.

## See also

[`set_cookies()`](https://httr.r-lib.org/dev/reference/set_cookies.md)
to send cookies in request.

## Examples

``` r
if (FALSE) { # \dontrun{
r <- GET("http://httpbin.org/cookies/set", query = list(a = 1, b = 2))
cookies(r)
} # }
```
