\name{oauth1.0_token}
\alias{oauth1.0_token}
\title{Retrieve OAuth 1.0 acces token.}
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
  See demos for use.
}
\seealso{
  Other OAuth: \code{\link{oauth2.0_token}},
  \code{\link{oauth_app}}, \code{\link{oauth_endpoint}},
  \code{\link{sign_oauth1.0}}, \code{\link{sign_oauth2.0}}
}

