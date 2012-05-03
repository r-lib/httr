library(httr)

# Create an app at https://dev.twitter.com/apps, and generate your development
# access token (this lets you skip the first couple of OAuth steps and get
# directly to signing requests.
#
# Replace the following four variables with the values your recieve.

consumer_key <- Sys.getenv("TWITTER_CONSUMER_KEY")
consumer_secret <- Sys.getenv("TWITTER_CONSUMER_SECRET")
access_token <- Sys.getenv("TWITTER_ACCESS_TOKEN")
access_secret <- Sys.getenv("TWITTER_ACCESS_SECRET")

home <- "https://api.twitter.com/1/statuses/home_timeline.json"
# Generate oauth1.0 signature
oauth <- oauth1.0(home, "GET", consumer_key, consumer_secret, 
  access_token, access_secret)

# Use it to request the home timeline
GET(home, config = oauth_header(oauth))