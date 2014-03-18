library(httr)

# 1. Find OAuth settings for vimeo:
#    http://vimeo.com/api/docs/authentication
oauth_endpoints("twitter")

# 2. Register an application at http://vimeo.com/api/applications/new
#    Insert your values below - if secret is omitted, it will look it up in
#    the TWITTER_CONSUMER_SECRET environmental variable.
myapp <- oauth_app("twitter", key = "TYrWFPkFAkn4G5BbkWINYw")

# 3. Get OAuth credentials
twitter_token <- oauth1.0_token(oauth_endpoints("twitter"), myapp)

# 4. Use API
req <- GET("https://api.twitter.com/1.1/statuses/home_timeline.json",
  config(token = twitter_token))
stop_for_status(req)
content(req)
