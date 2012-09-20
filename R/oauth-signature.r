#' Sign an OAuth 1.0 request
#'
#' @param app OAuth application details, as created by
#'   \code{\link{oauth_app}}
#' @param token,token_secret access token and corresponding secret, as
#'   retrieved by \code{\link{oauth1.0_token}}
#' @param ... other named argument to be included in the OAuth authorisation
#'   header.  \code{extra = 1} will sent as \code{OAUTH_EXTRA = 1} and
#'   included in signature generation.
#' @return a \code{config} object which can be used with any http request.
#' @family OAuth
#' @export
sign_oauth1.0 <- function(app, token = NULL, token_secret = NULL, ...) {
  config(signature = function(method, url) {
    oauth <- oauth_signature(url, method, app, token, token_secret, ...)
    list(url = url, config = oauth_header(oauth))
  })
}

#' Sign an OAuth 2.0 request
#'
#' @family OAuth
#' @param access_token access token as retrieved by
#'    \code{\link{oauth1.0_token}}
#' @return a \code{config} object which can be used with any http request.
#' @export
sign_oauth2.0 <- function(access_token) {
  config(signature = function(method, url) {
    url <- parse_url(url)
    url$query$access_token <- access_token
    list(url = build_url(url), config = config())
  })
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
    oauth_token = token
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
