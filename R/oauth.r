# The OAuth framework doesn't match perfectly to this usage scenario.
# Effectively, each use of the package is it's own application - this means
# that for every web site you want to access, you need to create your own
# application on the webiste. See the demos for examples of using OAuth with
# github, twitter and vimeo

sign_oauth <- function(url, method = "GET", consumer_key, consumer_secret, token_secret = "") {
  url <- parse_url(url)
  
  url$params$oauth_consumer_key <- consumer_key
  url$params$oauth_nonce <- nonce()
  url$params$oauth_signature_method <- "HMAC-SHA1"
  url$params$oauth_timestamp <- as.integer(Sys.time())
  url$params$oauth_version <- "1.0"
  
  params <- url$params[order(names(url$params))]
  params_str <- str_c(names(params), "=", params, collapse = "&")
  
  url_str <- build_url(url[c("scheme", "hostname", "port", "url")])
  
  base_string <- str_c(method, curlEscape(url_str), curlEscape(param$str))
  key <- str_c(consumer_secret, "&", token_secret)
  
  
  sig <- hmac_sha1(key, base_string)
  url$params$oauth_signature <- sig
  
  url
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
