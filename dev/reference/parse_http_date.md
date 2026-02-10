# Parse and print http dates.

As defined in RFC2616,
<https://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.3>, there
are three valid formats:

- Sun, 06 Nov 1994 08:49:37 GMT ; RFC 822, updated by RFC 1123

- Sunday, 06-Nov-94 08:49:37 GMT ; RFC 850, obsoleted by RFC 1036

- Sun Nov 6 08:49:37 1994 ; ANSI C's asctime() format

## Usage

``` r
parse_http_date(x, failure = structure(NA_real_, class = "Date"))

http_date(x)
```

## Arguments

- x:

  For `parse_http_date`, a character vector of strings to parse. All
  elements must be of the same type.

  For `http_date`, a `POSIXt` vector.

- failure:

  What to return on failure?

## Value

A POSIXct object if succesful, otherwise `failure`

## Examples

``` r
parse_http_date("Sun, 06 Nov 1994 08:49:37 GMT")
#> [1] "1994-11-06 08:49:37 GMT"
parse_http_date("Sunday, 06-Nov-94 08:49:37 GMT")
#> [1] "1994-11-06 08:49:37 GMT"
parse_http_date("Sun Nov  6 08:49:37 1994")
#> [1] "1994-11-06 08:49:37 GMT"

http_date(Sys.time())
#> [1] "Tue, 10 Feb 2026 17:01:19 GMT"
```
