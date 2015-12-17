context("Headers")

# Setting ---------------------------------------------------------------------

test_that("Only last duplicated header kept in add_headers", {
  expect_equal(add_headers(x = 1, x = 2)$headers, c(x = "2"))
})

test_that("Only last duplicated header kept when combined", {
  out <- c(add_headers(x = 1), add_headers(x = 2))
  expect_equal(out$headers, c(x = "2"))
})

# Getting ---------------------------------------------------------------------

test_that("All headers captures headers from redirects", {
  r1 <- GET("http://httpbin.org/redirect/1")
  expect_equal(length(r1$all_headers), 1 + 1)

  r3 <- GET("http://httpbin.org/redirect/3")
  expect_equal(length(r3$all_headers), 3 + 1)
})

# Parsing ---------------------------------------------------------------------

test_that("Trailing line breaks removed", {
  header <- charToRaw("HTTP/1.1 200 OK\r\nA: B\r\n")
  expect_equal(parse_headers(header)[[1]]$headers$A, "B")
})

test_that("Invalid header raises error", {
  lines <- c(
    "HTTP/1.1 200 OK",
    "A: B",
    "Invalid"
  )
  header <- charToRaw(paste(lines, collapse = "\n"))
  expect_warning(parse_headers(header), "Failed to parse headers")
})

test_that("http status line only needs two components", {
  headers <- parse_headers(charToRaw("HTTP/1.1 200"))
  expect_equal(headers[[1]]$status, 200L)

})

test_that("Key/value parsing tolerates multiple ':'", {
  lines <- c(
    "HTTP/1.1 200 OK",
    "A: B:C",
    "D:E:F"
  )
  header <- charToRaw(paste(lines, collapse = "\n"))

  expect_equal(parse_headers(header)[[1]]$headers$A, "B:C")
  expect_equal(parse_headers(header)[[1]]$headers$D, "E:F")
})
