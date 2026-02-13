# Modify a url.

Modify a url by first parsing it and then replacing components with the
non-NULL arguments of this function.

## Usage

``` r
modify_url(
  url,
  scheme = NULL,
  hostname = NULL,
  port = NULL,
  path = NULL,
  query = NULL,
  params = NULL,
  fragment = NULL,
  username = NULL,
  password = NULL
)
```

## Arguments

- url:

  the url to modify

- scheme, hostname, port, path, query, params, fragment, username,
  password:

  components of the url to change
