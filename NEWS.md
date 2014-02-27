# httr 0.2.99

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
`cache` parameter, or on a global basis with the `httr_oauth_cache` option.
Supply either a logical vector (`TRUE` = always cache, `FALSE` = never cache,
`NA` = ask), or a string (the path to the cache file). You should NOT
include this cache file in source code control - if you do, delete it,
and reset your access token through the corresponding web interface.

Together, these changes mean that you should only ever have to authenticate
once per project, and you can authenticate from any environment in which
you can run R. A big thanks go to Craig Citro (@craigcitro) from google,
who contribute a lot of code and ideas to make this possible.

* The OAuth token objects are now reference classes, which mean they can be
  updated in place, such as when an access token expires and needs to be
  refreshed. You can manually refresh by calling `$refresh()` on the object.
  You can force reinitialisation (to do the complete dance from
  scratch) by calling `$reinit(force)`.

* If a signed OAuth2 request fails with a 401 and the credentials have a
  `refresh_token`, then the OAuth token will be automatically refreshed (#74).

* OAuth tokens are cached locally in a file called `.oauth-httr` (unless
  you opt out). This file should not be included in source code control,
  and httr will automatically add to `.gitignore` and `.Rbuildignore` if
  needed. The caching policy is described in more detail in the help for
  the `Token` class.

* The OAuth2 dance can now be performed without running a local webserver
  (#33, thanks to @craigcitro). To make that the default, set
  `options(httr_oob_default = TRUE)`. This is useful when running R remotely.

* Add support for passing oauth2 tokens in headers instead of the URL, and
  make this the default (#34, thanks to @craigcitro).

* OAuth endpoints can store arbitrary extra urls.

* Use the httpuv webserver for the OAuth dance instead of the built-in
  httpd server (#32, thanks to @jdeboer). This makes the dance work in
  Rstudio, and also seems a little faster. Rook is no longer required.

* `oauth_endpoints` includes some popular OAuth endpoints.

## Other improvements

* `httr` includes its own copy of `cacert.pem`, which is more recent than
  the version included in RCurl (#67).

* Added default user agent which includes versions of Curl, RCurl and httr.

* Switched to RJSONIO from rjson. No longer loaded onto search path.

* `stop_for_status()` now raises errors with useful classes so that you can
  use `tryCatch()` to take different actions depending on the type of error.
  See `http_condition()` for more details.

* httr now imports the methods package so that it works when called with
  Rscript.

* New automatic parsers for mime types `text/tab-separated-values` and
  `text/csv` (#49)

* Add support for `fragment` in url building/parsing (#70, thanks to
  @craigcitro).

## Bug fixes

* If you supply multiple headers of the same name, the value of the most
  recently set header will always be used.

* Urls with missing query param values (e.g. `http://x.com/?q=`) are now
  parsed correctly (#27). The names of query params are now also escaped
  and unescaped correctly when parsing and building urls.

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
