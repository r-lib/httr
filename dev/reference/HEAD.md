# Get url HEADers.

Get url HEADers.

## Usage

``` r
HEAD(url = NULL, config = list(), ..., handle = NULL)
```

## Arguments

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

## RFC2616

The HEAD method is identical to GET except that the server MUST NOT
return a message-body in the response. The metainformation contained in
the HTTP headers in response to a HEAD request SHOULD be identical to
the information sent in response to a GET request. This method can be
used for obtaining metainformation about the entity implied by the
request without transferring the entity-body itself. This method is
often used for testing hypertext links for validity, accessibility, and
recent modification.

The response to a HEAD request MAY be cacheable in the sense that the
information contained in the response MAY be used to update a previously
cached entity from that resource. If the new field values indicate that
the cached entity differs from the current entity (as would be indicated
by a change in Content-Length, Content-MD5, ETag or Last-Modified), then
the cache MUST treat the cache entry as stale.

## See also

Other http methods:
[`BROWSE()`](https://httr.r-lib.org/dev/reference/BROWSE.md),
[`DELETE()`](https://httr.r-lib.org/dev/reference/DELETE.md),
[`GET()`](https://httr.r-lib.org/dev/reference/GET.md),
[`PATCH()`](https://httr.r-lib.org/dev/reference/PATCH.md),
[`POST()`](https://httr.r-lib.org/dev/reference/POST.md),
[`PUT()`](https://httr.r-lib.org/dev/reference/PUT.md),
[`VERB()`](https://httr.r-lib.org/dev/reference/VERB.md)

## Examples

``` r
HEAD("http://google.com")
#> Response [http://www.google.com/]
#>   Date: 2026-02-12 14:00
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#> <EMPTY BODY>
headers(HEAD("http://google.com"))
#> $`content-type`
#> [1] "text/html; charset=ISO-8859-1"
#> 
#> $`content-security-policy-report-only`
#> [1] "object-src 'none';base-uri 'self';script-src 'nonce-GcJMABsZ1MqrSbtfLMWiVg' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp"
#> 
#> $`reporting-endpoints`
#> [1] "default=\"//www.google.com/httpservice/retry/jserror?ei=Dt2NaZytEfrfkPIP1eSG6A8&cad=crash&error=Page%20Crash&jsel=1\""
#> 
#> $date
#> [1] "Thu, 12 Feb 2026 14:00:46 GMT"
#> 
#> $server
#> [1] "gws"
#> 
#> $`x-xss-protection`
#> [1] "0"
#> 
#> $`x-frame-options`
#> [1] "SAMEORIGIN"
#> 
#> $expires
#> [1] "Thu, 12 Feb 2026 14:00:46 GMT"
#> 
#> $`cache-control`
#> [1] "private"
#> 
#> $`set-cookie`
#> [1] "AEC=AaJma5upMOVkO2Q2X5rHagcZs6tIJ0H1IGhqAgU4ujnxqNvHbWjhM3nWk1E; expires=Tue, 11-Aug-2026 14:00:46 GMT; path=/; domain=.google.com; Secure; HttpOnly; SameSite=lax"
#> 
#> $`transfer-encoding`
#> [1] "chunked"
#> 
#> attr(,"class")
#> [1] "insensitive" "list"       
```
