context("Headers")

# Setting ---------------------------------------------------------------------

test_that("Only last duplicated header kept in add_headers", {
  expect_equal(add_headers(x = 1, x = 2)$httpheader, c(x = "2"))
})

test_that("Only last duplicated header kept when combined", {
  out <- c(add_headers(x = 1), add_headers(x = 2))
  expect_equal(out$httpheader, c(x = "2"))
})

test_that("Only last duplicated header kept when modified", {
  out <- modify_config(add_headers(x = 1), add_headers(x = 2))
  expect_equal(out$httpheader, c(x = "2"))
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
  lines <- c(
    "HTTP/1.1 200 OK",
    "A: B\r\n"
  )
  expect_equal(parse_headers(lines)[[1]]$headers$A, "B")
})

test_that("Invalid header raises error", {
  lines <- c(
    "HTTP/1.1 200 OK",
    "A: B",
    "Invalid"
  )
  expect_warning(parse_headers(lines), "Failed to parse headers")
})

test_that("http status line only needs two components", {
  headers <- parse_headers("HTTP/1.1 200")
  expect_equal(headers[[1]]$status, 200L)

})
