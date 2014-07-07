"%||%" <- function(a, b) {
  if (!is.null(a)) a else b
}

timestamp <- function(x = Sys.time()) {
  format(x, "%Y-%m-%dT%H:%M:%SZ", tz = "UTC")
}

sort_names <- function(x)  x[order(names(x))]

nonce <- function(length = 10) {
  paste(sample(c(letters, LETTERS, 0:9), length, replace = TRUE),
    collapse = "")
}

curl_version <- function() {
  as.numeric_version(RCurl::curlVersion()$version)
}

has_env_var <- function(x) !identical(Sys.getenv(x), "")

named <- function(x) x[has_names(x)]
unnamed <- function(x) x[!has_names(x)]

has_names <- function(x) {
  nms <- names(x)
  if (is.null(nms)) return(rep(FALSE, length(x)))

  names(x) != ""
}

travis_encrypt <- function(vars) {
  values <- Sys.getenv(vars)
  cat(paste0("travis encrypt ", paste0(vars, "=", values, collapse = " ")))
}

is_installed <- function(pkg) {
  system.file(package = pkg) != ""
}

need_package <- function(pkg) {
  if (is_installed(pkg)) return(invisible())

  stop("Please install ", pkg, " package", call. = FALSE)
}

last <- function(x) x[[length(x)]]

compact <- function(x) {
  null <- vapply(x, is.null, logical(1))
  x[!null]
}
