library(httr)

# 1. Find OAuth settings for linkedin:
#    https://developer.linkedin.com/documents/linkedins-oauth-details
oauth_endpoints("linkedin")

# 2. Register an application at https://www.linkedin.com/secure/developer
#    Insert your values below - if secret is omitted, it will look it up in
#    the LINKEDIN_CONSUMER_SECRET environmental variable.
myapp <- oauth_app("linkedin", key = "outmkw3859gy")

# 3. Get OAuth credentials
# LinkedIn doesn't implement OAuth 2.0 standard
# (http://tools.ietf.org/html/rfc6750#section-2) so we extend the Token2.0
# ref class to implement a custom sign method.
TokenLinkedIn <- setRefClass("TokenLinkedIn", contains = "Token2.0",
  methods = list(
    sign = function(method, url) {
      url <- parse_url(url)
      url$query$oauth2_access_token <- credentials$access_token
      list(url = build_url(url), config = config())
    }
  ), where = asNamespace("httr")
)
token <- new_token(TokenLinkedIn, oauth_endpoints("linkedin"), myapp)

# 4. Use API
req <- GET("https://api.linkedin.com/v1/people/~", config(token = token))
stop_for_status(req)
content(req)
