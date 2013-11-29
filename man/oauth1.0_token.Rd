\name{oauth1.0_token}
\alias{oauth1.0_token}
\title{Generate an oauth1.0 token.}
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
\value{
A \code{Token1.0} reference class (RC) object.
}
\description{
This is the final object in the OAuth dance - it
encapsulates the app, the endpoint, other parameters and
the received credentials.
}
\seealso{
Other OAuth: \code{\link{oauth2.0_token}},
\code{\link{oauth_app}}, \code{\link{oauth_endpoint}},
\code{\link{refresh_oauth2.0}}
}

