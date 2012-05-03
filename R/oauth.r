# The OAuth framework doesn't match perfectly to this usage scenario.
# Effectively, each use of the package is it's own application - this means
# that for every web site you want to access, you need to create your own
# application on the webiste. See the demos for examples of using OAuth with
# github, twitter and vimeo
#
# Twitter calls this single-user OAuth, and provides a convenient way of 
# generating the access token and secret without having to implement the full
# 3-legged authentication process.

oauth1.0 <- function(url, method = "GET", consumer_key, consumer_secret, access_token, access_secret) {
  method <- toupper(method)

  url <- parse_url(url)
  base_url <- build_url(url[c("scheme", "hostname", "port", "url", "path")])

  oauth <- list(
    oauth_consumer_key = consumer_key,
    oauth_nonce = nonce(),
    oauth_signature_method = "HMAC-SHA1",
    oauth_timestamp = as.integer(Sys.time()),
    oauth_version = "1.0",
    oauth_token = access_token
  )

  # Collect params, escape, sort and concatenated into a single string
  params <- c(url$params, oauth)
  params_esc <- setNames(curlEscape(params), curlEscape(names(params)))
  params_srt <- sort_names(params_esc)
  params_str <- str_c(names(params_srt), "=", params_srt, collapse = "&")

  # Generate hmac signature
  key <- str_c(curlEscape(consumer_secret), "&", curlEscape(access_secret))
  base_string <- str_c(method, "&", curlEscape(base_url), "&",
   curlEscape(params_str))

  oauth$oauth_signature <- hmac_sha1(key, base_string)
  oauth
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

oauth <- function(service, access_key, secret_key) {
  
  config(signature = function(method, url) {
    sign_aws(url, service = service, access_key = access_key, 
      secret_key = secret_key)
  })
  
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

  callback_url <- file.path(server$full_url("OAuth"), "cred") 
  print(callback_url)
  
  message("Waiting for authentication in browser...")
  BROWSE(request_url, query = list(redirect_uri = callback_url))
  
  # wait until we get a response
  while(is.null(info)) {
    Sys.sleep(1)
  }
  message("Authentication complete.")

  server$remove("OAuth")
  server$stop()
  
  info
}
