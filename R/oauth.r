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