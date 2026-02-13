# Open specified url in browser.

(This isn't really a http verb, but it seems to follow the same format).

## Usage

``` r
BROWSE(url = NULL, config = list(), ..., handle = NULL)
```

## Arguments

- url:

  the url of the page to retrieve

- config:

  All configuration options are ignored because the request is handled
  by the browser, not RCurl.

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

## Details

Only works in interactive sessions.

## See also

Other http methods:
[`DELETE()`](https://httr.r-lib.org/reference/DELETE.md),
[`GET()`](https://httr.r-lib.org/reference/GET.md),
[`HEAD()`](https://httr.r-lib.org/reference/HEAD.md),
[`PATCH()`](https://httr.r-lib.org/reference/PATCH.md),
[`POST()`](https://httr.r-lib.org/reference/POST.md),
[`PUT()`](https://httr.r-lib.org/reference/PUT.md),
[`VERB()`](https://httr.r-lib.org/reference/VERB.md)

## Examples

``` r
BROWSE("http://google.com")
#> Please point your browser to the following url: 
#> http://google.com
BROWSE("http://had.co.nz")
#> Please point your browser to the following url: 
#> http://had.co.nz
```
