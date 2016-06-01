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
sign_oauth1.0 <- function(app, token = NULL, token_secret = NULL,
                          as_header = TRUE, ...) {
  params <- list(as_header = as_header)

  credentials <- list(oauth_token = token, oauth_token_secret = token_secret)
  token <- Token1.0$new(endpoint = NULL, params = params, app = app,
    credentials = credentials)
  request(auth_token = token)
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
#' @param other_params Named argument providing additional parameters
#'   (e.g. \code{oauth_callback} or \code{oauth_body_hash}).
#' @export
#' @keywords internal
#' @return A list of oauth parameters.
oauth_signature <- function(url, method = "GET", app, token = NULL,
                            token_secret = NULL,
                            private_key = NULL, other_params = NULL) {
  if (!is.null(private_key)) {
    signature_method <- "RSA-SHA1"
  } else {
    signature_method <- "HMAC-SHA1"
  }
  method <- toupper(method)

  url <- parse_url(url)
  base_url <- build_url(url[c("scheme", "hostname", "port", "url", "path")])

  oauth <- compact(list(
    oauth_consumer_key = app$key,
    oauth_nonce = nonce(),
    oauth_signature_method = signature_method,
    oauth_timestamp = as.integer(Sys.time()),
    oauth_version = "1.0",
    oauth_token = token
  ))

  if (length(other_params) > 0) {
    oauth <- c(oauth, other_params)
  }

  # Collect params, oauth_encode, sort and concatenated into a single string
  params <- c(url$query, oauth)
  params_esc <- stats::setNames(oauth_encode(params), oauth_encode(names(params)))
  params_srt <- sort_names(params_esc)
  params_str <- paste0(names(params_srt), "=", params_srt, collapse = "&")

  base_string <- paste0(method, "&", oauth_encode(base_url), "&",
   oauth_encode(params_str))

  # Generate signature
  if (signature_method == "HMAC-SHA1") {
    private_key <- paste0(oauth_encode(app$secret), "&", oauth_encode(token_secret))
  }
  oauth$oauth_signature <- sha1_hash(private_key, base_string, signature_method)

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
