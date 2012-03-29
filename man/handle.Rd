\name{handle}
\alias{handle}
\title{Create a handle tied to a particular host.}
\usage{
  handle(url)
}
\arguments{
  \item{url}{full url to site}
}
\description{
  This handle preserves settings and cookies across
  multiple requests. It is the foundation of all requests
  performed through the httr package, although it will
  mostly be hidden from the user.
}
\examples{
handle("http://google.com")
handle("https://google.com")
}

