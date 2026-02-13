# Set curl options.

Generally you should only need to use this function to set CURL options
directly if there isn't already a helpful wrapper function, like
[`set_cookies()`](https://httr.r-lib.org/dev/reference/set_cookies.md),
[`add_headers()`](https://httr.r-lib.org/dev/reference/add_headers.md)
or
[`authenticate()`](https://httr.r-lib.org/dev/reference/authenticate.md).
To use this function effectively requires some knowledge of CURL, and
CURL options. Use
[`httr_options()`](https://httr.r-lib.org/dev/reference/httr_options.md)
to see a complete list of available options. To see the libcurl
documentation for a given option, use
[`curl_docs()`](https://httr.r-lib.org/dev/reference/httr_options.md).

## Usage

``` r
config(..., token = NULL)
```

## Arguments

- ...:

  named Curl options.

- token:

  An OAuth token (1.0 or 2.0)

## Details

Unlike Curl (and RCurl), all configuration options are per request, not
per handle.

## See also

[`set_config()`](https://httr.r-lib.org/dev/reference/set_config.md) to
set global config defaults, and
[`with_config()`](https://httr.r-lib.org/dev/reference/with_config.md)
to temporarily run code with set options.

All known available options are listed in
[`httr_options()`](https://httr.r-lib.org/dev/reference/httr_options.md)

Other config:
[`add_headers()`](https://httr.r-lib.org/dev/reference/add_headers.md),
[`authenticate()`](https://httr.r-lib.org/dev/reference/authenticate.md),
[`set_cookies()`](https://httr.r-lib.org/dev/reference/set_cookies.md),
[`timeout()`](https://httr.r-lib.org/dev/reference/timeout.md),
[`use_proxy()`](https://httr.r-lib.org/dev/reference/use_proxy.md),
[`user_agent()`](https://httr.r-lib.org/dev/reference/user_agent.md),
[`verbose()`](https://httr.r-lib.org/dev/reference/verbose.md)

Other ways to set configuration:
[`set_config()`](https://httr.r-lib.org/dev/reference/set_config.md),
[`with_config()`](https://httr.r-lib.org/dev/reference/with_config.md)

## Examples

``` r
# There are a number of ways to modify the configuration of a request
# * you can add directly to a request
HEAD("https://www.google.com", verbose())
#> Response [https://www.google.com/]
#>   Date: 2026-02-13 21:44
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#> <EMPTY BODY>

# * you can wrap with with_config()
with_config(verbose(), HEAD("https://www.google.com"))
#> Response [https://www.google.com/]
#>   Date: 2026-02-13 21:44
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#> <EMPTY BODY>

# * you can set global with set_config()
old <- set_config(verbose())
HEAD("https://www.google.com")
#> Response [https://www.google.com/]
#>   Date: 2026-02-13 21:44
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#> <EMPTY BODY>
# and re-establish the previous settings with
set_config(old, override = TRUE)
HEAD("https://www.google.com")
#> Response [https://www.google.com/]
#>   Date: 2026-02-13 21:44
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#> <EMPTY BODY>
# or
reset_config()
HEAD("https://www.google.com")
#> Response [https://www.google.com/]
#>   Date: 2026-02-13 21:44
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#> <EMPTY BODY>

# If available, you should use a friendly httr wrapper over RCurl
# options. But you can pass Curl options (as listed in httr_options())
# in config
HEAD("https://www.google.com/", config(verbose = TRUE))
#> Response [https://www.google.com/]
#>   Date: 2026-02-13 21:44
#>   Status: 200
#>   Content-Type: text/html; charset=ISO-8859-1
#> <EMPTY BODY>
```
