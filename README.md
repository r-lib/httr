# httr

[![Build Status](https://travis-ci.org/hadley/httr.png?branch=master)](https://travis-ci.org/hadley/httr)

The aim of httr is to provide a wrapper for RCurl that is less configurable but customised to the demands of modern web APIs.

Key features:

* functions for the most important http verbs: `GET`, `HEAD`, `PATCH`, `PUT`,
  `DELETE` and `POST`.

* automatic connection sharing across requests to the same website (by
  default, curl handles are managed automatically), cookies are maintained
  across requests, and the standard root-level SSL certificate store is used.

* a request object which captures the body of the request along with
  http status code, cookies, headers, timings and other useful information.

  * response content is available with `content()` as a raw vector (`as =
    "raw"`), a character vector (`as = "text"`), or parsed into an R object
    (`as = "parsed"`), currently for html, xml, json, png and jpeg).

  * convert http errors into R errors with `stop_for_status`

* wrapper functions for the most common configuration options:
  `set_cookies`, `add_headers`, `authenticate`, `use_proxy`, `verbose`,
  `timeout`.

* url parsing (with `parse_url`) and modification (with `modify_url`)

* support for OAuth 1.0 and 2.0 with `oauth1.0_token()` and `oauth2.0_token()`.
  The demos directory has six demos of using OAuth: two for 1.0 (twitter and
  vimeo) and four for 2.0 (facebook, github, google, linkedin). OAuth
  credentials are automatically cached for each project.

`httr` wouldn't be possible without the hard work of the authors of `RCurl` and `Curl`. Thanks! `httr` is inspired by http libraries in other languages, such as [Resty](http://beders.github.com/Resty/Resty/Examples.html), [Requests](http://docs.python-requests.org/en/latest/index.html) and [httparty](http://github.com/jnunemaker/httparty/tree/master).

## Installation

To get the current released version from CRAN:

```R
install.packages("httr")
```

To get the current development version from github:

```R
# install.packages("devtools")
devtools::install_github("hadley/httr")
```
