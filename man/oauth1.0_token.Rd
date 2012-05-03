\name{oauth1.0_token}
\alias{oauth1.0_token}
\title{Perform the OAuth 1.0 authentication dance.}
\usage{
  oauth1.0_token(endpoint, app, permission = NULL)
}
\arguments{
  \item{endpoint}{An OAuth endpoint, created by
  \code{\link{oauth_endpoint}}}

  \item{app}{An OAuth consumer application, created by
  \code{\link{oauth_app}}}

  \item{permission}{optional, a string of permissions to
  ask for.}
}
\description{
  Perform the OAuth 1.0 authentication dance.
}
\seealso{
  Other OAuth: \code{\link{oauth_app}}
}

