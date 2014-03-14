#' Sign an OAuth request
#'
#' Deprecated. Instead create a config object directly using
#' \code{config(token = my_token)}.
#'
#' @keywords internal
#' @name sign_oauth
NULL

#' @export
#' @rdname sign_oauth
sign_oauth1.0 <- function(app, token = NULL, token_secret = NULL, ...) {
  credentials <- list(oauth_token = token, oauth_token_secret = token_secret)
  token <- Token1.0(endpoint = NULL, app = app, credentials = credentials)
  config(token = token)
}

#' @export
#' @rdname sign_oauth
sign_oauth2.0 <- function(access_token, as_header = TRUE) {
  stop("Deprecated: supply token object to config directly", call. = FALSE)
}

oauth_signature <- function(url, method = "GET", app, token = NULL, token_secret = NULL, ...) {
  method <- toupper(method)

  url <- parse_url(url)
  base_url <- build_url(url[c("scheme", "hostname", "port", "url", "path")])

  oauth <- compact(list(
    oauth_consumer_key = app$key,
    oauth_nonce = nonce(),
    oauth_signature_method = "HMAC-SHA1",
    oauth_timestamp = as.integer(Sys.time()),
    oauth_version = "1.0",
    oauth_token = token,
    oauth_callback = oauth_callback()
  ))

  other_params <- list(...)
  if (length(other_params) > 0) {
    names(other_params) <- str_c("oauth_", names(other_params))
    oauth <- c(oauth, other_params)
  }

  # Collect params, oauth_encode, sort and concatenated into a single string
  params <- c(url$query, oauth)
  params_esc <- setNames(oauth_encode(params), oauth_encode(names(params)))
  params_srt <- sort_names(params_esc)
  params_str <- str_c(names(params_srt), "=", params_srt, collapse = "&")

  # Generate hmac signature
  key <- str_c(oauth_encode(app$secret), "&", oauth_encode(token_secret))
  base_string <- str_c(method, "&", oauth_encode(base_url), "&",
   oauth_encode(params_str))
  oauth$oauth_signature <- hmac_sha1(key, base_string)

  sort_names(oauth)
}

oauth_header <- function(info) {
  oauth <- str_c("OAuth ", str_c(
    oauth_encode(names(info)), "=\"", oauth_encode(info), "\"", collapse = ", "))
  add_headers(Authorization = oauth)
}

oauth_encode <- function(x) vapply(x, oauth_encode1, character(1))

# As described in http://tools.ietf.org/html/rfc5849#page-29
oauth_encode1 <- function(x) {
  encode <- function(x) str_c("%", toupper(as.character(charToRaw(x))))

  x <- as.character(x)
  chars <- str_split(x, "")[[1]]
  ok <- !str_detect(chars, "[^A-Za-z0-9_.~-]")

  if (all(ok)) return(x)

  chars[!ok] <- unlist(lapply(chars[!ok], encode))
  str_c(chars, collapse = "")
}
