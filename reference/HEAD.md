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
[`BROWSE()`](https://httr.r-lib.org/reference/BROWSE.md),
[`DELETE()`](https://httr.r-lib.org/reference/DELETE.md),
[`GET()`](https://httr.r-lib.org/reference/GET.md),
[`PATCH()`](https://httr.r-lib.org/reference/PATCH.md),
[`POST()`](https://httr.r-lib.org/reference/POST.md),
[`PUT()`](https://httr.r-lib.org/reference/PUT.md),
[`VERB()`](https://httr.r-lib.org/reference/VERB.md)

## Examples

``` r
HEAD("http://google.com")
#> Response [http://www.google.com/]
#>   Date: 2026-09-01 14:21
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#> <EMPTY BODY>
headers(HEAD("http://google.com"))
#> $`content-type`
#> [1] "text/html; charset=ISO-8859-1"
#> 
#> $`content-security-policy-report-only`
#> [1] "object-src 'none';base-uri 'self';script-src 'nonce-4aGvu7eR7Xdq7xfO-3gzTA' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp"
#> 
#> $date
#> [1] "Tue, 01 Sep 2026 14:21:27 GMT"
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
#> [1] "Tue, 01 Sep 2026 14:21:27 GMT"
#> 
#> $`cache-control`
#> [1] "private"
#> 
#> $`set-cookie`
#> [1] "__Secure-STRP=ANmZwa3txqzzd6_jPSNrKspTXslmvbvRTDQIRxR-pL-yuZSG9xP5i2Qdzxl0Fw6NjEqolRvPg9AD2C-zN9waWLHVZmOCTYT3Dxlq; expires=Tue, 01-Sep-2026 14:26:27 GMT; path=/; domain=.google.com; Secure; SameSite=strict"
#> 
#> $`set-cookie`
#> [1] "AEC=AdJVEas0yDpd2IjP07XFJzlLh3B5XLIp4Cl7uimXwzxbydAmKZSxDU8vBg; expires=Sun, 28-Feb-2027 14:21:27 GMT; path=/; domain=.google.com; Secure; HttpOnly; SameSite=lax"
#> 
#> $`transfer-encoding`
#> [1] "chunked"
#> 
#> attr(,"class")
#> [1] "insensitive" "list"       
```
