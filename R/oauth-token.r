#' @importFrom methods setRefClass
#' @importFrom digest digest
Token <- setRefClass("Token", 
  fields = c("endpoint", "app", "credentials", "params"),
  methods = list(
    initialize = function(...) {
      credentials <<- NULL
      initFields(...)
    },
    show = function() {
      cat("<OAuth> ", endpoint$authorize, "\n", sep = "")
    },
    cache = function() {
      if (!use_cache()) return()
      cache_token(.self)
      .self
    },
    hash = function() {
      digest(list(endpoint, params))
    }
  )
)

Token1.0 <- setRefClass("Token1.0", contains = "Token", methods = list(
  init = function(force = FALSE) {
    if (!force && !is.null(credentials)) return(.self)
    credentials <<- oauth1.0_init(endpoint, app, 
      permission = params$permission)
    .self
  },
  refresh = function() {
    stop("Not implemented")
  }, 
  sign = function(method, url) {
    oauth_signature(url, method, app, credentials$token, 
      credentials$token_secret)
    list(url = url, config = oauth_header(oauth))    
  }
))

Token2.0 <- setRefClass("Token2.0", contains = "Token", methods = list(
  init = function(force = FALSE) {
    # Have already initialized
    if (!force && !is.null(credentials)) {
      return(.self)
    } 
    
    # Have we computed in the past?
    if (!force && use_cache()) {
      cached <- fetch_cached_token(hash())
      if (!is.null(cached)) {
        import(cached)
        return(.self)
      }
    }
    
    # Otherwise use initialise from endpoint
    credentials <<- init_oauth2.0(endpoint, app, scope = params$scope, 
      type = params$type, use_oob = params$use_oob)
    cache()
  },
  refresh = function() {
    credentials <<- refresh_oauth2.0(endpoint, app, credentials)
    cache()
    .self
  },
  sign = function(method, url) {
    if (params$as_header) {
      config <- add_headers(Authorization = 
          paste('Bearer', credentials$access_token))
      list(url = url, config = config)
    } else {
      url <- parse_url(url)
      url$query$access_token <- credentials$access_token
      list(url = build_url(url), config = config())
    }
  }
))

oauth1.0_token <- function(endpoint, app, permission = NULL) {
  params <- list(permission = permission)
  Token1.0$new(app = app, endpoint = endpoint, params = params)$init()
}

oauth2.0_token <- function(endpoint, app, scope = NULL, type = NULL,
                           use_oob = getOption("httr_oob_default"),
                           as_header = TRUE) {
  params <- list(scope = scope, type = type, use_oob = use_oob,
    as_header = as_header)
  Token2.0$new(app = app, endpoint = endpoint, params = params)$init()
}
