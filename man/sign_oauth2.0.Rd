\name{sign_oauth2.0}
\alias{sign_oauth2.0}
\title{Sign an OAuth 2.0 request}
\usage{
sign_oauth2.0(access_token, as_header = TRUE)
}
\arguments{
  \item{access_token}{access token as retrieved by
  \code{\link{oauth2.0_token}}}

  \item{as_header}{if TRUE, pass the authorization as a
  header instead of in the url}
}
\value{
a \code{config} object which can be used with any http
request.
}
\description{
Sign an OAuth 2.0 request
}
\seealso{
Other OAuth: \code{\link{oauth1.0_token}},
\code{\link{oauth2.0_token}}, \code{\link{oauth_app}},
\code{\link{oauth_endpoint}}, \code{\link{sign_oauth1.0}}
}

