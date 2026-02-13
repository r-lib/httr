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
#>   Date: 2026-02-13 21:41
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#>   Size: 17.8 kB
#> <!doctype html><html itemscope="" itemtype="http://schema.org/WebPag...
#> var g=this||self;function k(){return window.google&&window.google.kO...
#> function r(a,b,d,c,h){var e="";b.search("&ei=")===-1&&(e="&ei="+n(c)...
#> document.documentElement.addEventListener("submit",function(b){var a...
#> </style><style>body,td,a,p,.h{font-family:sans-serif}body{margin:0;o...
#> var g=this||self;var k,l=(k=g.mei)!=null?k:1,m,p=(m=g.diel)!=null?m:...
#> "&bver="+b(w.bv);w.dpf&&(c+="&dpf="+b(w.dpf));var f=a.lineNumber;f!=...
#> if (!iesg){document.f&&document.f.q.focus();document.gbqf&&document....
#> }
#> })();</script><div id="mngb"><div id=gbar><nobr><b class=gb1>Search<...
#> ...
# Should see cookies sent back to server
GET(handle = h, config = verbose())
#> Response [http://www.google.com/]
#>   Date: 2026-02-13 21:41
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#>   Size: 17.8 kB
#> <!doctype html><html itemscope="" itemtype="http://schema.org/WebPag...
#> var g=this||self;function k(){return window.google&&window.google.kO...
#> function r(a,b,d,c,h){var e="";b.search("&ei=")===-1&&(e="&ei="+n(c)...
#> document.documentElement.addEventListener("submit",function(b){var a...
#> </style><style>body,td,a,p,.h{font-family:sans-serif}body{margin:0;o...
#> var g=this||self;var k,l=(k=g.mei)!=null?k:1,m,p=(m=g.diel)!=null?m:...
#> "&bver="+b(w.bv);w.dpf&&(c+="&dpf="+b(w.dpf));var f=a.lineNumber;f!=...
#> if (!iesg){document.f&&document.f.q.focus();document.gbqf&&document....
#> }
#> })();</script><div id="mngb"><div id=gbar><nobr><b class=gb1>Search<...
#> ...

h <- handle("http://google.com", cookies = FALSE)
#> Warning: Cookies argument is deprecated
GET(handle = h)$cookies
#>                  domain flag path secure          expiration name
#> 1 #HttpOnly_.google.com TRUE    /  FALSE 2026-08-15 21:41:54  NID
#>                                                                                                                                                                                                                                         value
#> 1 528=OuwOpalK4cBEfvkLHMaD6xDuAq3DRkxdKjbAIaodWqb0cLOGCQ8gqvKCOU1-pun1C4j_2zr9krwAQf4654_No6Bvj4cyspecEN1FS3u5DUjKiW57fRS_RpKdKt6GcAoZrT5DlTwR_nk5NYi4oY35i2W1ozH8WOa7oFoyQrpGEnDC-8s5dPq2NEbLYyoQsueo-VkwkwZlEZJWFuW2qgpEaGfE1kjT4xvW6xcqBuM
if (FALSE) { # \dontrun{
# Using the preferred way of configuring the http methods
# will not work when using handle():
GET(handle = h, timeout(10))
# Passing named arguments will work properly:
GET(handle = h, config = list(timeout(10), add_headers(Accept = "")))
} # }
```
