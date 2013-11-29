\name{refresh_oauth2.0}
\alias{refresh_oauth2.0}
\title{Refresh an OAuth 2.0 credential.}
\usage{
refresh_oauth2.0(endpoint, app, credentials)
}
\arguments{
  \item{endpoint}{}

  \item{app}{}

  \item{credential}{}
}
\value{
a new credential
}
\description{
Refreshes the given token, and returns a new credential
with a valid access_token. Based on:
https://developers.google.com/accounts/docs/OAuth2InstalledApp#refresh
}
\seealso{
Other OAuth: \code{\link{init_oauth1.0}},
\code{\link{init_oauth2.0}}, \code{\link{oauth_app}},
\code{\link{oauth_endpoint}}
}

