\name{request}
\alias{request}
\title{The response object.}
\description{
  The response object captures all information from a
  request.  It includes fields:
}
\details{
  \itemize{ \item \code{url} the url the request was
  actually sent to (after redirects) \item \code{handle}
  the handle associated with the url \item
  \code{status_code} the http status code \item
  \code{header} a named list of headers returned by the
  server \item \code{cookies} a named list of cookies
  returned by the server \item \code{text} the body of the
  response, as text \item \code{time} request timing
  information \item \code{config} configuration for the
  request
}

