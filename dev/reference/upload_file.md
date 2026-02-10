# Upload a file with [`POST()`](https://httr.r-lib.org/dev/reference/POST.md) or [`PUT()`](https://httr.r-lib.org/dev/reference/PUT.md).

Upload a file with
[`POST()`](https://httr.r-lib.org/dev/reference/POST.md) or
[`PUT()`](https://httr.r-lib.org/dev/reference/PUT.md).

## Usage

``` r
upload_file(path, type = NULL)
```

## Arguments

- path:

  path to file

- type:

  mime type of path. If not supplied, will be guess by
  [`mime::guess_type()`](https://rdrr.io/pkg/mime/man/guess_type.html)
  when needed.

## Examples

``` r
citation <- upload_file(system.file("CITATION"))
if (FALSE) { # \dontrun{
POST("http://httpbin.org/post", body = citation)
POST("http://httpbin.org/post", body = list(y = citation))
} # }
```
