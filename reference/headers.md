# Extract the headers from a response

Extract the headers from a response

## Usage

``` r
headers(x)
```

## Arguments

- x:

  A request object

## See also

[`add_headers()`](https://httr.r-lib.org/reference/add_headers.md) to
send additional headers in a request

## Examples

``` r
if (FALSE) { # \dontrun{
r <- GET("http://httpbin.org/get")
headers(r)
} # }
```
