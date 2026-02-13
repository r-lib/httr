# Give verbose output.

A verbose connection provides much more information about the flow of
information between the client and server.

## Usage

``` r
verbose(data_out = TRUE, data_in = FALSE, info = FALSE, ssl = FALSE)
```

## Arguments

- data_out:

  Show data sent to the server.

- data_in:

  Show data recieved from the server.

- info:

  Show informational text from curl. This is mainly useful for debugging
  https and auth problems, so is disabled by default.

- ssl:

  Show even data sent/recieved over SSL connections?

## Prefixes

`verbose()` uses the following prefixes to distinguish between different
components of the http messages:

- `*` informative curl messages

- `->` headers sent (out)

- `>>` data sent (out)

- `*>` ssl data sent (out)

- `<-` headers received (in)

- `<<` data received (in)

- `<*` ssl data received (in)

## See also

[`with_verbose()`](https://httr.r-lib.org/reference/with_config.md)
makes it easier to use verbose mode even when the requests are buried
inside another function call.

Other config:
[`add_headers()`](https://httr.r-lib.org/reference/add_headers.md),
[`authenticate()`](https://httr.r-lib.org/reference/authenticate.md),
[`config()`](https://httr.r-lib.org/reference/config.md),
[`set_cookies()`](https://httr.r-lib.org/reference/set_cookies.md),
[`timeout()`](https://httr.r-lib.org/reference/timeout.md),
[`use_proxy()`](https://httr.r-lib.org/reference/use_proxy.md),
[`user_agent()`](https://httr.r-lib.org/reference/user_agent.md)

## Examples

``` r
if (FALSE) { # \dontrun{
GET("http://httpbin.org", verbose())
GET("http://httpbin.org", verbose(info = TRUE))

f <- function() {
  GET("http://httpbin.org")
}
with_verbose(f())
with_verbose(f(), info = TRUE)

# verbose() makes it easy to see exactly what POST requests send
POST_verbose <- function(body, ...) {
  POST("https://httpbin.org/post", body = body, verbose(), ...)
  invisible()
}
POST_verbose(list(x = "a", y = "b"))
POST_verbose(list(x = "a", y = "b"), encode = "form")
POST_verbose(FALSE)
POST_verbose(NULL)
POST_verbose("")
POST_verbose("xyz")
} # }
```
