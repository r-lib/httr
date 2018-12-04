"%||%" <- function(a, b) {
  if (length(a) > 0) a else b
}

timestamp <- function(x = Sys.time()) {
  format(x, "%Y-%m-%dT%H:%M:%SZ", tz = "UTC")
}

sort_names <- function(x) x[order(names(x))]

nonce <- function(length = 10) {
  paste(sample(c(letters, LETTERS, 0:9), length, replace = TRUE),
    collapse = ""
  )
}

has_env_var <- function(x) !identical(Sys.getenv(x), "")

named <- function(x) x[has_name(x)]
unnamed <- function(x) x[!has_name(x)]

has_name <- function(x) {
  nms <- names(x)
  if (is.null(nms)) {
    return(rep(FALSE, length(x)))
  }

  !is.na(nms) & nms != ""
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

last <- function(x) {
  if (length(x) < 1) return(x)
  x[[length(x)]]
}

compact <- function(x) {
  empty <- vapply(x, is_empty, logical(1))
  x[!empty]
}

is_empty <- function(x) length(x) == 0

keep_last <- function(...) {
  x <- c(...)
  x[!duplicated(names(x), fromLast = TRUE)]
}

named_vector <- function(title, x) {
  if (length(x) == 0) return()

  cat(title, ":\n", sep = "")
  bullets <- paste0("* ", names(x), ": ", as.character(x))
  cat(bullets, sep = "\n")
}

keep_last <- function(...) {
  x <- c(...)
  x[!duplicated(names(x), fromLast = TRUE)]
}

find_cert_bundle <- function() {
  if (.Platform$OS.type != "windows") {
    return()
  }

  env <- Sys.getenv("CURL_CA_BUNDLE")
  if (!identical(env, "")) {
    return(env)
  }

  bundled <- file.path(R.home("etc"), "curl-ca-bundle.crt")
  if (file.exists(bundled)) {
    return(bundled)
  }

  # Fall back to certificate bundle in openssl
  system.file("cacert.pem", package = "openssl")
}

isFALSE <- function(x) identical(x, FALSE)
