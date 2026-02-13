# POST file to a server.

POST file to a server.

## Usage

``` r
POST(
  url = NULL,
  config = list(),
  ...,
  body = NULL,
  encode = c("multipart", "form", "json", "raw"),
  handle = NULL
)
```

## Arguments

- url:

  the url of the page to retrieve

- config:

  Additional configuration settings such as http authentication
  ([`authenticate()`](https://httr.r-lib.org/reference/authenticate.md)),
  additional headers
  ([`add_headers()`](https://httr.r-lib.org/reference/add_headers.md)),
  cookies
  ([`set_cookies()`](https://httr.r-lib.org/reference/set_cookies.md))
  etc. See [`config()`](https://httr.r-lib.org/reference/config.md) for
  full details and list of helpers.

- ...:

  Further named parameters, such as `query`, `path`, etc, passed on to
  [`modify_url()`](https://httr.r-lib.org/reference/modify_url.md).
  Unnamed parameters will be combined with
  [`config()`](https://httr.r-lib.org/reference/config.md).

- body:

  One of the following:

  - `FALSE`: No body. This is typically not used with `POST`, `PUT`, or
    `PATCH`, but can be useful if you need to send a bodyless request
    (like `GET`) with
    [`VERB()`](https://httr.r-lib.org/reference/VERB.md).

  - `NULL`: An empty body

  - `""`: A length 0 body

  - `upload_file("path/")`: The contents of a file. The mime type will
    be guessed from the extension, or can be supplied explicitly as the
    second argument to
    [`upload_file()`](https://httr.r-lib.org/reference/upload_file.md)

  - A character or raw vector: sent as is in body. Use
    [`content_type()`](https://httr.r-lib.org/reference/content_type.md)
    to tell the server what sort of data you are sending.

  - A named list: See details for encode.

- encode:

  If the body is a named list, how should it be encoded? Can be one of
  form (application/x-www-form-urlencoded), multipart,
  (multipart/form-data), or json (application/json).

  For "multipart", list elements can be strings or objects created by
  [`upload_file()`](https://httr.r-lib.org/reference/upload_file.md).
  For "form", elements are coerced to strings and escaped, use
  [`I()`](https://rdrr.io/r/base/AsIs.html) to prevent double-escaping.
  For "json", parameters are automatically "unboxed" (i.e. length 1
  vectors are converted to scalars). To preserve a length 1 vector as a
  vector, wrap in [`I()`](https://rdrr.io/r/base/AsIs.html). For "raw",
  either a character or raw vector. You'll need to make sure to set the
  [`content_type()`](https://httr.r-lib.org/reference/content_type.md)
  yourself.

- handle:

  The handle to use with this request. If not supplied, will be
  retrieved and reused from the
  [`handle_pool()`](https://httr.r-lib.org/reference/handle_pool.md)
  based on the scheme, hostname and port of the url. By default httr
  requests to the same scheme/host/port combo. This substantially
  reduces connection time, and ensures that cookies are maintained over
  multiple requests to the same host. See
  [`handle_pool()`](https://httr.r-lib.org/reference/handle_pool.md) for
  more details.

## Value

A [`response()`](https://httr.r-lib.org/reference/response.md) object.

## See also

Other http methods:
[`BROWSE()`](https://httr.r-lib.org/reference/BROWSE.md),
[`DELETE()`](https://httr.r-lib.org/reference/DELETE.md),
[`GET()`](https://httr.r-lib.org/reference/GET.md),
[`HEAD()`](https://httr.r-lib.org/reference/HEAD.md),
[`PATCH()`](https://httr.r-lib.org/reference/PATCH.md),
[`PUT()`](https://httr.r-lib.org/reference/PUT.md),
[`VERB()`](https://httr.r-lib.org/reference/VERB.md)

## Examples

``` r
if (FALSE) { # \dontrun{
b2 <- "http://httpbin.org/post"
POST(b2, body = "A simple text string")
POST(b2, body = list(x = "A simple text string"))
POST(b2, body = list(y = upload_file(system.file("CITATION"))))
POST(b2, body = list(x = "A simple text string"), encode = "json")

# body can also be provided as a json string directly to deal
# with specific case, like an empty element in the json string.
# passing as string directly
POST(b2, body = '{"a":1,"b":{}}', encode = "raw")
# or building the json string before
json_body <- jsonlite::toJSON(list(a = 1, b = NULL), auto_unbox = TRUE)
POST(b2, body = json_body, encode = "raw")

# Various types of empty body:
POST(b2, body = NULL, verbose())
POST(b2, body = FALSE, verbose())
POST(b2, body = "", verbose())
} # }
```
