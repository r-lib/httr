library(rjson)
library(whisker)


gists_r <- GET("http://gist.github.com/api/v1/json/gists/hadley")
gists <- fromJSON(as.character(gists_r))$gists
str(gists)

gist_r <- GET(str_c("http://gist.github.com/api/v1/json/", gists[[1]]$repo))
gist <- fromJSON(as.character(gist_r))


# url <- "http://gist.github.com/raw/{{gist_id}}/{{filename}}"