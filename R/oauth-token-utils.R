revoke_oauth2.0 <- function(endpoint, credentials) {
  if (is.null(endpoint$revoke)) {
    stop("No revoke endpoint", call. = FALSE)
  }

  url <- modify_url(endpoint$revoke, 
    query = list(token = credentials$access_token))
  response <- GET(url, accept_json())
  stop_for_status(response)
  
  invisible(TRUE)
}

validate_oauth2.0 <- function(endpoint, credentials) {
  validate_url <- endpoint_validation_url(endpoint, credentials)
  response <- GET(validate_url, accept_json())
  status_code(response) == 200
}

get_token_scopes <- function(endpoint, credentials) {
  validate_url <- endpoint_validation_url(endpoint, credentials)
  response <- GET(validate_url, accept_json())
  if (response$status_code == 200) {
    str_split(content(response)$scope, " ")[[1]]
  }
}

endpoint_validation_url <- function(endpoint, credentials) {
  if (is.null(endpoint$validate)) {
    stop("No validation endpoint", call. = FALSE)
  }
  base_url <- endpoint$validate
  url <- parse_url(base_url)
  url$query$access_token <- credentials$access_token
  build_url(url)
}

