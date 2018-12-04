# These are drop in replacements for the stringr:: functions used in httr. They
# do not retain all functionality from stringr, only that which is used in
# httr. Notably they are generally not vectorized.
str_trim <- function(x) {
  gsub("(^\\s+)|(\\s+$)", "", x)
}

str_split_fixed <- function(string, pattern, n) {
  if (length(string) == 0) return(matrix(character(), nrow = 1, ncol = n))
  m <- gregexpr(pattern, string)[[1]]
  if (length(m) == 1 && m == -1) {
    res <- string
  } else {
    m_starts <- m
    m_ends <- m + attr(m, "match.length") - 1L
    starts <- c(1, m_ends + 1L)[seq_len(n)]
    ends <- c((m_starts - 1L)[seq_len(n - 1)], nchar(string))
    res <- lapply(string, function(x)
      unlist(Map(substr, x, starts, ends, USE.NAMES = FALSE))
    )
  }

  mat <- matrix("", nrow = length(res), ncol = n, byrow = TRUE)
  mat[seq_along(unlist(res))] <- unlist(res)
  mat[, seq_len(n), drop = FALSE]
}

str_split <- function(string, pattern, n = Inf) {
  res <- strsplit(string, pattern)
  if (is.finite(n)) {
    res[seq_len(n)]
  } else {
    res
  }
}

str_detect <- function(string, pattern) {
  grepl(pattern, string)
}

str_match <- function(string, pattern) {
  m <- regexpr(pattern, string, perl = TRUE)
  cbind(
    substr(string, m, attr(m, "match.length") + m - 1L),
    substr(
      string, attr(m, "capture.start"),
      attr(m, "capture.length") + attr(m, "capture.start") - 1L
    )
  )
}

str_replace <- function(string, pattern, replace) {
  m <- regexpr(pattern, string)
  regmatches(string, m) <- replace
  string
}

str_extract <- function(string, pattern) {
  m <- regexpr(pattern, string)
  res <- substr(string, m, attr(m, "match.length") + m - 1L)
  res[m == -1] <- NA_character_
  res
}
