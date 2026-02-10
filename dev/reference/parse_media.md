# Parse a media type.

Parsed according to RFC 2616, as at
<https://www.rfc-editor.org/rfc/rfc2616#section-3.7>.

## Usage

``` r
parse_media(x)
```

## Arguments

- x:

  String to parse

## Details

A simplified minimal EBNF is:

- media-type = `type "/" subtype *( ";" parameter )`

- type = `token`

- subtype = `token`

- parameter = `attribute "=" value`

- attribute = `token`

- value = `token | quoted-string`

- token = `1*<any CHAR except CTLs or ()<>@,;:\"/[]?=\{\}`

## Examples

``` r
parse_media("text/plain")
#> $complete
#> [1] "text/plain"
#> 
#> $type
#> [1] "text"
#> 
#> $subtype
#> [1] "plain"
#> 
#> $params
#> list()
#> 
parse_media("text/plain; charset=utf-8")
#> $complete
#> [1] "text/plain"
#> 
#> $type
#> [1] "text"
#> 
#> $subtype
#> [1] "plain"
#> 
#> $params
#> $params$charset
#> [1] "utf-8"
#> 
#> 
parse_media("text/plain; charset=\"utf-8\"")
#> $complete
#> [1] "text/plain"
#> 
#> $type
#> [1] "text"
#> 
#> $subtype
#> [1] "plain"
#> 
#> $params
#> $params$charset
#> [1] "utf-8"
#> 
#> 
parse_media("text/plain; randomparam=\";=;=\"")
#> $complete
#> [1] "text/plain"
#> 
#> $type
#> [1] "text"
#> 
#> $subtype
#> [1] "plain"
#> 
#> $params
#> $params$randomparam
#> [1] ";=;="
#> 
#> 
```
