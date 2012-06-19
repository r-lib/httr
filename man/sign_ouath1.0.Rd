\name{sign_ouath1.0}
\alias{sign_ouath1.0}
\title{Sign an OAuth 1.0 request}
\usage{
  sign_ouath1.0(app, token = NULL, token_secret = NULL,
    ...)
}
\arguments{
  \item{app}{OAuth application details, as created by
  \code{\link{oauth_app}}}

  \item{token,token_secret}{access token and corresponding
  secret, as retrieved by \code{\link{oauth1.0_token}}}

  \item{...}{other named argument to be included in the
  OAuth authorisation header.  \code{extra = 1} will sent
  as \code{OAUTH_EXTRA = 1} and included in signature
  generation.}
}
\value{
  a \code{config} object which can be used with any http
  request.
}
\description{
  Sign an OAuth 1.0 request
}
\seealso{
  Other OAuth: \code{\link{oauth1.0_token}},
  \code{\link{oauth2.0_token}}, \code{\link{oauth_app}},
  \code{\link{oauth_endpoint}}, \code{\link{sign_ouath2.0}}
}

