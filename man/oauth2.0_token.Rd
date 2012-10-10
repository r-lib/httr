\name{oauth2.0_token}
\alias{oauth2.0_token}
\title{Retrieve OAuth 2.0 access token.}
\usage{
  oauth2.0_token(endpoint, app, scope = NULL, type = NULL)
}
\arguments{
  \item{type}{content type used to override incorrect
  server response}

  \item{scope}{a character string of scopes to apply for.}

  \item{endpoint}{An OAuth endpoint, created by
  \code{\link{oauth_endpoint}}}

  \item{app}{An OAuth consumer application, created by
  \code{\link{oauth_app}}}
}
\description{
  See demos for use.
}
\seealso{
  Other OAuth: \code{\link{oauth1.0_token}},
  \code{\link{oauth_app}}, \code{\link{oauth_endpoint}},
  \code{\link{sign_oauth1.0}}, \code{\link{sign_oauth2.0}}
}

