# Does the request have content associated with it?

Does the request have content associated with it?

## Usage

``` r
has_content(x)
```

## Examples

``` r
if (FALSE) { # \dontrun{
has_content(POST("http://httpbin.org/post", body = FALSE))
has_content(HEAD("http://httpbin.org/headers"))
} # }
```
