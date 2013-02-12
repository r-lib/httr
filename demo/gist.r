library(httr)

# get list of gists
gists_r <- GET("https://api.github.com/users/hadley/gists")
gists   <- content(gists_r)

# retreive gist urls
gist_urls <- sapply(gists, '[[', 'url')

# get contents of the first gist
gist1 = GET(gist_urls[[1]])
str(gist1)
