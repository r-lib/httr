\docType{class}
\name{Token-ref-class}
\alias{Token}
\alias{Token-class}
\alias{Token-ref-class}
\alias{Token1.0}
\alias{Token1.0-class}
\alias{Token1.0-ref-class}
\alias{Token2.0}
\alias{Token2.0-class}
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

\section{Caching}{
  OAuth tokens are cached on disk in a file called
  \code{.httr-oauth} saved in the current working
  directory.  Caching is enabled if:

  \itemize{ \item The session is interactive, and the user
  agrees to it, OR \item The \code{.httr-oauth} file is
  already present, OR \item
  \code{getOption("httr_oauth_cache")} is \code{TRUE} }

  You can suppress caching by setting the
  \code{httr_oauth_cache} option to \code{FALSE}.

  The cache file should not be included in source code
  control or R packages (because it contains private
  information), so httr will automatically add the
  appropriate entries to `.gitignore` and `.Rbuildignore`
  if needed.
}
\keyword{internal}

