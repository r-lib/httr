#' Ensure that a token is valid.
#'
#' @family OAuth
#' @param endpoint
#' @param credential
#' @return a logical indicating whether or not the token is valid.
#' @export
validate_auth2.0_token <- function(endpoint, credential) {
  validate_url <- endpoint_validation_url(endpoint, credential)
  response <- GET(validate_url, accept_json())
  response$status_code == 200
}

#' Return the list of scopes a token is authorized for.
#'
#' @family OAuth
#' @param endpoint
#' @param credential
#' @return a vector of string (the list of valid scopes, which
#'     will be empty if the token is invalid)
get_token_scopes <- function(endpoint, credential) {
  validate_url <- endpoint_validation_url(endpoint, credential)
  response <- GET(validate_url, accept_json())
  if (response$status_code == 200) {
    str_split(content(response)$scope, " ")[[1]]
  }
}

#' Return the validation url for a given token.
#'
#' @family OAuth
#' @param endpoint
#' @param credential
#' @return A validation URL.
endpoint_validation_url <- function(endpoint, credential) {
  if (is.null(endpoint$validate)) {
    stop('no validation endpoint')
  }
  base_url <- endpoint$validate
  url <- parse_url(base_url)
  url$query$access_token <- credential$access_token
  build_url(url)
}
