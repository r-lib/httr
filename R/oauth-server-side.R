
init_oauth_service_account <- function(secrets, scope = NULL, sub = NULL) {
  signature <- jwt_signature(
    secrets,
    aud = secrets$token_uri,
    scope = scope,
    sub = sub
  )

  res <- POST(
    secrets$token_uri,
    body = list(
      grant_type = "urn:ietf:params:oauth:grant-type:jwt-bearer",
      assertion = signature
    ),
    encode = "form"
  )
  stop_for_status(res)

  content(res, type = "application/json")
}

#' Generate a JWT signature given credentials.
#'
#' As described in
#' <https://developers.google.com/accounts/docs/OAuth2ServiceAccount>
#'
#' @param credentials Parsed contents of the credentials file.
#' @param scope A space-delimited list of the permissions that the application
#'    requests.
#' @param iss Email address of the client_id of the application making the
#'   access token request.
#' @param scope A space-delimited list of the permissions that the application
#'    requests.
#' @param sub The email address of the user for which the application is
#'    requesting delegated access.
#' @param aud A descriptor of the intended target of the assertion. This
#'    typically comes from the service auth file.
#' @param iat The time the assertion was issued, measured in seconds since
#'    00:00:00 UTC, January 1, 1970.
#' @param exp The expiration time of the assertion, measured in seconds since
#'   00:00:00 UTC, January 1, 1970. This value has a maximum of 1 hour from
#'   the issued time.
#' @param duration Duration of token, in seconds.
#' @keywords internal
#' @examples
#' \dontrun{
#' cred <- jsonlite::fromJSON("~/Desktop/httrtest-45693cbfac92.json")
#' jwt_signature(cred, "https://www.googleapis.com/auth/userinfo.profile")
#' }
jwt_signature <- function(credentials,
                          scope,
                          aud,
                          sub = NULL,
                          iat = as.integer(Sys.time()),
                          exp = iat + duration,
                          duration = 60L * 60L) {
  cs <- compact(list(
    iss = credentials$client_email,
    scope = scope,
    aud = aud,
    sub = sub,
    iat = iat,
    exp = exp
  ))

  jwt_sign(cs, credentials$private_key)
}

jwt_sign <- function(claimset, private_key, header = jwt_header()) {
  key <- openssl::read_key(private_key)
  to_sign_base64 <- paste0(jwt_base64(header), ".", jwt_base64(claimset))
  to_sign <- charToRaw(to_sign_base64)
  sig <- openssl::signature_create(to_sign, openssl::sha256, key)
  sig_base64 <- base64url(sig)

  paste0(to_sign_base64, ".", sig_base64)
}

jwt_header <- function() {
  list(
    alg = "RS256",
    typ = "JWT"
  )
}


jwt_base64 <- function(x) base64url(jwt_json(x))
jwt_json <- function(x) jsonlite::toJSON(x, auto_unbox = TRUE)
base64url <- function(x) {
  if (is.character(x)) {
    x <- charToRaw(x)
  }
  out <- chartr("+/", "-_", openssl::base64_encode(x))
  gsub("=+$", "", out)
}
