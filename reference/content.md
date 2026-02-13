# Extract content from a request.

There are currently three ways to retrieve the contents of a request: as
a raw object (`as = "raw"`), as a character vector, (`as = "text"`), and
as parsed into an R object where possible, (`as = "parsed"`). If `as` is
not specified, `content` does its best to guess which output is most
appropriate.

## Usage

``` r
content(x, as = NULL, type = NULL, encoding = NULL, ...)
```

## Arguments

- x:

  request object

- as:

  desired type of output: `raw`, `text` or `parsed`. `content` attempts
  to automatically figure out which one is most appropriate, based on
  the content-type.

- type:

  MIME type (aka internet media type) used to override the content type
  returned by the server. See
  <https://en.wikipedia.org/wiki/Internet_media_type> for a list of
  common types.

- encoding:

  For text, overrides the charset or the Latin1 (ISO-8859-1) default, if
  you know that the server is returning the incorrect encoding as the
  charset in the content-type. Use for text and parsed outputs.

- ...:

  Other parameters passed on to the parsing functions, if
  `as = "parsed"`

## Value

For "raw", a raw vector.

For "text", a character vector of length 1. The character vector is
always re-encoded to UTF-8. If this encoding fails (usually because the
page declares an incorrect encoding), `content()` will return `NA`.

For "auto", a parsed R object.

## Details

`content` currently knows about the following mime types:

- `text/html`:
  [`xml2::read_html()`](http://xml2.r-lib.org/reference/read_xml.md)

- `text/xml`:
  [`xml2::read_xml()`](http://xml2.r-lib.org/reference/read_xml.md)

- `text/csv`:
  [`readr::read_csv()`](https://readr.tidyverse.org/reference/read_delim.html)

- `text/tab-separated-values`:
  [`readr::read_tsv()`](https://readr.tidyverse.org/reference/read_delim.html)

- `application/json`:
  [`jsonlite::fromJSON()`](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html)

- `application/x-www-form-urlencoded`: `parse_query`

- `image/jpeg`:
  [`jpeg::readJPEG()`](https://rdrr.io/pkg/jpeg/man/readJPEG.html)

- `image/png`:
  [`png::readPNG()`](https://rdrr.io/pkg/png/man/readPNG.html)

`as = "parsed"` is provided as a convenience only: if the type you are
trying to parse is not available, use `as = "text"` and parse yourself.

## WARNING

When using `content()` in a package, DO NOT use on `as = "parsed"`.
Instead, check the mime-type is what you expect, and then parse
yourself. This is safer, as you will fail informatively if the API
changes, and you will protect yourself against changes to httr.

## See also

Other response methods:
[`http_error()`](https://httr.r-lib.org/reference/http_error.md),
[`http_status()`](https://httr.r-lib.org/reference/http_status.md),
[`response()`](https://httr.r-lib.org/reference/response.md),
[`stop_for_status()`](https://httr.r-lib.org/reference/stop_for_status.md)

## Examples

``` r
if (FALSE) { # \dontrun{
r <- POST("http://httpbin.org/post", body = list(a = 1, b = 2))
content(r) # automatically parses JSON
cat(content(r, "text"), "\n") # text content
content(r, "raw") # raw bytes from server

rlogo <- content(GET("https://httpbin.org/image/png"))
plot(0:1, 0:1, type = "n")
rasterImage(rlogo, 0, 0, 1, 1)
} # }
```
