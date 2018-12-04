use_cache <- function(cache = getOption("httr_oauth_cache")) {
  if (length(cache) != 1) {
    stop("cache should be length 1 vector", call. = FALSE)
  }
  if (!is.logical(cache) && !is.character(cache)) {
    stop("Cache must either be logical or string (file path)")
  }

  # If missing, see if it's ok to use one, and cache the results of
  # that check in a global option.
  if (is.na(cache)) {
    cache <- can_use_cache()
    options("httr_oauth_cache" = cache)
  }
  ## cache is now TRUE, FALSE or path

  if (isFALSE(cache)) {
    return(NULL)
  }

  if (isTRUE(cache)) {
    cache <- ".httr-oauth"
  }

  if (!file.exists(cache)) {
    create_cache(cache)
  }
  return(cache)
}

can_use_cache <- function(path = ".httr-oauth") {
  file.exists(path) || should_cache(path)
}

should_cache <- function(path = ".httr-oauth") {
  if (!interactive()) return(FALSE)

  cat("Use a local file ('", path, "'), to cache OAuth access credentials ",
    "between R sessions?\n",
    sep = ""
  )
  utils::menu(c("Yes", "No")) == 1
}

create_cache <- function(path = ".httr-oauth") {
  file.create(path, showWarnings = FALSE)
  if (!file.exists(path)) {
    stop("Failed to create local cache ('", path, "')", call. = FALSE)
  }

  # Protect cache as much as possible
  Sys.chmod(path, "0600")

  if (file.exists("DESCRIPTION")) {
    add_line(".Rbuildignore", paste0("^", gsub("\\.", "\\\\.", path), "$"))
  }
  add_line(".gitignore", path)

  TRUE
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
  try(writeLines(lines, path))
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
  if (!file.exists(cache_path) || file_size(cache_path) == 0) {
    list()
  } else {
    readRDS(cache_path)
  }
}

file_size <- function(x) file.info(x, extra_cols = FALSE)$size
