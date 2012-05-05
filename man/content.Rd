\name{content}
\alias{content}
\alias{parsed_content}
\alias{text_content}
\title{Extract content from a request.}
\usage{
  content(x)

  text_content(x)

  parsed_content(x, ...)
}
\arguments{
  \item{...}{additional parameters passed to conversion
  function}

  \item{x}{request object}
}
\description{
  There are currently three ways to retrieve the contents
  of a request: as a raw object, \code{content}, as a
  character vector, \code{text_content}, and as parsed into
  an R object where possible, \code{parsed_content}.
}
\details{
  \code{parsed_content} currently knows about the following
  mime types: \itemize{ \item \code{text/html}:
  \code{\link[XML]{htmlTreeParse}} \item \code{text/xml}:
  \code{\link[XML]{xmlTreeParse}} \item
  \code{application/json}: \code{\link[rjson]{fromJSON}}
  \item \code{application/x-www-form-urlencoded}:
  \code{parse_query} \item \code{image/jpeg}:
  \code{\link[jpeg]{readJPEG}} \item \code{image/png}:
  \code{\link[png]{readPNG}} }
}
\examples{
r <- POST("http://httpbin.org/post", body = list(a = 1, b = 2))
content(r) # binary content
cat(text_content(r), "\\n") # text content
parsed_content(r) # json converted to an R object

rlogo <- parsed_content(GET("http://cran.r-project.org/Rlogo.jpg"))
plot(0:1, 0:1, type = "n")
rasterImage(rlogo, 0, 0, 1, 1)
}
\seealso{
  Other response methods: \code{\link{response}},
  \code{\link{stop_for_status}}
}

