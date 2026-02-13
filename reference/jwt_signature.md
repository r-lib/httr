# Generate a JWT signature given credentials.

As described in
<https://developers.google.com/identity/protocols/oauth2/service-account>

## Usage

``` r
jwt_signature(
  credentials,
  scope,
  aud,
  sub = NULL,
  iat = as.integer(Sys.time()),
  exp = iat + duration,
  duration = 60L * 60L
)
```

## Arguments

- credentials:

  Parsed contents of the credentials file.

- scope:

  A space-delimited list of the permissions that the application
  requests.

- aud:

  A descriptor of the intended target of the assertion. This typically
  comes from the service auth file.

- sub:

  The email address of the user for which the application is requesting
  delegated access.

- iat:

  The time the assertion was issued, measured in seconds since 00:00:00
  UTC, January 1, 1970.

- exp:

  The expiration time of the assertion, measured in seconds since
  00:00:00 UTC, January 1, 1970. This value has a maximum of 1 hour from
  the issued time.

- duration:

  Duration of token, in seconds.

## Examples

``` r
if (FALSE) { # \dontrun{
cred <- jsonlite::fromJSON("~/Desktop/httrtest-45693cbfac92.json")
jwt_signature(cred, "https://www.googleapis.com/auth/userinfo.profile")
} # }
```
