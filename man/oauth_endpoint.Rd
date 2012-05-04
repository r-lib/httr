\name{oauth_endpoint}
\alias{oauth_endpoint}
\title{Describe an OAuth endpoint.}
\usage{
  oauth_endpoint(request = NULL, authorize, access,
    base_url = NULL)
}
\arguments{
  \item{request}{url used to request initial
  (unauthenticated) token.  If using OAuth, leave as
  \code{NULL}.}

  \item{authorize}{url to send client to for authorisation}

  \item{access}{url used to exchange unauthenticated for
  authenticated token.}

  \item{base_url}{option url to use as base for
  \code{request}, \code{authorize} and \code{access} urls.}
}
\description{
  Describe an OAuth endpoint.
}
\examples{
linkedin <- oauth_endpoint("requestToken", "authorize", "accessToken",
 base_url = "https://api.linkedin.com/uas/oauth/")
github <- oauth_endpoint(NULL, "authorize", "access_token",
  base_url = "https://github.com/login/oauth")
facebook <- oauth_endpoint(
  authorize = "https://www.facebook.com/dialog/oauth",
  access = "https://graph.facebook.com/oauth/access_token")
}
\seealso{
  Other OAuth: \code{\link{oauth_app}},
  \code{\link{oauth1.0_token}},
  \code{\link{oauth2.0_token}},
  \code{\link{sign_ouath1.0}}, \code{\link{sign_ouath2.0}}
}

