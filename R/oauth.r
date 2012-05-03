# The OAuth framework doesn't match perfectly to this usage scenario.
# Effectively, each use of the package is it's own application - this means
# that for every web site you want to access, you need to create your own
# application on the webiste. See the demos for examples of using OAuth with
# github, twitter and vimeo
#
# Twitter calls this single-user OAuth, and provides a convenient way of 
# generating the access token and secret without having to implement the full
# 3-legged authentication process.


oauth <- function(url, method = "GET", app, token = NULL, token_secret = NULL, ...) {
  method <- toupper(method)

  url <- parse_url(url)
  base_url <- build_url(url[c("scheme", "hostname", "port", "url", "path")])

  oauth <- compact(list(
    oauth_consumer_key = app$key,
    oauth_nonce = nonce(),
    oauth_signature_method = "HMAC-SHA1",
    oauth_timestamp = as.integer(Sys.time()),
    oauth_version = "1.0",
    oauth_token = token
  ))

  other_params <- list(...)
  if (length(other_params) > 0) {
    names(other_params) <- str_c("oauth_", names(other_params))
    oauth <- c(oauth, other_params)    
  }

  # Collect params, escape, sort and concatenated into a single string
  params <- c(url$query, oauth)
  params_esc <- setNames(curlEscape(params), curlEscape(names(params)))
  params_srt <- sort_names(params_esc)
  params_str <- str_c(names(params_srt), "=", params_srt, collapse = "&")

  # Generate hmac signature
  key <- str_c(curlEscape(app$secret), "&", curlEscape(token_secret))
  base_string <- str_c(method, "&", curlEscape(base_url), "&",
   curlEscape(params_str))
  oauth$oauth_signature <- hmac_sha1(key, base_string)  
  
  sort_names(oauth)
}

oauth_callback <- function() {
  "http://localhost:1410/custom/OAuth/cred"
}

oauth_header <- function(info) {
  ouath <- str_c("OAuth ", str_c(
    curlEscape(names(info)), "=\"", curlEscape(info), "\"", collapse = ", "))
  add_headers(Authorization = ouath)
}

nonce <- function(length = 10) {
  paste(sample(c(letters, LETTERS, 0:9), length, replace = TRUE), 
    collapse = "")
}

#' @param request If using OAuth, leave this null
oauth_endpoint <- function(request = NULL, authorize, access, base_url = NULL) {
  if (!is.null(base_url)) {
    path <- parse_url(base_url)$path
    list(
      request = modify_url(base_url, path = file.path(path, request)),
      authorize = modify_url(base_url, path = file.path(path, authorize)),
      access = modify_url(base_url, path = file.path(path, access))
    )    
  } else {
    list(request = request, authorize = authorize, access = access)
  }
}

#' Create an OAuth application.
#'
#' @param appname name of the application
#' @param key consumer key 
#' @param secret consumer secret.  This should not be stored in publicly
#'   visible code, so as a convenient shortcut, if this value is \code{NULL},
#'   we'll look in the environment variable \code{APPNAME_CONSUMER_SECRET}
#' @export
#' @family OAuth
oauth_app <- function(appname, key, secret = NULL) {
  if (is.null(secret)) {
    env_name <- str_c(toupper(appname), "_CONSUMER_SECRET")
    secret <- Sys.getenv(env_name)
    if (secret == "") {
      stop("Couldn't find secret in environment variable ", env_name, 
        call. = FALSE)
    }
    message("Using secret stored in environment variable ", env_name)
  }
  list(secret = secret, key = key)
}

#' Perform the OAuth 1.0 authentication dance.
#'
#' @param endpoint An OAuth endpoint, created by \code{\link{oauth_endpoint}}
#' @param app An OAuth consumer application, created by
#'    \code{\link{oauth_app}}
#' @param permission optional, a string of permissions to ask for.
#' @export
#' @family OAuth
oauth1.0 <- function(endpoint, app, permission = NULL) {
  # 1. Get an unauthorised request token
  request <- endpoint$request
  oauth <- oauth(request, "GET", app, callback = oauth_callback())
  
  response <- GET(request, config = oauth_header(oauth))
  stop_for_status(response)
  params <- parse_query(text_content(response))
  token <- params$oauth_token
  secret <- params$oauth_token_secret
  
  # 2. Authorise the token
  authorise <- modify_url(endpoint$authorize, query = list(
    oauth_token = token, 
    permission = "read"))
  verifier <- oauth_credential(authorise)$oauth_verifier
  
  # 3. Request access token
  access <- endpoint$access
  oauth <- oauth(access, "GET", app, token, secret,
    verifier = verifier)
  
  response <- GET(access, config = oauth_header(oauth))
  stop_for_status(response)
  parse_query(text_content(response))
}

oauth2.0 <- function(endpoint, app, scope = NULL) {
  authorize <- modify_url(endpoint$authorize, query = compact(list(
      client_id = app$key, 
      scope = scope, 
      redirect_uri = oauth_callback(),
      response_type = "code",
      state = nonce())))
  code <- oauth_credential(authorize)$code

  # Use authorisation code to get (temporary) access token
  req <- POST(endpoint$access,  multipart = FALSE,
    body = list(
      client_id = app$key, 
      client_secret = app$secret, 
      redirect_uri = oauth_callback(),
      grant_type = "authorization_code",
      code = code))
  parsed_content(req)
}

oauth_credential <- function(request_url) {
  if (!require("Rook")) {
    stop("Rook package required to capture OAuth credentials")
  }
  
  info <- NULL
  listen <- function(env) {
    req <- Request$new(env)    
    info <<- req$params()
    
    res <- Response$new()
    res$header("Content-type", "text/plain")
    res$write("Authentication complete - you can now close this page and ")
    res$write("return to R.")
    res$finish()
  }
  
  server <- Rhttpd$new()
  server$stop()
  server$add(listen, name = "OAuth")
  server$start(port = 1410, quiet = TRUE)

  message("Waiting for authentication in browser...")
  Sys.sleep(1)
  BROWSE(request_url)
  
  # wait until we get a response
  while(is.null(info)) {
    Sys.sleep(1)
  }
  message("Authentication complete.")

  server$remove("OAuth")
  server$stop()
  
  info
}
