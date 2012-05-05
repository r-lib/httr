# httr

The aim of httr is to provide a wrapper for RCurl that is less configurable but customised to the demands of modern web APIs. 

Key features:

* functions for the most important http verbs: `GET`, `HEAD`, `PATCH`, `PUT`,
  `DELETE` and `POST`.

* automatic connection sharing across requests to the same website (by
  default, curl handles are managed automatically), and cookies are maintained
  across requests.

* a request object which captures the body of the request along with
  http status code, cookies, headers, timings and other useful information.

  * response content is available as a raw vector (`content`), a character
    vector (`text_content`), or parsed into an R object (`parsed_content`,
    currently for html, xml, json, png and jpeg)

  * convert http errors into R errors with `stop_for_status`

* wrapper functions for the most common configuration options:
  `set_cookies`, `add_headers`, `authenticate`, `use_proxy`, `verbose`,
  `timeout`.
  
* url parsing (with `parse_url`) and modification (with `modify_url`)

* support for OAuth 1.0 and 2.0. Use `oauth1.0_token` and `oauth2.0_token` to
  get user tokens, and `sign_ouath1.0` and `sign_ouath2.0` to sign requests.
  The demos directory has six demos of using OAuth: three for 1.0 (linkedin,
  twitter and vimeo) and three for 2.0 (facebook, github, google).

`httr` wouldn't be possible without the hard work of the authors of `RCurl` and `Curl`. Thanks! `httr` is inspired by http libraries in other languages, such as [Resty](http://beders.github.com/Resty/Resty/Examples.html), [Requests](http://docs.python-requests.org/en/latest/index.html) and [httparty](http://github.com/jnunemaker/httparty/tree/master).

## Availability

`httr` is still under active development, so is not yet available from CRAN.  You can install the latest development version from github with:

    library(devtools)
    install_github("httr")