# Use http authentication.

It's not obvious how to turn authentication off after using it, so I
recommend using custom handles with authentication.

## Usage

``` r
authenticate(user, password, type = "basic")
```

## Arguments

- user:

  user name

- password:

  password

- type:

  type of HTTP authentication. Should be one of the following types
  supported by Curl: basic, digest, digest_ie, gssnegotiate, ntlm, any.
  It defaults to "basic", the most common type.

## See also

Other config:
[`add_headers()`](https://httr.r-lib.org/dev/reference/add_headers.md),
[`config()`](https://httr.r-lib.org/dev/reference/config.md),
[`set_cookies()`](https://httr.r-lib.org/dev/reference/set_cookies.md),
[`timeout()`](https://httr.r-lib.org/dev/reference/timeout.md),
[`use_proxy()`](https://httr.r-lib.org/dev/reference/use_proxy.md),
[`user_agent()`](https://httr.r-lib.org/dev/reference/user_agent.md),
[`verbose()`](https://httr.r-lib.org/dev/reference/verbose.md)

## Examples

``` r
if (FALSE) { # \dontrun{
GET("http://httpbin.org/basic-auth/user/passwd")
GET(
  "http://httpbin.org/basic-auth/user/passwd",
  authenticate("user", "passwd")
)
} # }
```
