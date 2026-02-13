# Retry a request until it succeeds.

Safely retry a request until it succeeds, as defined by the
`terminate_on` parameter, which by default means a response for which
[`http_error()`](https://httr.r-lib.org/reference/http_error.md) is
`FALSE`. Will also retry on error conditions raised by the underlying
curl code, but if the last retry still raises one, `RETRY` will raise it
again with [`stop()`](https://rdrr.io/r/base/stop.html). It is designed
to be kind to the server: after each failure randomly waits up to twice
as long. (Technically it uses exponential backoff with jitter, using the
approach outlined in
<https://aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/>.)
If the server returns status code 429 and specifies a `retry-after`
value, that value will be used instead, unless it's smaller than
`pause_min`.

## Usage

``` r
RETRY(
  verb,
  url = NULL,
  config = list(),
  ...,
  body = NULL,
  encode = c("multipart", "form", "json", "raw"),
  times = 3,
  pause_base = 1,
  pause_cap = 60,
  pause_min = 1,
  handle = NULL,
  quiet = FALSE,
  terminate_on = NULL,
  terminate_on_success = TRUE
)
```

## Arguments

- verb:

  Name of verb to use.

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

- times:

  Maximum number of requests to attempt.

- pause_base, pause_cap:

  This method uses exponential back-off with full jitter - this means
  that each request will randomly wait between `pause_min` and
  `pause_base * 2 ^ attempt` seconds, up to a maximum of `pause_cap`
  seconds.

- pause_min:

  Minimum time to wait in the backoff; generally only necessary if you
  need pauses less than one second (which may not be kind to the server,
  use with caution!).

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

- quiet:

  If `FALSE`, will print a message displaying how long until the next
  request.

- terminate_on:

  Optional vector of numeric HTTP status codes that if found on the
  response will terminate the retry process. If `NULL`, will keep
  retrying while
  [`http_error()`](https://httr.r-lib.org/reference/http_error.md) is
  `TRUE` for the response.

- terminate_on_success:

  If `TRUE`, the default, this will automatically terminate when the
  request is successful, regardless of the value of `terminate_on`.

## Value

The last response. Note that if the request doesn't succeed after
`times` times this will be a failed request, i.e. you still need to use
[`stop_for_status()`](https://httr.r-lib.org/reference/stop_for_status.md).

## Examples

``` r
if (FALSE) { # \dontrun{
# Succeeds straight away
RETRY("GET", "http://httpbin.org/status/200")
# Never succeeds
RETRY("GET", "http://httpbin.org/status/500")
# Invalid hostname generates curl error condition and is retried but eventually
# raises an error condition.
RETRY("GET", "http://invalidhostname/")
} # }
```
