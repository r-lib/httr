# Create a reference class for automatically refreshing OAuth2.0 access tokens 
# created by httr. Optionally save the access token to the file system.

# The following class union is required by the oauth2.0 class to handle optional
# field values.
setClassUnion(
  name = "characterOrNull",
  members = c("character", "NULL")
)

# Create a generator function, oauth2.0_generator, for an oauth2.0 reference
# class. The access token of an object created using this generator should be
# accessed via the getAccessToken method of that object - that method will 
# refresh (and optionally save) the token if it has expired, before returning
# it.
oauth2.0_generator <- setRefClass(
  Class = "oauth2.0",
  fields = list(
    endpoint = "list",
    app = "list",
    scope = "character",
    type = "characterOrNull",
    access_token = "list",
    file = "characterOrNull",
    margin = "numeric"
  ),
  methods = list(
    # When a new oauth2.0 object is initialized, it will either perform an
    # authorisation request for a new access token, or load an existing access
    # token if the optional file exists.
    initialize = function(
      endpoint,
      app,
      scope,
      type,
      file = NULL,
      margin = 30
    ) {
      .self$endpoint <- endpoint
      .self$app <- app
      .self$scope <- scope
      .self$type <- type
      .self$file <- file
      .self$margin <- margin
      # if the no file is provided or it does not exist then...
      if(
        (length(file) >= 1) |
          if(
            !(length(file) >= 1)
          ) {
            !file.exists(file)
          }
      ) {
        # Request authorisation for a new OAuth 2.0 access token
        .self$access_token <- oauth2.0_token(
          endpoint = endpoint,
          app = app,
          scope = scope_url,
          type = type
        )
      }
      # If a file was provided...
      if (!is.null(file)) {
        # and the file exists...
        if (file.exists(file)) {
          # then load the access token and refresh it.
          .self$access_token <- readRDS(file)
          .self$access_token <- .self$getAccessToken()
        } else {
          # otherwise, save the new access token.
          saveRDS(access_token, file = file)
        }
      }
      return(.self)
    },
    getAccessToken = function() {
      # Refresh the access token if it has expired.
      if (
        oauth2.0_has_expired(
          access_token = access_token,
          margin = margin
        )
      ) {
        .self$access_token <- oauth2.0_refresh(
          endpoint = endpoint,
          app = app,
          access_token = access_token,
          type = type
        )
        # If a file is provided, then save the access token.
        if (!is.null(file)) {
          saveRDS(access_token, file = file)
        }
      }
      return(access_token)
    }
  )
)

# The following function, new_oauth, incorporates the use of httr's oauth2.0
# functions to create of a new oauth2.0 object using the
# above generator function.
new_oauth <- function(
  base_url,
  authorize_url,
  access_url,
  scope_url,
  appname,
  client_id,
  client_secret = NULL,
  token_file = NULL,
  type = NULL
) {
  # Define an OAuth endpoint.
  endpoint <- oauth_endpoint(
    request = NULL,
    authorize = authorize_url,
    access = access_url,
    base_url = base_url
  )
  # Define an OAuth application.
  app <- oauth_app(
    appname = appname,
    key = client_id,
    secret = client_secret
  )
  # Create an OAuth2.0 reference object for endpoint and app
  oauth <- oauth2.0_generator$new(
    endpoint = endpoint,
    app = app,
    scope = scope_url,
    type = type,
    file = token_file
  )
  return(oauth)
}

# The following function can be used to perform a GET request using the new oauth2.0 object.
oauth2.0_GET <- function(url, oauth2.0_connection) {
  GET(
    url = url,
    config = sign_oauth2.0(
      access_token = oauth2.0_connection$
        getAccessToken()$access_token
    )
  )
}
