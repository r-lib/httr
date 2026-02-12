# VERB a url.

Use an arbitrary verb.

## Usage

``` r
VERB(
  verb,
  url = NULL,
  config = list(),
  ...,
  body = NULL,
  encode = c("multipart", "form", "json", "raw"),
  handle = NULL
)
```

## Arguments

- verb:

  Name of verb to use.

- url:

  the url of the page to retrieve

- config:

  Additional configuration settings such as http authentication
  ([`authenticate()`](https://httr.r-lib.org/dev/reference/authenticate.md)),
  additional headers
  ([`add_headers()`](https://httr.r-lib.org/dev/reference/add_headers.md)),
  cookies
  ([`set_cookies()`](https://httr.r-lib.org/dev/reference/set_cookies.md))
  etc. See [`config()`](https://httr.r-lib.org/dev/reference/config.md)
  for full details and list of helpers.

- ...:

  Further named parameters, such as `query`, `path`, etc, passed on to
  [`modify_url()`](https://httr.r-lib.org/dev/reference/modify_url.md).
  Unnamed parameters will be combined with
  [`config()`](https://httr.r-lib.org/dev/reference/config.md).

- body:

  One of the following:

  - `FALSE`: No body. This is typically not used with `POST`, `PUT`, or
    `PATCH`, but can be useful if you need to send a bodyless request
    (like `GET`) with `VERB()`.

  - `NULL`: An empty body

  - `""`: A length 0 body

  - `upload_file("path/")`: The contents of a file. The mime type will
    be guessed from the extension, or can be supplied explicitly as the
    second argument to
    [`upload_file()`](https://httr.r-lib.org/dev/reference/upload_file.md)

  - A character or raw vector: sent as is in body. Use
    [`content_type()`](https://httr.r-lib.org/dev/reference/content_type.md)
    to tell the server what sort of data you are sending.

  - A named list: See details for encode.

- encode:

  If the body is a named list, how should it be encoded? Can be one of
  form (application/x-www-form-urlencoded), multipart,
  (multipart/form-data), or json (application/json).

  For "multipart", list elements can be strings or objects created by
  [`upload_file()`](https://httr.r-lib.org/dev/reference/upload_file.md).
  For "form", elements are coerced to strings and escaped, use
  [`I()`](https://rdrr.io/r/base/AsIs.html) to prevent double-escaping.
  For "json", parameters are automatically "unboxed" (i.e. length 1
  vectors are converted to scalars). To preserve a length 1 vector as a
  vector, wrap in [`I()`](https://rdrr.io/r/base/AsIs.html). For "raw",
  either a character or raw vector. You'll need to make sure to set the
  [`content_type()`](https://httr.r-lib.org/dev/reference/content_type.md)
  yourself.

- handle:

  The handle to use with this request. If not supplied, will be
  retrieved and reused from the
  [`handle_pool()`](https://httr.r-lib.org/dev/reference/handle_pool.md)
  based on the scheme, hostname and port of the url. By default httr
  requests to the same scheme/host/port combo. This substantially
  reduces connection time, and ensures that cookies are maintained over
  multiple requests to the same host. See
  [`handle_pool()`](https://httr.r-lib.org/dev/reference/handle_pool.md)
  for more details.

## Value

A [`response()`](https://httr.r-lib.org/dev/reference/response.md)
object.

## See also

Other http methods:
[`BROWSE()`](https://httr.r-lib.org/dev/reference/BROWSE.md),
[`DELETE()`](https://httr.r-lib.org/dev/reference/DELETE.md),
[`GET()`](https://httr.r-lib.org/dev/reference/GET.md),
[`HEAD()`](https://httr.r-lib.org/dev/reference/HEAD.md),
[`PATCH()`](https://httr.r-lib.org/dev/reference/PATCH.md),
[`POST()`](https://httr.r-lib.org/dev/reference/POST.md),
[`PUT()`](https://httr.r-lib.org/dev/reference/PUT.md)

## Examples

``` r
r <- VERB(
  "PROPFIND", "http://svn.r-project.org/R/tags/",
  add_headers(depth = 1), verbose()
)
stop_for_status(r)
content(r)
#> {xml_document}
#> <multistatus xmlns:D="DAV:">
#>  [1] <D:response xmlns:V="http://subversion.tigris.org/xmlns/dav/" x ...
#>  [2] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#>  [3] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#>  [4] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#>  [5] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#>  [6] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#>  [7] <D:response xmlns:V="http://subversion.tigris.org/xmlns/dav/" x ...
#>  [8] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#>  [9] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#> [10] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#> [11] <D:response xmlns:V="http://subversion.tigris.org/xmlns/dav/" x ...
#> [12] <D:response xmlns:V="http://subversion.tigris.org/xmlns/dav/" x ...
#> [13] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#> [14] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#> [15] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#> [16] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#> [17] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#> [18] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#> [19] <D:response xmlns:S="http://subversion.tigris.org/xmlns/svn/" x ...
#> [20] <D:response xmlns:V="http://subversion.tigris.org/xmlns/dav/" x ...
#> ...

if (FALSE) { # \dontrun{
VERB("POST", url = "http://httpbin.org/post")
VERB("POST", url = "http://httpbin.org/post", body = "foobar")
} # }
```
