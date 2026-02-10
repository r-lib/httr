# Revoke all OAuth tokens in the cache.

Use this function if you think that your token may have been
compromised, e.g. you accidentally uploaded the cache file to github.
It's not possible to automatically revoke all tokens - this function
will warn when it can't.

## Usage

``` r
revoke_all(cache_path = NA)
```

## Arguments

- cache_path:

  Path to cache file. Defaults to `.httr-oauth` in current directory.
