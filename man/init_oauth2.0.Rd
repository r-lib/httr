\name{init_oauth2.0}
\alias{init_oauth2.0}
\title{Retrieve OAuth 2.0 access token.}
\usage{
init_oauth2.0(endpoint, app, scope = NULL, type = NULL,
  use_oob = getOption("httr_oob_default"))
}
\arguments{
  \item{type}{content type used to override incorrect
  server response}

  \item{scope}{a character vector of scopes to request.}

  \item{use_oob}{if FALSE, use a local webserver for the
  OAuth dance.  Otherwise, provide a URL to the user and
  prompt for a validation code. Defaults to the of the
  \code{"httr_oob_default"} default.}
}
\description{
See demos for use.
}
\seealso{
Other OAuth: \code{\link{init_oauth1.0}},
\code{\link{oauth_app}}, \code{\link{oauth_endpoint}},
\code{\link{refresh_oauth2.0}},
\code{\link{sign_oauth1.0}}, \code{\link{sign_oauth2.0}}
}

