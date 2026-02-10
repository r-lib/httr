# Install or uninstall a callback function

Supported callback functions:

- ‘request’:

  This callback is called before an HTTP request is performed, with the
  `request` object as an argument. If the callback returns a value other
  than `NULL`, the HTTP request is not performed at all, and the return
  value of the callback is returned. This mechanism can be used to
  replay previously recorded HTTP responses.

- ‘response’:

  This callback is called after an HTTP request is performed. The
  callback is called with two arguments: the `request` object and the
  `response` object of the HTTP request. If this callback returns a
  value other than `NULL`, then this value is returned by `httr`.

## Usage

``` r
get_callback(name)

set_callback(name, new_callback = NULL)
```

## Arguments

- name:

  Character scalar, name of the callback to query or set.

- new_callback:

  The callback function to install, a function object; or `NULL` to
  remove the currently installed callback (if any).

## Value

`get_callback` returns the currently installed callback, or `NULL` if
none is installed.

`set_callback` returns the previously installed callback, or `NULL` if
none was installed.

## Details

Note that it is not possible to install multiple callbacks of the same
type. The installed callback overwrites the previously intalled one. To
uninstall a callback function, set it to `NULL` with `set_callback()`.

See the `httrmock` package for a proper example that uses callbacks.

## Examples

``` r
if (FALSE) { # \dontrun{
## Log all HTTP requests to the screeen
req_logger <- function(req) {
  cat("HTTP request to", sQuote(req$url), "\n")
}

old <- set_callback("request", req_logger)
g1 <- GET("https://httpbin.org")
g2 <- GET("https://httpbin.org/ip")
set_callback("request", old)

## Log all HTTP requests and response status codes as well
req_logger2 <- function(req) {
  cat("HTTP request to", sQuote(req$url), "... ")
}
res_logger <- function(req, res) {
  cat(res$status_code, "\n")
}

old_req <- set_callback("request", req_logger2)
old_res <- set_callback("response", res_logger)
g3 <- GET("https://httpbin.org")
g4 <- GET("https://httpbin.org/ip")
set_callback("request", old_req)
set_callback("response", old_res)

## Return a recorded response, without performing the HTTP request
replay <- function(req) {
  if (req$url == "https://httpbin.org") g3
}
old_req <- set_callback("request", replay)
grec <- GET("https://httpbin.org")
grec$date == g3$date
set_callback("request", old_req)
} # }
```
