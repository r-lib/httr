# Package index

## HTTP verbs

- [`GET()`](https://httr.r-lib.org/dev/reference/GET.md) : GET a url.
- [`POST()`](https://httr.r-lib.org/dev/reference/POST.md) : POST file
  to a server.
- [`PUT()`](https://httr.r-lib.org/dev/reference/PUT.md) : Send PUT
  request to server.
- [`DELETE()`](https://httr.r-lib.org/dev/reference/DELETE.md) : Send a
  DELETE request.
- [`PATCH()`](https://httr.r-lib.org/dev/reference/PATCH.md) : Send
  PATCH request to a server.
- [`HEAD()`](https://httr.r-lib.org/dev/reference/HEAD.md) : Get url
  HEADers.
- [`VERB()`](https://httr.r-lib.org/dev/reference/VERB.md) : VERB a url.
- [`RETRY()`](https://httr.r-lib.org/dev/reference/RETRY.md) : Retry a
  request until it succeeds.
- [`BROWSE()`](https://httr.r-lib.org/dev/reference/BROWSE.md) : Open
  specified url in browser.

## Request configuration

- [`config()`](https://httr.r-lib.org/dev/reference/config.md) : Set
  curl options.

- [`set_config()`](https://httr.r-lib.org/dev/reference/set_config.md)
  [`reset_config()`](https://httr.r-lib.org/dev/reference/set_config.md)
  : Set (and reset) global httr configuration.

- [`with_config()`](https://httr.r-lib.org/dev/reference/with_config.md)
  [`with_verbose()`](https://httr.r-lib.org/dev/reference/with_config.md)
  : Execute code with configuration set.

- [`add_headers()`](https://httr.r-lib.org/dev/reference/add_headers.md)
  : Add additional headers to a request.

- [`authenticate()`](https://httr.r-lib.org/dev/reference/authenticate.md)
  : Use http authentication.

- [`content_type()`](https://httr.r-lib.org/dev/reference/content_type.md)
  [`content_type_json()`](https://httr.r-lib.org/dev/reference/content_type.md)
  [`content_type_xml()`](https://httr.r-lib.org/dev/reference/content_type.md)
  [`accept()`](https://httr.r-lib.org/dev/reference/content_type.md)
  [`accept_json()`](https://httr.r-lib.org/dev/reference/content_type.md)
  [`accept_xml()`](https://httr.r-lib.org/dev/reference/content_type.md)
  : Set content-type and accept headers.

- [`progress()`](https://httr.r-lib.org/dev/reference/progress.md) : Add
  a progress bar.

- [`set_cookies()`](https://httr.r-lib.org/dev/reference/set_cookies.md)
  : Set cookies.

- [`timeout()`](https://httr.r-lib.org/dev/reference/timeout.md) : Set
  maximum request time.

- [`upload_file()`](https://httr.r-lib.org/dev/reference/upload_file.md)
  :

  Upload a file with
  [`POST()`](https://httr.r-lib.org/dev/reference/POST.md) or
  [`PUT()`](https://httr.r-lib.org/dev/reference/PUT.md).

- [`use_proxy()`](https://httr.r-lib.org/dev/reference/use_proxy.md) :
  Use a proxy to connect to the internet.

- [`user_agent()`](https://httr.r-lib.org/dev/reference/user_agent.md) :
  Set user agent.

- [`verbose()`](https://httr.r-lib.org/dev/reference/verbose.md) : Give
  verbose output.

- [`write_disk()`](https://httr.r-lib.org/dev/reference/write_disk.md)
  [`write_memory()`](https://httr.r-lib.org/dev/reference/write_disk.md)
  : Control where the response body is written.

- [`write_stream()`](https://httr.r-lib.org/dev/reference/write_stream.md)
  : Process output in a streaming manner.

## Response accessors

- [`content()`](https://httr.r-lib.org/dev/reference/content.md) :
  Extract content from a request.
- [`cookies()`](https://httr.r-lib.org/dev/reference/cookies.md) :
  Access cookies in a response.
- [`headers()`](https://httr.r-lib.org/dev/reference/headers.md) :
  Extract the headers from a response
- [`http_error()`](https://httr.r-lib.org/dev/reference/http_error.md) :
  Check for an http error.
- [`http_status()`](https://httr.r-lib.org/dev/reference/http_status.md)
  : Give information on the status of a request.
- [`http_type()`](https://httr.r-lib.org/dev/reference/http_type.md) :
  Extract the content type of a response
- [`parse_http_date()`](https://httr.r-lib.org/dev/reference/parse_http_date.md)
  [`http_date()`](https://httr.r-lib.org/dev/reference/parse_http_date.md)
  : Parse and print http dates.
- [`status_code()`](https://httr.r-lib.org/dev/reference/status_code.md)
  : Extract status code from response.
- [`stop_for_status()`](https://httr.r-lib.org/dev/reference/stop_for_status.md)
  [`warn_for_status()`](https://httr.r-lib.org/dev/reference/stop_for_status.md)
  [`message_for_status()`](https://httr.r-lib.org/dev/reference/stop_for_status.md)
  : Take action on http error.

## Authentication

- [`oauth1.0_token()`](https://httr.r-lib.org/dev/reference/oauth1.0_token.md)
  : Generate an oauth1.0 token.
- [`oauth2.0_token()`](https://httr.r-lib.org/dev/reference/oauth2.0_token.md)
  : Generate an oauth2.0 token.
- [`oauth_app()`](https://httr.r-lib.org/dev/reference/oauth_app.md) :
  Create an OAuth application.
- [`oauth_endpoint()`](https://httr.r-lib.org/dev/reference/oauth_endpoint.md)
  : Describe an OAuth endpoint.
- [`oauth_endpoints()`](https://httr.r-lib.org/dev/reference/oauth_endpoints.md)
  : Popular oauth endpoints.
- [`oauth_service_token()`](https://httr.r-lib.org/dev/reference/oauth_service_token.md)
  : Generate OAuth token for service accounts.
- [`authenticate()`](https://httr.r-lib.org/dev/reference/authenticate.md)
  : Use http authentication.
- [`revoke_all()`](https://httr.r-lib.org/dev/reference/revoke_all.md) :
  Revoke all OAuth tokens in the cache.

## Url parsing and manipulation

- [`modify_url()`](https://httr.r-lib.org/dev/reference/modify_url.md) :
  Modify a url.
- [`parse_url()`](https://httr.r-lib.org/dev/reference/parse_url.md)
  [`build_url()`](https://httr.r-lib.org/dev/reference/parse_url.md) :
  Parse and build urls according to RFC3986.

## Developer facing

- [`cache_info()`](https://httr.r-lib.org/dev/reference/cache_info.md)
  [`rerequest()`](https://httr.r-lib.org/dev/reference/cache_info.md) :
  Compute caching information for a response.
- [`handle()`](https://httr.r-lib.org/dev/reference/handle.md) : Create
  a handle tied to a particular host.
- [`httr_dr()`](https://httr.r-lib.org/dev/reference/httr_dr.md) :
  Diagnose common configuration problems
- [`httr_options()`](https://httr.r-lib.org/dev/reference/httr_options.md)
  [`curl_docs()`](https://httr.r-lib.org/dev/reference/httr_options.md)
  : List available options.
- [`get_callback()`](https://httr.r-lib.org/dev/reference/get_callback.md)
  [`set_callback()`](https://httr.r-lib.org/dev/reference/get_callback.md)
  : Install or uninstall a callback function
- [`response`](https://httr.r-lib.org/dev/reference/response.md) : The
  response object.
