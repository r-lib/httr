\name{new_oauth}
\alias{new_oauth}
\title{new_oauth}
\usage{
  new_oauth(base_url, authorize, access, scope, appname,
    key = NULL, secret = NULL, file = NULL, request = NULL,
    type = NULL, margin = 30)
}
\arguments{
  \item{file}{where to save the token or NULL to not save.}

  \item{margin}{threshold for determing if a token has
  expired, specified in number of seconds.}

  \item{base_url}{option url to use as base for
  \code{request}, \code{authorize} and \code{access} urls.}

  \item{authorize}{url to send client to for authorisation}

  \item{access}{url used to exchange unauthenticated for
  authenticated token.}

  \item{request}{url used to request initial
  (unauthenticated) token.  If using OAuth, leave as
  \code{NULL}.}

  \item{appname}{name of the application.  This is not used
  for OAuth, but is used to make it easier to identifier
  different applications and provide a consistent ways of
  storing secrets in environmental variables.}

  \item{key}{consumer key (equivalent to a user name). As a
  convenient shortcut, if \code{key} is \code{NULL}, we'll
  look in the environment variable
  \code{APPNAME_CONSUMER_ID}}

  \item{secret}{consumer secret.  This is equivalent to a
  password and should not be stored in publicly visible
  code.  As a convenient shortcut, if \code{secret} is
  \code{NULL}, we'll look in the environment variable
  \code{APPNAME_CONSUMER_SECRET}}

  \item{scope}{a character string of scopes to apply for.}

  \item{type}{content type used to override incorrect
  server response}
}
\description{
  Create a new oauth2.0 reference object
}
\details{
  Uses httr's oauth2.0 functions to create of a new
  oauth2.0 object of reference class oauth2.0
}

