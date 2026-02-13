# Set content-type and accept headers.

These are convenient wrappers aroud
[`add_headers()`](https://httr.r-lib.org/reference/add_headers.md).

## Usage

``` r
content_type(type)

content_type_json()

content_type_xml()

accept(type)

accept_json()

accept_xml()
```

## Arguments

- type:

  A mime type or a file extension. If a file extension (i.e. starts with
  `.`) will guess the mime type using
  [`mime::guess_type()`](https://rdrr.io/pkg/mime/man/guess_type.html).

## Details

`accept_json`/`accept_xml` and `content_type_json`/`content_type_xml`
are useful shortcuts to ask for json or xml responses or tell the server
you are sending json/xml.

## Examples

``` r
if (FALSE) { # \dontrun{
GET("http://httpbin.org/headers")

GET("http://httpbin.org/headers", accept_json())
GET("http://httpbin.org/headers", accept("text/csv"))
GET("http://httpbin.org/headers", accept(".doc"))

GET("http://httpbin.org/headers", content_type_xml())
GET("http://httpbin.org/headers", content_type("text/csv"))
GET("http://httpbin.org/headers", content_type(".xml"))
} # }
```
