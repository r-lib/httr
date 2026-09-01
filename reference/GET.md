# GET a url.

GET a url.

## Usage

``` r
GET(url = NULL, config = list(), ..., handle = NULL)
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

The GET method means retrieve whatever information (in the form of an
entity) is identified by the Request-URI. If the Request-URI refers to a
data-producing process, it is the produced data which shall be returned
as the entity in the response and not the source text of the process,
unless that text happens to be the output of the process.

The semantics of the GET method change to a "conditional GET" if the
request message includes an If-Modified-Since, If-Unmodified-Since,
If-Match, If-None-Match, or If-Range header field. A conditional GET
method requests that the entity be transferred only under the
circumstances described by the conditional header field(s). The
conditional GET method is intended to reduce unnecessary network usage
by allowing cached entities to be refreshed without requiring multiple
requests or transferring data already held by the client.

The semantics of the GET method change to a "partial GET" if the request
message includes a Range header field. A partial GET requests that only
part of the entity be transferred, as described in
<https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35> The
partial GET method is intended to reduce unnecessary network usage by
allowing partially-retrieved entities to be completed without
transferring data already held by the client.

## See also

Other http methods:
[`BROWSE()`](https://httr.r-lib.org/reference/BROWSE.md),
[`DELETE()`](https://httr.r-lib.org/reference/DELETE.md),
[`HEAD()`](https://httr.r-lib.org/reference/HEAD.md),
[`PATCH()`](https://httr.r-lib.org/reference/PATCH.md),
[`POST()`](https://httr.r-lib.org/reference/POST.md),
[`PUT()`](https://httr.r-lib.org/reference/PUT.md),
[`VERB()`](https://httr.r-lib.org/reference/VERB.md)

## Examples

``` r
GET("http://google.com/")
#> Response [http://www.google.com/]
#>   Date: 2026-09-01 14:21
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#>   Size: 83.2 kB
#> <!doctype html><html itemscope="" itemtype="http://schema.org/WebPag...
#> var h=this||self;var k=/#|$/;function l(a,c){var e=a.search(k);a:{va...
#> function t(a,c,e,b,f){var d="";c.search("&ei=")===-1&&(d="&ei="+p(b)...
#> document.documentElement.addEventListener("submit",function(b){var a...
#> try{
#> _._F_toggles_initialize=function(a){(typeof globalThis!=="undefined"...
#> /*
#> 
#>  Copyright The Closure Library Authors.
#>  SPDX-License-Identifier: Apache-2.0
#> ...
if (FALSE) { # \dontrun{
GET("http://google.com/", path = "search")
GET("http://google.com/", path = "search", query = list(q = "ham"))
} # }

# See what GET is doing with httpbin.org
if (FALSE) { # \dontrun{
url <- "http://httpbin.org/get"
GET(url)
GET(url, add_headers(a = 1, b = 2))
GET(url, set_cookies(a = 1, b = 2))
GET(url, add_headers(a = 1, b = 2), set_cookies(a = 1, b = 2))
GET(url, authenticate("username", "password"))
GET(url, verbose())
} # }

# You might want to manually specify the handle so you can have multiple
# independent logins to the same website.
if (FALSE) { # \dontrun{
google <- handle("http://google.com")
GET(handle = google, path = "/")
GET(handle = google, path = "search")
} # }
```
