gists_r <- GET("http://gist.github.com/api/v1/json/gists/hadley")
gists <- parsed_content(gists_r)$gists
str(gists)

gist_r <- GET(str_c("http://gist.github.com/api/v1/json/", gists[[1]]$repo))
gist <- parsed_content(gist_r)


library(whisker)
# url <- "http://gist.github.com/raw/{{gist_id}}/{{filename}}"