# Compute caching information for a response.

`cache_info()` gives details of cacheability of a response,
`rerequest()` re-performs the original request doing as little work as
possible (if not expired, returns response as is, or performs
revalidation if Etag or Last-Modified headers are present).

## Usage

``` r
cache_info(r)

rerequest(r)
```

## Arguments

- r:

  A response

## Examples

``` r
# Never cached, always causes redownload
r1 <- GET("https://www.google.com")
cache_info(r1)
#> <cache_info>  https://www.google.com/
#>   Cacheable:     TRUE
#>   Expires:       Mon, 31 Aug 2026 23:02:25 GMT <expired>
#>   Last-Modified: 
#>   Etag:          
r1$date
#> [1] "2026-08-31 23:02:25 GMT"
rerequest(r1)$date
#> [1] "2026-08-31 23:02:25 GMT"

# Expires in a year
r2 <- GET("https://www.google.com/images/srpr/logo11w.png")
cache_info(r2)
#> <cache_info>  https://www.google.com/images/srpr/logo11w.png
#>   Cacheable:     TRUE
#>   Expires:       Tue, 31 Aug 2027 23:02:25 GMT
#>   Last-Modified: Tue, 22 Oct 2019 18:30:00 GMT
#>   Etag:          
r2$date
#> [1] "2026-08-31 23:02:25 GMT"
rerequest(r2)$date
#> [1] "2026-08-31 23:02:25 GMT"

if (FALSE) { # \dontrun{
# Has last-modified and etag, so does revalidation
r3 <- GET("http://httpbin.org/cache")
cache_info(r3)
r3$date
rerequest(r3)$date

# Expires after 5 seconds
r4 <- GET("http://httpbin.org/cache/5")
cache_info(r4)
r4$date
rerequest(r4)$date
Sys.sleep(5)
cache_info(r4)
rerequest(r4)$date
} # }
```
