# Create a handle tied to a particular host.

This handle preserves settings and cookies across multiple requests. It
is the foundation of all requests performed through the httr package,
although it will mostly be hidden from the user.

## Usage

``` r
handle(url, cookies = TRUE)
```

## Arguments

- url:

  full url to site

- cookies:

  DEPRECATED

## Note

Because of the way argument dispatch works in R, using handle() in the
http methods (See [`GET()`](https://httr.r-lib.org/reference/GET.md))
will cause problems when trying to pass configuration arguments (See
examples below). Directly specifying the handle when using http methods
is not recommended in general, since the selection of the correct handle
is taken care of when the user passes an url (See
[`handle_pool()`](https://httr.r-lib.org/reference/handle_pool.md)).

## Examples

``` r
handle("http://google.com")
#> Host: http://google.com <NA>
handle("https://google.com")
#> Host: https://google.com <NA>

h <- handle("http://google.com")
GET(handle = h)
#> Response [http://www.google.com/]
#>   Date: 2026-09-01 14:21
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#>   Size: 83.5 kB
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
# Should see cookies sent back to server
GET(handle = h, config = verbose())
#> Response [http://www.google.com/]
#>   Date: 2026-09-01 14:21
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#>   Size: 83.5 kB
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

h <- handle("http://google.com", cookies = FALSE)
#> Warning: Cookies argument is deprecated
GET(handle = h)$cookies
#>                  domain flag path secure          expiration name
#> 1 #HttpOnly_.google.com TRUE    /  FALSE 2027-03-03 14:21:34  NID
#>                                                                                                                                                                                                                                                                                                                                                  value
#> 1 CvwBCAESrgEBp2sxrhIBOKj73UK5iLCCmvFDupZ5lEel0fuymaLbj5kMQ6Gu0e703GpKbgCr_GK2Ng5OfBjEsR-0c776sq6V5QWDzfmIaCmR_ybrwDTTMCqrfE8OPnV-bsuTqEon7j4oTClqqWXrGbyqoQeDBqooZq0oXvtWbh67sFgv_O8T_0hyrOZbeXyamXWnO4WF16SL2SXeL5QrMZePQz6TI64WyWxKyyYI9qTqOv8PLpAoATJFAQ4r3hHnyW_jh_iKiStb1oFX1urgNt6SQWLtYDa9iF31JIZEhofA_6_QIt-EtbOZkOAi3SWxNtuafdhDfvHevd4QO9cG
if (FALSE) { # \dontrun{
# Using the preferred way of configuring the http methods
# will not work when using handle():
GET(handle = h, timeout(10))
# Passing named arguments will work properly:
GET(handle = h, config = list(timeout(10), add_headers(Accept = "")))
} # }
```
