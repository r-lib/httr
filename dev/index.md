# httr

## Status

[![Lifecycle:
superseded](https://img.shields.io/badge/lifecycle-superseded-blue.svg)](https://lifecycle.r-lib.org/articles/stages.html#superseded)

httr is superseded: only changes necessary to keep it on CRAN will be
made. We recommend using [httr2](https://httr2.r-lib.org) instead.

------------------------------------------------------------------------

The aim of httr is to provide a wrapper for the
[curl](https://cran.r-project.org/package=curl) package, customised to
the demands of modern web APIs.

Key features:

- Functions for the most important http verbs:
  [`GET()`](https://httr.r-lib.org/dev/reference/GET.md),
  [`HEAD()`](https://httr.r-lib.org/dev/reference/HEAD.md),
  [`PATCH()`](https://httr.r-lib.org/dev/reference/PATCH.md),
  [`PUT()`](https://httr.r-lib.org/dev/reference/PUT.md),
  [`DELETE()`](https://httr.r-lib.org/dev/reference/DELETE.md) and
  [`POST()`](https://httr.r-lib.org/dev/reference/POST.md).

- Automatic connection sharing across requests to the same website (by
  default, curl handles are managed automatically), cookies are
  maintained across requests, and a up-to-date root-level SSL
  certificate store is used.

- Requests return a standard reponse object that captures the http
  status line, headers and body, along with other useful information.

  - Response content is available with
    [`content()`](https://httr.r-lib.org/dev/reference/content.md) as a
    raw vector (`as = "raw"`), a character vector (`as = "text"`), or
    parsed into an R object (`as = "parsed"`), currently for html, xml,
    json, png and jpeg.

  - You can convert http errors into R errors with
    [`stop_for_status()`](https://httr.r-lib.org/dev/reference/stop_for_status.md).

- Config functions make it easier to modify the request in common ways:
  [`set_cookies()`](https://httr.r-lib.org/dev/reference/set_cookies.md),
  [`add_headers()`](https://httr.r-lib.org/dev/reference/add_headers.md),
  [`authenticate()`](https://httr.r-lib.org/dev/reference/authenticate.md),
  [`use_proxy()`](https://httr.r-lib.org/dev/reference/use_proxy.md),
  [`verbose()`](https://httr.r-lib.org/dev/reference/verbose.md),
  [`timeout()`](https://httr.r-lib.org/dev/reference/timeout.md),
  [`content_type()`](https://httr.r-lib.org/dev/reference/content_type.md),
  [`accept()`](https://httr.r-lib.org/dev/reference/content_type.md),
  [`progress()`](https://httr.r-lib.org/dev/reference/progress.md).

- Support for OAuth 1.0 and 2.0 with
  [`oauth1.0_token()`](https://httr.r-lib.org/dev/reference/oauth1.0_token.md)
  and
  [`oauth2.0_token()`](https://httr.r-lib.org/dev/reference/oauth2.0_token.md).
  The demo directory has eight OAuth demos: four for 1.0 (twitter,
  vimeo, withings and yahoo) and four for 2.0 (facebook, github, google,
  linkedin). OAuth credentials are automatically cached within a
  project.

httr wouldn’t be possible without the hard work of the authors of
[curl](https://cran.r-project.org/package=curl) and
[libcurl](https://curl.se/). Thanks! httr is inspired by http libraries
in other languages, such as
[Resty](http://beders.github.io/Resty/Resty/Examples.md),
[Requests](https://requests.readthedocs.io/en/latest/) and
[httparty](https://github.com/jnunemaker/httparty/tree/master).

## Installation

To get the current released version from CRAN:

``` r

install.packages("httr")
```

To get the current development version from github:

``` r

# install.packages("pak")
pak::pak("r-lib/httr")
```

## Code of Conduct

Please note that the httr project is released with a [Contributor Code
of Conduct](https://httr.r-lib.org/CODE_OF_CONDUCT.html). By
contributing to this project, you agree to abide by its terms.
