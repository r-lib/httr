# Add a progress bar.

Add a progress bar.

## Usage

``` r
progress(type = c("down", "up"), con = stdout())
```

## Arguments

- type:

  Type of progress to display: either number of bytes uploaded or
  downloaded.

- con:

  Connection to send output too. Usually
  [`stdout()`](https://rdrr.io/r/base/showConnections.html) or `stderr`.

## Examples

``` r
cap_speed <- config(max_recv_speed_large = 10000)
if (FALSE) { # \dontrun{
# If file size is known, you get a progress bar:
x <- GET("http://httpbin.org/bytes/102400", progress(), cap_speed)
# Otherwise you get the number of bytes downloaded:
x <- GET("http://httpbin.org/stream-bytes/102400", progress(), cap_speed)
} # }
```
