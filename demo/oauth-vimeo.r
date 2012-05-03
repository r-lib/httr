library(httr)

# 1. Register an application at http://vimeo.com/api/applications/new

# 2. Record your consumer key and secret below.  Don't share the secret with 
#    anyone (that's why it's a secret)

consumer_key <- "bd535bc38ed5caccd79330ff33075eb9"
consumer_secret <- "51ab8cb2cbb8b7eb"

# 3. Get an unauthorised request token
url <- "http://vimeo.com/oauth/request_token"
url <- modify_url(url, query = list("oauth_callback" = oauth_callback()))
oauth <- oauth1.0(url, "GET", consumer_key, consumer_secret, NULL, NULL)

response <- GET(url, config = oauth_header(oauth))
token <- parsed_content(response)$oauth_token
secret <- parsed_content(response)$oauth_token_secret

# 4. Authorise the token

authorise <- "http://vimeo.com/oauth/authorize"
authorise <- modify_url(authorise, query = list(
  oauth_token = token, 
  permission = "read"))
cred <- oauth_credential(authorise)

# 5. Exchange request token for access token

access <- "http://vimeo.com/oauth/access_token"
oauth <- oauth1.0(access, "GET", consumer_key, consumer_secret,
  cred$oauth_token, NULL, other_params = list(oauth_verifier = cred$oauth_verifier))

GET(access, config = oauth_header(oauth))
stop_for_status(response)

# For a real application you'd store these - that's now all you need
# to make requests for this user

# 6. Access the api