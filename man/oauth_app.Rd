\name{oauth_app}
\alias{oauth_app}
\title{Create an OAuth application.}
\usage{
  oauth_app(appname, key, secret = NULL)
}
\arguments{
  \item{appname}{name of the application.  This is not used
  for OAuth, but is used to make it easier to identifier
  different applications and provide a consistent ways of
  storing secrets in environmental variables.}

  \item{key}{consumer key (equivalent to a user name)}

  \item{secret}{consumer secret.  This is equivalent to a
  password and should not be stored in publicly visible
  code.  As a convenient shortcut, if \code{secret} is
  \code{NULL}, we'll look in the environment variable
  \code{APPNAME_CONSUMER_SECRET}}
}
\description{
  The OAuth framework doesn't match perfectly to use from
  R. Each user of the package for a particular OAuth
  enabled site must create their own application. See the
  demos for instructions on how to do this for linkedin,
  twitter, vimeo, facebook, github and google.
}
\examples{
\dontrun{
linkedin_app <- oauth_app("linkedin", key = "outmkw3859gy")
github_app <- oauth_app("github", "56b637a5baffac62cad9")
}
}
\seealso{
  Other OAuth: \code{\link{oauth1.0_token}},
  \code{\link{oauth2.0_token}},
  \code{\link{oauth_endpoint}},
  \code{\link{sign_ouath1.0}}, \code{\link{sign_ouath2.0}}
}

