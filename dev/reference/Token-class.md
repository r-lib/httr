# OAuth token objects.

These objects represent the complete set of data needed for OAuth
access: an app, an endpoint, cached credentials and parameters. They
should be created through their constructor functions
[`oauth1.0_token()`](https://httr.r-lib.org/dev/reference/oauth1.0_token.md)
and
[`oauth2.0_token()`](https://httr.r-lib.org/dev/reference/oauth2.0_token.md).

## Format

An R6 class object.

## Methods

- `cache()`: caches token to disk

- `sign(method, url)`: returns list of url and config

- `refresh()`: refresh access token (if possible)

- `validate()`: TRUE if the token is still valid, FALSE otherwise

## Caching

OAuth tokens are cached on disk in a file called `.httr-oauth` saved in
the current working directory. Caching is enabled if:

- The session is interactive, and the user agrees to it, OR

- The `.httr-oauth` file is already present, OR

- `getOption("httr_oauth_cache")` is `TRUE`

You can suppress caching by setting the `httr_oauth_cache` option to
`FALSE`.

Tokens are cached based on their endpoint and parameters.

The cache file should not be included in source code control or R
packages (because it contains private information), so httr will
automatically add the appropriate entries to `.gitignore` and
`.Rbuildignore` if needed.
