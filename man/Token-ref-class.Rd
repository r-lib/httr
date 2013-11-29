\name{Token-ref-class}
\alias{Token-ref-class}
\alias{Token1.0-ref-class}
\alias{Token2.0-ref-class}
\title{OAuth token objects.}
\description{
These objects represent the complete set of data needed for
OAuth access: an app, an endpoint, cached credentials and
parameters. They should be created through their
constructor functions \code{\link{oauth1.0_token}} and
\code{\link{oauth2.0_token}}.
}
\section{Methods}{
  \itemize{ \item \code{cache()}: caches token to disk
  \item \code{sign(method, url)}: returns list of url and
  config \item \code{refresh()}: refresh access token (if
  possible) }
}
\keyword{internal}

