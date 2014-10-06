#' OAuth token objects.
#'
#' These objects represent the complete set of data needed for OAuth access:
#' an app, an endpoint, cached credentials and parameters. They should be
#' created through their constructor functions \code{\link{oauth1.0_token}}
#' and \code{\link{oauth2.0_token}}. If you create your own subclass
#' (as in the linkedin demo), use \code{\link{new_token}} to initialise.
#'
#' @section Methods:
#' \itemize{
#'  \item \code{cache()}: caches token to disk
#'  \item \code{sign(method, url)}: returns list of url and config
#'  \item \code{refresh()}: refresh access token (if possible)
#'  \item \code{validate()}: TRUE if the token is still valid, FALSE otherwise
#' }
#'
#' @section Caching:
#' OAuth tokens are cached on disk in a file called \code{.httr-oauth}
#' saved in the current working directory.  Caching is enabled if:
#'
#' \itemize{
#' \item The session is interactive, and the user agrees to it, OR
#' \item The \code{.httr-oauth} file is already present, OR
#' \item \code{getOption("httr_oauth_cache")} is \code{TRUE}
#' }
#'
#' You can suppress caching by setting the \code{httr_oauth_cache} option to
#' \code{FALSE}.
#'
#' Tokens are cached based on their endpoint and parameters.
#'
#' The cache file should not be included in source code control or R packages
#' (because it contains private information), so httr will automatically add
#' the appropriate entries to `.gitignore` and `.Rbuildignore` if needed.
#'
#' @docType class
#' @keywords internal
#' @format An R6 class object.
#' @export
#' @name Token-class
Token <- R6::R6Class("Token", list(
  endpoint = NULL,
  app = NULL,
  credentials = NULL,
  params = NULL,
  cache_path = NULL,

  initialize = function(app, endpoint, params = list(),
                        cache_path = getOption("httr_oauth_cache")) {
    self$app <- app
    self$endpoint <- endpoint
    self$params <- params
    self$cache_path <- cache_path
    self
  },

  init = function(force = FALSE) {
    # Have already initialized?
    if (!force && !is.null(self$credentials)) {
      return(self)
    }

    # Have we computed in the past?
    if (!force && self$load_from_cache()) {
      return(self)
    }

    self$init_credentials()
    cache()
  },
  print = function(...) {
    cat("<Token>\n", sep = "")
    print(self$endpoint)
    print(self$app)
    cat("<credentials> ", paste0(names(self$credentials), collapse = ", "), "\n",
      sep = "")
    cat("---\n")
  },
  cache = function(path = self$cache_path) {
    cache_token(self, path)
    self
  },
  load_from_cache = function() {
    if (is.null(self$cache_path)) return(FALSE)

    cached <- fetch_cached_token(self$hash(), self$cache_path)
    if (is.null(cached)) return(FALSE)

    self$endpoint <- cached$endpoint
    self$app <- cached$app
    self$credentials <- cached$credentials
    self$params <- cached$params
    TRUE
  },
  hash = function() {
    # endpoint = which site
    # app = client identification
    # params = scope
    digest::digest(list(self$endpoint, self$app, self$params$scope))
  },
  sign = function() {
    stop("Must be implemented by subclass", call. = FALSE)
  },
  refresh = function() {
    stop("Must be implemented by subclass", call. = FALSE)
  }
))

#' Generate an oauth1.0 token.
#'
#' This is the final object in the OAuth dance - it encapsulates the app,
#' the endpoint, other parameters and the received credentials.
#'
#' See \code{\link{Token}} for full details about the token object, and the
#' caching policies used to store credentials across sessions.
#'
#' @inheritParams init_oauth1.0
#' @param as_header If \code{TRUE}, the default, sends oauth in header.
#'   If \code{FALSE}, adds as parameter to url.
#' @param cache A logical value or a string. \code{TRUE} means to cache
#'   using the default cache file \code{.oauth-httr}, \code{FALSE} means
#'   don't cache, and \code{NA} means to guess using some sensible heuristics.
#'   A string mean use the specified path as the cache file.
#' @return A \code{Token1.0} reference class (RC) object.
#' @family OAuth
#' @export
oauth1.0_token <- function(endpoint, app, permission = NULL,
                           as_header = TRUE,
                           cache = getOption("httr_oauth_cache")) {
  params <- list(permission = permission, as_header = as_header)
  new_token(Token1.0, endpoint, app, params, cache = cache)
}

#' @export
#' @rdname Token-class
Token1.0 <- R6::R6Class("Token1.0", inherit = Token, list(
  init_credentials = function(force = FALSE) {
    self$credentials <- init_oauth1.0(self$endpoint, self$app,
      permission = self$params$permission)
  },
  can_refresh = function() {
    FALSE
  },
  refresh = function() {
    stop("Not implemented")
  },
  sign = function(method, url) {
    oauth <- oauth_signature(url, method, self$app, self$credentials$oauth_token,
      self$credentials$oauth_token_secret)
    if (self$params$as_header) {
      list(url = url, config = oauth_header(oauth))
    } else {
      url <- parse_url(url)
      url$query <- c(url$query, oauth)
      list(url = build_url(url), config = config())
    }
  }
))

#' Generate an oauth2.0 token.
#'
#' This is the final object in the OAuth dance - it encapsulates the app,
#' the endpoint, other parameters and the received credentials. It is a
#' reference class so that it can be seemlessly updated (e.g. using
#' \code{$refresh()}) when access expires.
#'
#' See \code{\link{Token}} for full details about the token object, and the
#' caching policies used to store credentials across sessions.
#'
#' @inheritParams init_oauth2.0
#' @param as_header If \code{TRUE}, the default, sends oauth in bearer header.
#'   If \code{FALSE}, adds as parameter to url.
#' @inheritParams oauth1.0_token
#' @return A \code{Token2.0} reference class (RC) object.
#' @family OAuth
#' @export
oauth2.0_token <- function(endpoint, app, scope = NULL, type = NULL,
                           use_oob = getOption("httr_oob_default"),
                           as_header = TRUE,
                           cache = getOption("httr_oauth_cache")) {
  params <- list(scope = scope, type = type, use_oob = use_oob,
    as_header = as_header)
  new_token(Token2.0, endpoint, app, params, cache = cache)
}

#' Generate and initialise new token.
#'
#' This is useful if you've created your own Token subclass - it initialises
#' the token object in a standard way.
#'
#' @param params list of params
#' @export
#' @keywords internal
#' @inheritParams init_oauth2.0
#' @inheritParams oauth1.0_token
new_token <- function(token, endpoint, app, params = list(),
                      cache = getOption("httr_oauth_cache")) {
  stopifnot(
    is(token, "refClass"),
    is.oauth_endpoint(endpoint),
    is.oauth_app(app),
    is.list(params))

  cache_path <- use_cache(cache)

  token(app = app, endpoint = endpoint, params = params,
    cache_path = cache_path)$init()
}

#' @export
#' @rdname Token-class
Token2.0 <- R6::R6Class("Token2.0", inherit = Token, list(
  init_credentials = function() {
    self$credentials <- init_oauth2.0(self$endpoint, self$app,
      scope = self$params$scope, type = self$params$type,
      use_oob = self$params$use_oob)
  },
  can_refresh = function() {
    !is.null(self$credentials$refresh_token)
  },
  refresh = function() {
    self$credentials <- refresh_oauth2.0(self$endpoint, self$app, self$credentials)
    cache()
    self
  },
  sign = function(method, url) {
    if (self$params$as_header) {
      config <- add_headers(
        Authorization = paste('Bearer', self$credentials$access_token)
      )
      list(url = url, config = config)
    } else {
      url <- parse_url(url)
      url$query$access_token <- self$credentials$access_token
      list(url = build_url(url), config = config())
    }
  },
  validate = function() {
    validate_oauth2.0(self$endpoint, self$credentials)
  },
  revoke = function() {
    revoke_oauth2.0(self$endpoint, self$credentials)
  }
))
