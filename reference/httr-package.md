# httr makes http easy.

`httr` is organised around the six most common http verbs:
[`GET()`](https://httr.r-lib.org/reference/GET.md),
[`PATCH()`](https://httr.r-lib.org/reference/PATCH.md),
[`POST()`](https://httr.r-lib.org/reference/POST.md),
[`HEAD()`](https://httr.r-lib.org/reference/HEAD.md),
[`PUT()`](https://httr.r-lib.org/reference/PUT.md), and
[`DELETE()`](https://httr.r-lib.org/reference/DELETE.md).

## Details

Each request returns a
[`response()`](https://httr.r-lib.org/reference/response.md) object
which provides easy access to status code, cookies, headers, timings,
and other useful info. The content of the request is available as a raw
vector ([`content()`](https://httr.r-lib.org/reference/content.md)),
character vector
([`text_content()`](https://httr.r-lib.org/reference/content.md)), or
parsed into an R object
([`parsed_content()`](https://httr.r-lib.org/reference/content.md)),
currently for html, xml, json, png and jpeg).

Requests can be modified by various config options like
[`set_cookies()`](https://httr.r-lib.org/reference/set_cookies.md),
[`add_headers()`](https://httr.r-lib.org/reference/add_headers.md),
[`authenticate()`](https://httr.r-lib.org/reference/authenticate.md),
[`use_proxy()`](https://httr.r-lib.org/reference/use_proxy.md),
[`verbose()`](https://httr.r-lib.org/reference/verbose.md), and
[`timeout()`](https://httr.r-lib.org/reference/timeout.md)

httr supports OAuth 1.0 and 2.0. Use
[`oauth1.0_token()`](https://httr.r-lib.org/reference/oauth1.0_token.md)
and
[`oauth2.0_token()`](https://httr.r-lib.org/reference/oauth2.0_token.md)
to get user tokens, and
[`sign_oauth1.0()`](https://httr.r-lib.org/reference/sign_oauth.md) and
[`sign_oauth2.0()`](https://httr.r-lib.org/reference/sign_oauth.md) to
sign requests. The demos directory has twelve demos of using OAuth: four
for 1.0 (linkedin, twitter, vimeo, and yahoo) and eight for 2.0 (azure,
facebook, github, google, linkedin, reddit, yahoo, and yelp).

## See also

Useful links:

- <https://httr.r-lib.org/>

- <https://github.com/r-lib/httr>

- Report bugs at <https://github.com/r-lib/httr/issues>

## Author

**Maintainer**: Hadley Wickham <hadley@posit.co>

Other contributors:

- Posit Software, PBC \[copyright holder, funder\]
