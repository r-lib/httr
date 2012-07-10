\name{url.exists}
\alias{url.exists}
\title{Check if URL exists}
\usage{
  url.exists(...)
}
\arguments{
  \item{...}{passed to HEAD to perform the request}
}
\value{
  \code{TRUE} when the URL exists (HTTP status = 2xx) and
  \code{FALSE} otherwise
}
\description{
  Checks if a request on a given URL returns a success
  status. Serve a similar purpose to the RCurl function of
  the same name but uses httr conventions.
}
\examples{
url.exists("http://www.google.com")
url.exists("http://www.g00gle.com")
}
\seealso{
  Other response methods: \code{\link{content}},
  \code{\link{parsed_content}}, \code{\link{response}},
  \code{\link{stop_for_status}}, \code{\link{text_content}}
}

