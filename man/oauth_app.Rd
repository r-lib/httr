\name{oauth_app}
\alias{oauth_app}
\title{Create an OAuth application.}
\usage{
  oauth_app(appname, key, secret = NULL)
}
\arguments{
  \item{appname}{name of the application}

  \item{key}{consumer key}

  \item{secret}{consumer secret.  This should not be stored
  in publicly visible code, so as a convenient shortcut, if
  this value is \code{NULL}, we'll look in the environment
  variable \code{APPNAME_CONSUMER_SECRET}}
}
\description{
  The OAuth framework doesn't match perfectly to this usage
  scenario. Effectively, each use of the package is it's
  own application - this means that for every web site you
  want to access, you need to create your own application
  on the webiste. See the demos for examples of using OAuth
  with github, twitter and vimeo
}
\details{
  If the application needs a callback url, supply the value
  of \code{\link{oauth_callback}}
}
\seealso{
  Other OAuth: \code{\link{oauth1.0_token}}
}

