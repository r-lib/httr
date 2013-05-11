\name{oauth2.0_refresh}
\alias{oauth2.0_refresh}
\title{Refresh OAuth 2.0 access token.}
\usage{
  oauth2.0_refresh(endpoint, app, access_token,
    type = NULL)
}
\arguments{
  \item{endpoint}{An OAuth endpoint, created by
  \code{\link{oauth_endpoint}}}

  \item{app}{An OAuth consumer application, created by
  \code{\link{oauth_app}}}

  \item{access_token}{the access token to refresh}

  \item{type}{content type used to override incorrect
  server response}
}
\description{
  Refresh OAuth 2.0 access token.
}
\seealso{
  Other OAuth: \code{\link{oauth1.0_token}},
  \code{\link{oauth2.0_has_expired}},
  \code{\link{oauth2.0_token}}, \code{\link{oauth_app}},
  \code{\link{oauth_endpoint}},
  \code{\link{sign_oauth1.0}}, \code{\link{sign_oauth2.0}}
}

