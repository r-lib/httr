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
http methods (See
[`GET()`](https://httr.r-lib.org/dev/reference/GET.md)) will cause
problems when trying to pass configuration arguments (See examples
below). Directly specifying the handle when using http methods is not
recommended in general, since the selection of the correct handle is
taken care of when the user passes an url (See
[`handle_pool()`](https://httr.r-lib.org/dev/reference/handle_pool.md)).

## Examples

``` r
handle("http://google.com")
#> Host: http://google.com <NA>
handle("https://google.com")
#> Host: https://google.com <NA>

h <- handle("http://google.com")
GET(handle = h)
#> Response [http://www.google.com/]
#>   Date: 2026-09-01 14:33
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#>   Size: 83.7 kB
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
#>   Date: 2026-09-01 14:33
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#>   Size: 83.7 kB
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
#> 1 #HttpOnly_.google.com TRUE    /  FALSE 2027-03-03 14:33:42  NID
#>                                                                                                                                                                                                                          value
#> 1 534=rBQkVLPxpcb0I1qhWz9mzccWOph9K5Uxozp7og1tenWfcghrpdcwLntrcjey4GOiRWBpJoHqM_IOeiC_0RX13X3MrurJnUFxZ10Ot2gusaDf3oYIm3j7dgkDbxP8teNgLDOUjd5skFtPPnc8PHPKpuyLVPssumC9buJY2-7LS8lIUfN0oFwXCHAd0kS7OXKVYStS_YRwKAyI_XJ1GKQNYTUY
if (FALSE) { # \dontrun{
# Using the preferred way of configuring the http methods
# will not work when using handle():
GET(handle = h, timeout(10))
# Passing named arguments will work properly:
GET(handle = h, config = list(timeout(10), add_headers(Accept = "")))
} # }
```
