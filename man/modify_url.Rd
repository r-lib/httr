\name{modify_url}
\alias{modify_url}
\title{Modify a url.}
\usage{
  modify_url(url, scheme = NULL, hostname = NULL,
    port = NULL, path = NULL, query = NULL, params = NULL,
    username = NULL, password = NULL)
}
\arguments{
  \item{url}{the url to modify}

  \item{scheme,hostname,port,path,query,params,username,password}{components
  of the url to change}
}
\description{
  Modify a url by first parsing and it then replacing
  components with the non-NULL arguments of this function.
}

