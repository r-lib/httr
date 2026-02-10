# Give information on the status of a request.

Extract the http status code and convert it into a human readable
message.

## Usage

``` r
http_status(x)
```

## Arguments

- x:

  a request object or a number.

## Value

If the status code does not match a known status, an error. Otherwise, a
list with components

- category:

  the broad category of the status

- message:

  the meaning of the status code

## Details

http servers send a status code with the response to each request. This
code gives information regarding the outcome of the execution of the
request on the server. Roughly speaking, codes in the 100s and 200s mean
the request was successfully executed; codes in the 300s mean the page
was redirected; codes in the 400s mean there was a mistake in the way
the client sent the request; codes in the 500s mean the server failed to
fulfill an apparently valid request. More details on the codes can be
found at `http://en.wikipedia.org/wiki/Http_error_codes`.

## See also

Other response methods:
[`content()`](https://httr.r-lib.org/dev/reference/content.md),
[`http_error()`](https://httr.r-lib.org/dev/reference/http_error.md),
[`response()`](https://httr.r-lib.org/dev/reference/response.md),
[`stop_for_status()`](https://httr.r-lib.org/dev/reference/stop_for_status.md)

## Examples

``` r
http_status(100)
#> $category
#> [1] "Information"
#> 
#> $reason
#> [1] "Continue"
#> 
#> $message
#> [1] "Information: (100) Continue"
#> 
http_status(404)
#> $category
#> [1] "Client error"
#> 
#> $reason
#> [1] "Not Found"
#> 
#> $message
#> [1] "Client error: (404) Not Found"
#> 

if (FALSE) { # \dontrun{
x <- GET("http://httpbin.org/status/200")
http_status(x)

http_status(GET("http://httpbin.org/status/300"))
http_status(GET("http://httpbin.org/status/301"))
http_status(GET("http://httpbin.org/status/404"))

# errors out on unknown status
http_status(GET("http://httpbin.org/status/320"))
} # }
```
