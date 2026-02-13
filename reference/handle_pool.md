# Maintain a pool of handles.

The handle pool is used to automatically reuse Curl handles for the same
scheme/host/port combination. This ensures that the http session is
automatically reused, and cookies are maintained across requests to a
site without user intervention.

## Usage

``` r
handle_pool

handle_find(url)

handle_reset(url)
```

## Format

An environment.
