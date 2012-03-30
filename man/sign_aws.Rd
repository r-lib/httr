\name{sign_aws}
\alias{sign_aws}
\title{Sign an AWS url.}
\usage{
  sign_aws(url, service, access_key = NULL,
    secret_key = NULL)
}
\arguments{
  \item{url}{the url to sign}

  \item{service}{the name of the Amazon service you are
  using.  e.g.  \code{"AWSMechanicalTurkRequester"}}

  \item{access_key}{your amazon access key}

  \item{secret_key}{your amazon secret key}
}
\description{
  Sign an AWS url.
}
\section{Keys}{
  To use amazon mturk you need both an access key
  (analogous to a username) and a secret key (analogous to
  a password). Both are available from
  \url{https://aws-portal.amazon.com/gp/aws/developer/account/index.html?action=access-key#access_credentials}.

  There are three ways to specify your keys:

  \itemize{ \item As parameters to this function:
  \code{access_key}, \code{secret_key} \item As options,
  \code{options(AWS_KEY = x)}, \code{options(AWS_SECRET_KEY
  = y)} \item As environmental variables: \code{AWS_KEY},
  \code{AWS_SECRET_KEY} }

  If your code is publically available (such as through a
  public svn or git repository) DO NOT store your secret in
  your code, as this will allow anyone to charge jobs to
  your amazon account. If you do accidentally publish it,
  go to the url above, deactivate the old keys and generate
  new access and secret keys.
}

