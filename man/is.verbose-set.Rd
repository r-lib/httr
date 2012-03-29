\name{is.verbose<-}
\alias{is.verbose<-}
\title{Set handle verbosity.}
\usage{
  is.verbose(x, value) <- value
}
\arguments{
  \item{x}{a handle}

  \item{value}{a logical vector of length 1.}
}
\description{
  A verbose handle provides much more information about the
  flow of information between the client and server.
}
\examples{
b <- new_bin()
GET(handle = b)
is.verbose(b) <- TRUE
GET(handle = b)
is.verbose(b) <- FALSE
}

