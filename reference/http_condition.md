# Generate a classed http condition.

This function generate S3 condition objects which are passed to
[`stop()`](https://rdrr.io/r/base/stop.html) or
[`warning()`](https://rdrr.io/r/base/warning.html) to generate classes
warnings and error. These can be used in conjunction with
[`tryCatch()`](https://rdrr.io/r/base/conditions.html) to respond
differently to different type of failure.

## Usage

``` r
http_condition(x, type, task = NULL, call = sys.call(-1))
```

## Arguments

- x:

  a response, or numeric http code (or other object with `status_code`
  method)

- type:

  type of condition to generate. Must be one of error, warning or
  message.

- task:

  The text of the message: either `NULL` or a character vector. If
  non-`NULL`, the error message will finish with "Failed to `task`".

- call:

  The call stored in the condition object.

## Value

An S3 object that inherits from (e.g.) condition, `type`, http_error,
http_400 and http_404.

## See also

<http://adv-r.had.co.nz/Exceptions-Debugging.html#condition-handling>
for more details about R's condition handling model

## Examples

``` r
if (FALSE) { # \dontrun{
# You can use tryCatch to take different actions based on the type
# of error. Note that tryCatch will call the first handler that
# matches any classes of the condition, not the best matching, so
# always list handlers from most specific to least specific
f <- function(url) {
  tryCatch(stop_for_status(GET(url)),
    http_404 = function(c) "That url doesn't exist",
    http_403 = function(c) "You need to authenticate!",
    http_400 = function(c) "You made a mistake!",
    http_500 = function(c) "The server screwed up"
  )
}
f("http://httpbin.org/status/404")
f("http://httpbin.org/status/403")
f("http://httpbin.org/status/505")
} # }
```
