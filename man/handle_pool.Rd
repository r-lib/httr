\docType{data}
\name{handle_pool}
\alias{handle_pool}
\title{Maintain a pool of handles.}
\format{An environment.}
\usage{
  handle_pool
}
\description{
  The handle pool is used to automatically reuse Curl
  handles for the same scheme/host/port combination.  This
  ensures that the http session is automatically reused,
  and cookies are maintained across requests to a site
  without user intervention.
}
\keyword{datasets}
\keyword{internal}

