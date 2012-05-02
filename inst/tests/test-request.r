context("Request")

test_that("status codes returned as expected", {
  
  expect_equal(GET("http://httpbin.org/status/320")$status, 320)
  expect_equal(GET("http://httpbin.org/status/404")$status, 404)
  expect_equal(GET("http://httpbin.org/status/418")$status, 418)
  
})

test_that("headers returned as expected", {
  round_trip <- function(...) {
    req <- GET("http://httpbin.org/headers", add_headers(...))
    headers <- parsed_content(req)$headers
    names(headers) <- tolower(names(headers))
    headers
  }
  
  expect_equal(round_trip(a = 1)$a, "1")
  expect_equal(round_trip(a = "a + b")$a, "a + b")
  
})



test_that("bare post requests work", {
  round_trip <- function(body) {
    req <- POST("http://httpbin.org/post", body = body)
    parsed_content(req)
  }
  expect_equal(round_trip(NULL)$data, "")
  expect_equal(round_trip("abc")$data, "abc")
  expect_equal(round_trip(list(a = 1))$form$a, "1")
  
  citation <- fileUpload(system.file("CITATION"))
  expect_equal(round_trip(list(a = citation))$file$a, 
    str_c(readLines(system.file("CITATION")), "\n", collapse = ""))
})