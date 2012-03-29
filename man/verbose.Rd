\name{verbose}
\alias{verbose}
\title{Give verbose output.}
\usage{
  verbose()
}
\arguments{
  \item{x}{a handle}

  \item{value}{a logical vector of length 1.}
}
\description{
  A verbose connection provides much more information about
  the flow of information between the client and server.
}
\examples{
b <- new_bin()
GET(handle = b, config = verbose())
}

