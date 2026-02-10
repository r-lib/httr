# Extract the content type of a response

Extract the content type of a response

## Usage

``` r
http_type(x)
```

## Arguments

- x:

  A response

## Value

A string giving the complete mime type, with all parameters stripped
off.

## Examples

``` r
if (FALSE) { # \dontrun{
r1 <- GET("http://httpbin.org/image/png")
http_type(r1)
headers(r1)[["Content-Type"]]

r2 <- GET("http://httpbin.org/ip")
http_type(r2)
headers(r2)[["Content-Type"]]
} # }
```
