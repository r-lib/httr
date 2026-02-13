# Popular oauth endpoints.

Provides some common OAuth endpoints.

## Usage

``` r
oauth_endpoints(name)
```

## Arguments

- name:

  One of the following endpoints: linkedin, twitter, vimeo, google,
  facebook, github, azure.

## Examples

``` r
oauth_endpoints("twitter")
#> <oauth_endpoint>
#>  request:   https://api.twitter.com/oauth/request_token
#>  authorize: https://api.twitter.com/oauth/authenticate
#>  access:    https://api.twitter.com/oauth/access_token
```
