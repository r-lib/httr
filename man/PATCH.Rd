\name{PATCH}
\alias{PATCH}
\title{Send PATCH request to a server.}
\usage{
PATCH(url = NULL, config = list(), body = NULL, multipart = TRUE, ...,
  handle = NULL)
}
\arguments{
  \item{body}{Use \code{NULL} for an empty body, a
  length-one character or file. Each component should
  either be a character value or the object returned by
  \code{\link[RCurl]{fileUpload}} (if you want to upload a
  file).  If \code{multipart} is \code{FALSE} elements will
  be escaped automatically - if the values have already
  been escaped, then use `I` to prevent double-escaping.}

  \item{multipart}{Should the form be send as
  multipart/form-data (\code{TRUE}), or
  application/x-www-form-urlencoded (\code{FALSE}).  Files
  can not be uploaded when \code{FALSE}.}
}
\description{
Send PATCH request to a server.
}

