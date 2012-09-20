library(httr)

# Create an app at https://dev.twitter.com/apps, and generate your development
# access token (this lets you skip the first couple of OAuth steps and get
# directly to signing requests.
#
# Replace the following four variables with the values your recieve.

myapp <- oauth_app("twitter", key = "TYrWFPkFAkn4G5BbkWINYw")

sig <- sign_oauth1.0(myapp,
  token = "69133574-FZ9GJlJ57V0SVdNAzo71mQZSUrpUbiJZBVpDmbYkd",
  token_secret = Sys.getenv("TWITTER_ACCESS_SECRET"))

GET("https://api.twitter.com/1/statuses/home_timeline.json", sig)
