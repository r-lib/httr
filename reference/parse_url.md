# Parse and build urls according to RFC3986.

See <https://www.rfc-editor.org/rfc/rfc3986> for details of parsing
algorithm.

## Usage

``` r
parse_url(url)

build_url(url)
```

## Arguments

- url:

  For `parse_url` a character vector (of length 1) to parse into
  components; for `build_url` a list of components to turn back into a
  string.

## Value

a list containing:

- scheme

- hostname

- port

- path

- params

- fragment

- query, a list

- username

- password

## Examples

``` r
parse_url("http://google.com/")
#> Url: http://google.com/
parse_url("http://google.com:80/")
#> Url: http://google.com:80/
parse_url("http://google.com:80/?a=1&b=2")
#> Url: http://google.com:80/?a=1&b=2

url <- parse_url("http://google.com/")
url$scheme <- "https"
url$query <- list(q = "hello")
build_url(url)
#> [1] "https://google.com/?q=hello"
```
