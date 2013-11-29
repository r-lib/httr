\name{oauth2.0_token}
\alias{oauth2.0_token}
\title{Retrieve OAuth 2.0 access token.}
\usage{
oauth2.0_token(endpoint, app, scope = NULL, type = NULL, use_oob = FALSE)
}
\arguments{
  \item{type}{content type used to override incorrect
  server response}

  \item{scope}{a character vector of scopes to request.}

  \item{use_oob}{if FALSE, use a local webserver for the
  OAuth dance.  Otherwise, provide a URL to the user and
  prompt for a validation code.}

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

