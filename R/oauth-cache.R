cache_path <- ".httr-oauth"

use_cache <- function() {
  # Use default, if set.
  default <- getOption("httr_oauth_cache")
  if (!is.logical(default) || length(default) != 1) {
    stop("httr_oauth_cache must be a logical vector of length 1", call. = FALSE)
  }
  if (!is.na(default)) return(default)
  
  if (!interactive()) return(FALSE)
  if (file.exists(cache_path)) return(TRUE)
  
  cat("Use a local file to cache OAuth access credentials between R sessions?")
  choice <- menu(c("Yes", "No")) == 1
  
  if (choice) {
    if (file.exists("DESCRIPTION")) {
      message("Make sure to add .httr-oauth to .Rbuildignore")
    }
    if (file.exists(".git")) {
      message("Make sure to add .httr-oauth to .gitignore")
    }    
  }
  
  options("httr_oauth_cache" = choice)
  choice
}

cache_token <- function(token) {
  tokens <- load_cache()
  tokens[[token$hash()]] <- token
  saveRDS(tokens, cache_path)
}

fetch_cached_token <- function(hash) {
  load_cache()[[hash]]
}

load_cache <- function() {
  if (!file.exists(cache_path)) {
    list()
  } else {
    readRDS(cache_path)
  }
}