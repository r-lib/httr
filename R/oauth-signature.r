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

#' Generate oauth signature.
#'
#' For advanced use only. Occassionally needed for sites that use some
#' components of the OAuth spec, but not all of them (e.g. 2-legged oauth)
#'
#' @param url,method Url and http method of request.
#' @param app \code{\link{oauth_app}} object representing application.
#' @param token,token_secret OAuth token and secret.
#' @param ... Named argument providing additional oauth parameters
#'   (e.g. \code{oauth_callback} or \code{oauth_body_hash}). Names should
#'   not include the "oauth_" prefix - this will be automatically included.
#' @export
#' @keywords internal
#' @return A list of oauth parameters.
oauth_signature <- function(url, method = "GET", app, token = NULL,
                            token_secret = NULL, ...) {
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
    names(other_params) <- paste0("oauth_", names(other_params))
    oauth <- c(oauth, other_params)
  }

  # Collect params, oauth_encode, sort and concatenated into a single string
  params <- c(url$query, oauth)
  params_esc <- setNames(oauth_encode(params), oauth_encode(names(params)))
  params_srt <- sort_names(params_esc)
  params_str <- paste0(names(params_srt), "=", params_srt, collapse = "&")

  # Generate hmac signature
  key <- paste0(oauth_encode(app$secret), "&", oauth_encode(token_secret))
  base_string <- paste0(method, "&", oauth_encode(base_url), "&",
   oauth_encode(params_str))
  oauth$oauth_signature <- hmac_sha1(key, base_string)

  sort_names(oauth)
}

#' @rdname oauth_signature
#' @export
oauth_header <- function(info) {
  oauth <- paste0("OAuth ", paste0(
    oauth_encode(names(info)), "=\"", oauth_encode(info), "\"", collapse = ", "))
  add_headers(Authorization = oauth)
}

oauth_encode <- function(x) vapply(x, oauth_encode1, character(1))

# As described in http://tools.ietf.org/html/rfc5849#page-29
oauth_encode1 <- function(x) {
  encode <- function(x) paste0("%", toupper(as.character(charToRaw(x))))

  x <- as.character(x)
  chars <- strsplit(x, "")[[1]]
  ok <- !str_detect(chars, "[^A-Za-z0-9_.~-]")

  if (all(ok)) return(x)

  chars[!ok] <- unlist(lapply(chars[!ok], encode))
  paste0(chars, collapse = "")
}
