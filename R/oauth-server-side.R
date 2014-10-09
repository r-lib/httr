
init_oauth_service_account <- function(endpoint, secrets, scope = NULL) {
  signature <- jwt_signature(secrets, scope = scope)

  res <- POST(endpoint$access, body = list(
    grant_type = "urn:ietf:params:oauth:grant-type:jwt-bearer",
    assertion = signature
  ), encode = "form")
  stop_for_status(res)

  content(res, type = "application/json")
}

#' Generate a JWT signature given credentials.
#'
#' As described in
#' \url{https://developers.google.com/accounts/docs/OAuth2ServiceAccount}
#'
#' @param credentials Parsed contents of the credentials file.
#' @param scope A space-delimited list of the permissions that the application
#'    requests.
#' @param duration Duration of token, in seconds.
#' @keywords internal
#' @examples
#' \dontrun{
#' cred <- jsonlite::fromJSON("~/Desktop/httrtest-45693cbfac92.json")
#' jwt_signature(cred, "https://www.googleapis.com/auth/userinfo.profile")
#' }
jwt_signature <- function(credentials, scope, duration = 60 * 60) {
  if (!requireNamespace("PKI", quietly = TRUE)) {
    stop("PKI package required for JWT signing", call. = FALSE)
  }
  if (!requireNamespace("base64enc", quietly = TRUE)) {
    stop("base64enc package required for base64 encoding", call. = FALSE)
  }

  now <- as.numeric(Sys.time())
  cs <- jwt_claimset(credentials$client_email, scope, iat = now,
    exp = now + duration)
  jwt_sign(cs, credentials$private_key)
}

jwt_sign <- function(claimset, private_key, header = jwt_header()) {
  key <- PKI::PKI.load.key(textConnection(private_key), private = TRUE)

  to_sign_base64 <- paste0(jwt_base64(header), ".", jwt_base64(claimset))
  to_sign <- charToRaw(to_sign_base64)
  sig <- PKI::PKI.sign(to_sign, key, "SHA256")
  sig_base64 <- base64url(sig)

  paste0(to_sign_base64, ".", sig_base64)
}

jwt_header <- function() {
  list(
    alg = "RS256",
    typ = "JWT"
  )
}

#' @param iss Email address of the client_id of the application making the
#'   access token request.
#' @param scope A space-delimited list of the permissions that the application
#'    requests.
#' @param aud A descriptor of the intended target of the assertion. When making
#'    an access token request this value is always
#'    https://accounts.google.com/o/oauth2/token.
#' @param exp The expiration time of the assertion, measured in seconds since
#'   00:00:00 UTC, January 1, 1970. This value has a maximum of 1 hour from the issued time.
#' @param iat The time the assertion was issued, measured in seconds since
#'  00:00:00 UTC, January 1, 1970.
#' @noRd
jwt_claimset <- function(iss, scope,
                         aud = "https://accounts.google.com/o/oauth2/token",
                         exp = NULL, iat = NULL) {

  if (is.null(iat)) {
    iat <- as.numeric(Sys.time())
  }
  if (is.null(exp)) {
    exp <- iat + 60 * 60
  }

  list(
    iss = iss,
    scope = scope,
    aud = aud,
    exp = exp,
    iat = iat
  )
}

jwt_base64 <- function(x) base64url(jwt_json(x))
jwt_json <- function(x) jsonlite::toJSON(x, auto_unbox = TRUE)
base64url <- function(x) {
  if (is.character(x)) {
    x <- charToRaw(x)
  }
  out <- chartr('+/', '-_', base64enc::base64encode(x))
  gsub("=+$", "", out)
}
