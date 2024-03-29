% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/media-parse.r
\name{parse_media}
\alias{parse_media}
\title{Parse a media type.}
\usage{
parse_media(x)
}
\arguments{
\item{x}{String to parse}
}
\description{
Parsed according to RFC 2616, as at
\url{https://www.rfc-editor.org/rfc/rfc2616#section-3.7}.
}
\details{
A simplified minimal EBNF is:
\itemize{
\item media-type     = \verb{type "/" subtype *( ";" parameter )}
\item type           = \code{token}
\item subtype        = \code{token}
\item parameter      = \verb{attribute "=" value}
\item attribute      = \code{token}
\item value          = \code{token | quoted-string}
\item token          = \verb{1*<any CHAR except CTLs or ()<>@,;:\\"/[]?=\\\{\\\}}
}
}
\examples{
parse_media("text/plain")
parse_media("text/plain; charset=utf-8")
parse_media("text/plain; charset=\"utf-8\"")
parse_media("text/plain; randomparam=\";=;=\"")
}
\keyword{internal}
