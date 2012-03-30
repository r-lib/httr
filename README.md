# httr

The aim of httr is to provide a wrapper for RCurl that is less configurable but customised to the demands of modern web APIs. 

Key features:

* functions for the most important http verbs: `GET`, `HEAD`, and (to do)
  `POST`, `PUT`, `DELETE`,

* automatic connection sharing across requests to the same website (by
  default, curl handles are managed automatically), and cookies are maintained
  across requests.

* a request object which captures the body of the request along with
  http status code, cookies, headers, timings and other useful information

* wrapper functions for the most common configuration options:
  `set_cookies`, `add_headers`, `authenticate`, `use_proxy`, `verbose`,
  `timeout`
  
* url parsing (with `parse_url`)

`httr` wouldn't be possible without the hard work of the authors of `RCurl` and `Curl`.  Thanks!  `httr` is inspired by http libraries in other languages, such as [Resty](http://beders.github.com/Resty/Resty/Examples.html), [Requests](http://docs.python-requests.org/en/v0.10.7/index.html) and [httparty](http://github.com/jnunemaker/httparty/tree/master).
