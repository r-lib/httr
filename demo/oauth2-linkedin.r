library(httr)

# 1. Find OAuth settings for linkedin:
#    https://developer.linkedin.com/documents/linkedins-oauth-details
oauth_endpoints$linkedin

# 2. Register an application at https://www.linkedin.com/secure/developer
#    Insert your values below - if secret is omitted, it will look it up in
#    the LINKEDIN_CONSUMER_SECRET environmental variable.
myapp <- oauth_app("linkedin", key = "outmkw3859gy")

# 3. Get OAuth credentials
token <- oauth2.0_token(oauth_endpoints$linkedin, myapp)

# But doesn't currently work becaused LinkedIn doesn't implement OAuth 2.0
# standard: http://tools.ietf.org/html/rfc6750#section-2

GET("http://api.linkedin.com/v1/people/~", config(token = token))
