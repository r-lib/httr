library(httr)

# Create an application at https://github.com/settings/applications and 
# then replace these values with your values for the client id and secret. 
client_id <- Sys.getenv("GITHUB_CLIENT_ID")
client_secret <- Sys.getenv("GITHUB_SECRET")

# Authorise github user for this application.
authorise_url <- modify_url("https://github.com/login/oauth/authorize",
 query = list(client_id = client_id))

code <- oauth_credential(authorise_url)$code
# For a real application you should only do this once and then store the 
# result somewhere.

# Use authorisation code to get (temporary) access token
req <- POST("https://github.com/login/oauth/access_token", 
  query = list(
    client_id = client_id, 
    client_secret = client_secret, 
    code = code), 
  config = accept_json())
token <- parsed_content(req)$access_token

# Use access token to get user specific data
GET("https://api.github.com/user/followers", 
  query = list(access_token = token))
