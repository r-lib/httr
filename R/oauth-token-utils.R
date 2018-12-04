#' Revoke all OAuth tokens in the cache.
#'
#' Use this function if you think that your token may have been compromised,
#' e.g. you accidentally uploaded the cache file to github. It's not possible
#' to automatically revoke all tokens - this function will warn when it can't.
#'
#' @param cache_path Path to cache file. Defaults to `.httr-oauth` in
#'   current directory.
#' @export
revoke_all <- function(cache_path = NA) {
  cache_path <- use_cache(cache_path)

  if (is.null(cache_path)) {
    stop("Can't find cache")
  }

  tokens <- load_cache(cache_path)

  cant_revoke <- vapply(
    tokens, function(x) is.null(x$endpoint$revoke),
    logical(1)
  )
  if (any(cant_revoke)) {
    manual <- tokens[cant_revoke]
    apps <- vapply(manual, function(x) {
      paste0(x$app$appname, " (", x$app$key, ")")
    }, character(1), USE.NAMES = FALSE)
    warning("Can't revoke the following tokens automatically: ",
      paste0(apps, collapse = ", "),
      call. = FALSE
    )
  }

  lapply(tokens, function(x) try(revoke_oauth2.0(x)))
  invisible(TRUE)
}

revoke_oauth2.0 <- function(endpoint, credentials) {
  if (is.null(endpoint$revoke)) {
    stop("No revoke endpoint", call. = FALSE)
  }

  url <- modify_url(endpoint$revoke,
    query = list(token = credentials$access_token)
  )
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
    strsplit(content(response)$scope, " ")[[1]]
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
