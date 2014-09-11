# httr 0.5.0.9000

## Minor improvements and bug fixes

* `Content-Type` set to title case to avoid errors in servers which do not
  correctly implement case insensitivity in header names. (#142, #146) thanks
  to Håkon Malmedal (@hmalmedal) and Jim Hester (@jimhester).


# httr 0.5

* You can now save response bodies directly to disk by using the `write_disk()`
  config. This is useful if you want to capture large files that don't fit in
  memory (#44).

* Default accept header is now "application/json, text/xml, */*" - this should
  encourage servers to send json or xml if they know how.

* `httr_options()` allows you to easily filter the options, e.g. 
  `httr_options("post")`
  
* `POST()` now specifies Curl options more precisely so that Curl know's 
  that you're doing a POST and can respond appropriately to redirects.
  
## Caching

* Preliminary and experimental support for caching with `cache_info()` and
  `rerequest()` (#129). Be aware that this API is likely to change in 
  the future.

* `parse_http_date()` parses http dates according RFC2616 spec.

* Requests now print the time they were made.

* Mime type `application/xml` is automatically parsed with ``XML::xmlParse()`.
  (#128)

## Minor improvements and bug fixes

* Now possible to specify both handle and url when making a request.

* `content(type = "text")` uses `readBin()` instead of `rawToChar()` so
  that strings with embedded NULLs (e.g. WINDOWS-1252) can be re-encoded
  to UTF-8.

* `DELETE()` now returns body of request (#138).

* `headers()` is now a generic with a method for response objects.

* `parse_media()` failed to take into account that media types are 
  case-insenstive - this lead to bad re-encoding for content-types like
  "text/html; Charset=UTF-8"

* Typo which broke `set_cookies()` fixed by @hrbrmstr.

* `url_ok()` works correctly now, instead of always returning `FALSE`,
  a bug since version 0.4 (#133).
  
* Remove redundant arguments `simplifyDataFrame` and `simplifyMatrix` for json parser.

# httr 0.4

## New features

* New `headers()` and `cookies()` functions to extract headers and cookies 
  from responses. Previoulsy internal `status_code()` function now exported
  to extract `status_code()` from responses.

* `POST()`, `PUT()`, and `PATCH()` now use `encode` argument to determine how
  list inputs are encoded. Valid values are "multiple", "form" or "json".
  The `multipart` argument is now deprecated (#103). You can stream a single 
  file from disk with  `upload_file("path/")`. The mime type will be guessed 
  from the extension, or can be supplied explicitly as the second argument to 
  `upload_file()`.

* `progress()` will display a progress bar, useful if you're doing large 
  uploads or downloads (#17).

* `verbose()` now uses a custom debug function so that you can see exactly
  what data is sent to the server. Arguments control exactly what is included,
  and the defaults have been selected to be more helpful for the most common
  cases (#102).

* `with_verbose()` makes it easier to see verbose information when http 
  requests are made within other functions (#87).

## Documentation improvements

* New `quickstart` vignette to help you get up and running with httr.

* New `api-packages` vignette describes how best practices to follow when
  writing R packages that wrap web APIs.

* `httr_options()` lists all known config options, translating between
  their short R names and the full libcurl names. The `curl_doc()` helper
  function allows you to jump directly to the online documentation for an
  option.

## Minor improvements

* `authenticate()` now defaults to `type = "basic"` which is pretty much the
  only type of authentication anyone uses.

* Updated `cacert.pem` to version at 2014-04-22 (#114).

* `content_type()`, `content_type_xml()` and `content_type_json()` make it
  easier to set the content type for `POST` requests (and other requests with
  a body).

* `has_content()` tells you if request has any content associated with it (#91).

* Add `is_interactive()` parameter to `oauth_listener()`, `init_oauth1.0()` and
  `init_oauth2.0()` (#90).

* `oauth_signature()` and `oauth_header()` now exported to make it easier to 
  construct custom authentication for APIs that use only some components of
  the full OAuth process (e.g. 2 legged OAuth).

* NULL `query` parameters are now dropped automatically.

* When `print()`ing a response, httr will only attempt to print the first few 
  lines if it's a text format (i.e. either the main type is text or is
  application/json). It will also truncate each line so that it fits on
  screen - this should hopefully make it easier to see a little bit of the
  content, without filling the screen with gibberish.

* `new_bin()` has been removed: it's easier to see what's going on in 
  examples with `httpbin.org`.

## Bug fixes

* `user_agent()` once again overrides default (closes #97)

* `parse(type = "auto")` returns NULL if no content associated with request 
  (#91).
  
* Better strategy for resetting Curl handles prevents carry-over of error
  status and other problems (#112).

* `set_config()` and `with_config()` now work with `token`s (#111).

# httr 0.3

## OAuth improvements

OAuth 2.0 has recieved a major overhaul in this version. The authentication
dance now works in more environments (including RStudio), and is generally
a little faster. When working on a remote server, or if R's internet connection
is constrained in other ways, you can now use out-of-band authentication,
copying and pasting from any browser to your R session. OAuth tokens from
endpoints that regularly expire access tokens can now be refreshed, and will
be refresh automatically on authentication failure.

httr now uses project (working directory) based caching: every time you
create or refresh a token, a copy of the credentials will be saved in
`.httr-oauth`. You can override this default for individual tokens with the
`cache` parameter, or globally with the `httr_oauth_cache` option. Supply
either a logical vector (`TRUE` = always cache, `FALSE` = never cache,
`NA` = ask), or a string (the path to the cache file).

You should NOT include this cache file in source code control - if you do,
delete it, and reset your access token through the corresponding web interface.
To help, httr will automatically add appropriate entries to `.gitignore` and
`.Rbuildignore`.

These changes mean that you should only ever have to authenticate
once per project, and you can authenticate from any environment in which
you can run R. A big thanks go to Craig Citro (@craigcitro) from google,
who contributed much code and many ideas to make this possible.

* The OAuth token objects are now reference classes, which mean they can be
  updated in place, such as when an access token expires and needs to be
  refreshed. You can manually refresh by calling `$refresh()` on the object.
  You can force reinitialisation (to do the complete dance from
  scratch) by calling `$reinit(force = TRUE)`.

* If a signed OAuth2 request fails with a 401 and the credentials have a
  `refresh_token`, then the OAuth token will be automatically refreshed (#74).

* OAuth tokens are cached locally in a file called `.httr-oauth` (unless
  you opt out). This file should not be included in source code control,
  and httr will automatically add to `.gitignore` and `.Rbuildignore`.
  The caching policy is described in more detail in the help for the
  `Token` class.

* The OAuth2 dance can now be performed without running a local webserver
  (#33, thanks to @craigcitro). To make that the default, set
  `options(httr_oob_default = TRUE)`. This is useful when running R remotely.

* Add support for passing oauth2 tokens in headers instead of the URL, and
  make this the default (#34, thanks to @craigcitro).

* OAuth endpoints can store arbitrary extra urls.

* Use the httpuv webserver for the OAuth dance instead of the built-in
  httpd server (#32, thanks to @jdeboer). This makes the dance work in
  Rstudio, and also seems a little faster. Rook is no longer required.

* `oauth_endpoints()` includes some popular OAuth endpoints.

## Other improvements

* HTTP verbs (`GET()`, `POST()` etc) now pass unnamed arguments to `config()`
  and named arguments to `modify_url()` (#81).

* The placement of `...` in `POST()`, `PATCH()` and `PUT()` has been tweaked
  so that you must always specify `body` and `multipart` arguments with their
  full name. This has always been recommended practice; now it is enforced.

* `httr` includes its own copy of `cacert.pem`, which is more recent than
  the version included in RCurl (#67).

* Added default user agent which includes versions of Curl, RCurl and httr.

* Switched to jsonlite from rjson.

* Content parsers no longer load packages on to search path.

* `stop_for_status()` now raises errors with useful classes so that you can
  use `tryCatch()` to take different actions depending on the type of error.
  See `http_condition()` for more details.

* httr now imports the methods package so that it works when called with
  Rscript.

* New automatic parsers for mime types `text/tab-separated-values` and
  `text/csv` (#49)

* Add support for `fragment` in url building/parsing (#70, thanks to
  @craigcitro).

* You can suppress the body entirely in `POST()`, `PATCH()` and `PUT()`
  with `body = FALSE`.

## Bug fixes

* If you supply multiple headers of the same name, the value of the most
  recently set header will always be used.

* Urls with missing query param values (e.g. `http://x.com/?q=`) are now
  parsed correctly (#27). The names of query params are now also escaped
  and unescaped correctly when parsing and building urls.

* Default html parser is now `XML::htmlParse()` which is easier to use
  with xpath (#66).

# httr 0.2

* OAuth now uses custom escaping function which is guaranteed to work on all
  platforms (Fixes #21)

* When concatenating configs, concatenate all the headers. (Fixes #19)

* export `hmac_sha1` since so many authentication protocols need this

* `content` will automatically guess what type of output (parsed, text or raw)
  based on the content-type header. It also automatically converts text
  content to UTF-8 (using the charset in the media type) and can guess at mime
  type from extension if server doesn't supply one. Media type and encoding
  can be overridden with the `type` and `encoding` arguments respectively.

* response objects automatically print content type to aid debugging.

* `text_content` has become `context(, "text")` and `parsed_content`
  `content(, "parsed")`. The previous calls are deprecated and will be removed
  in a future version.

* In `oauth_listener`, use existing httpd port if help server has already been
  started. This allows the ouath authentication dance to work if you're in
  RStudio. (Fixes #15).

* add several functions related to checking the status of an http request.
  Those are : `status`, `url_ok` and `url_success` as well as
  `stop_for_status` and `warn_for_status`.

* `build_url`: correctly add params back into full url.

# httr 0.1.1

* Add new default config: use the standard SSL certificate

* Add recommendation to use custom handles with `authenticate`
