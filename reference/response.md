# The response object.

The response object captures all information from a request. It includes
fields:

- `url` the url the request was actually sent to (after redirects)

- `handle` the handle associated with the url

- `status_code` the http status code

- `header` a named list of headers returned by the server

- `cookies` a named list of cookies returned by the server

- `content` the body of the response, as raw vector. See
  [`content()`](https://httr.r-lib.org/reference/content.md) for various
  ways to access the content.

- `time` request timing information

- `config` configuration for the request

## Details

For non-http(s) responses, some parts including the status and header
may not be interpretable the same way as http responses.

## See also

Other response methods:
[`content()`](https://httr.r-lib.org/reference/content.md),
[`http_error()`](https://httr.r-lib.org/reference/http_error.md),
[`http_status()`](https://httr.r-lib.org/reference/http_status.md),
[`stop_for_status()`](https://httr.r-lib.org/reference/stop_for_status.md)
