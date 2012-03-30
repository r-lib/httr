# httr

The aim of httr is to provide a wrapper for RCurl that is less configurable but (hopefully!) easier to use, and well suited to the demands of current web APIs. 

Compared to `RCurl`, `httr`:

* automatically shares connections across requests to the same website (by
  default, curl handles are managed automatically)

* returns a request object which captures the result from the request, as well
  as headers, request times, cookies and so on.

* provides functions corresponding to the most important http verbs: `GET`,
  `POST`, `PUT`, `DELETE`, `HEAD`
  
`httr` wouldn't be possible without the hard work of the authors of `RCurl` and `Curl`.

`httr` is inspired by modern http libraries in other languages, such as:

* [Resty](http://beders.github.com/Resty/Resty/Examples.html)
* [httparty](http://github.com/jnunemaker/httparty/tree/master)


