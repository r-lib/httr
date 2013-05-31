\name{oauth2.0_has_expired}
\alias{oauth2.0_has_expired}
\title{Check if an OAuth 2.0 access token has past its use by.}
\usage{
  oauth2.0_has_expired(access_token, margin = 30)
}
\arguments{
  \item{access_token}{the access token to check use_by of}

  \item{margin}{the number of seconds before use_by to use
  as the expiration threshold (default of 5 seconds)}
}
\description{
  Check if an OAuth 2.0 access token has past its use by.
}
\seealso{
  Other OAuth: \code{\link{oauth1.0_token}},
  \code{\link{oauth2.0_refresh}},
  \code{\link{oauth2.0_token}}, \code{\link{oauth_app}},
  \code{\link{oauth_endpoint}},
  \code{\link{sign_oauth1.0}}, \code{\link{sign_oauth2.0}}
}

