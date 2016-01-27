use_cache <- function(cache = getOption("httr_oauth_cache")) {
  if (length(cache) != 1) {
    stop("cache should be length 1 vector", call. = FALSE)
  }
  if (!is.logical(cache) && !is.character(cache)) {
    stop("Cache must either be logical or string (file path)")
  }

  # If it's a character, then it's a file path, so use it
  if (is.character(cache)) return(cache)

  if (is.na(cache)) {
    cache <- guess_cache()
    if (cache) protect_cache()
    options("httr_oauth_cache" = cache)
  }

  if (cache) ".httr-oauth" else NULL
}

guess_cache <- function() {
  if (file.exists(".httr-oauth")) return(TRUE)
  if (!interactive()) return(FALSE)

  cat("Use a local file to cache OAuth access credentials between R sessions?")
  utils::menu(c("Yes", "No")) == 1
}

protect_cache <- function() {
  if (file.exists("DESCRIPTION")) {
    add_line(".Rbuildignore", "^\\.httr-oauth$")
  }

  add_line(".gitignore", ".httr-oauth")
  invisible(TRUE)
}

add_line <- function(path, line, quiet = FALSE) {
  if (file.exists(path)) {
    lines <- readLines(path, warn = FALSE)
    lines <- lines[lines != ""]
  } else {
    lines <- character()
  }

  if (line %in% lines) return(TRUE)
  if (!quiet) message("Adding ", line, " to ", path)

  lines <- c(lines, line)
  writeLines(lines, path)
  TRUE
}

cache_token <- function(token, cache_path) {
  if (is.null(cache_path)) return()

  tokens <- load_cache(cache_path)
  tokens[[token$hash()]] <- token
  saveRDS(tokens, cache_path)
}

fetch_cached_token <- function(hash, cache_path) {
  if (is.null(cache_path)) return()

  load_cache(cache_path)[[hash]]
}

remove_cached_token <- function(token) {
  if (is.null(token$cache_path)) return()

  tokens <- load_cache(token$cache_path)
  tokens[[token$hash()]] <- NULL
  saveRDS(tokens, token$cache_path)
}

load_cache <- function(cache_path) {
  if (!file.exists(cache_path)) {
    list()
  } else {
    readRDS(cache_path)
  }
}
