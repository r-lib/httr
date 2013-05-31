\name{oauth2.0_GET}
\alias{oauth2.0_GET}
\title{oauth2.0_GET}
\usage{
  oauth2.0_GET(url, oauth2.0_connection, ...)
}
\arguments{
  \item{oauth2.0_connection}{oauth connection to use.}

  \item{url}{the url of the page to retrieve}

  \item{...}{Further parameters, such as \code{query},
  \code{path}, etc, passed on to \code{\link{modify_url}}.
  These parameters must be named.}
}
\description{
  Perform a GET request using the new oauth2.0 object.
}

