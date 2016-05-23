context("Response")


test_that("status codes returned as expected", {

  expect_equal(GET("http://httpbin.org/status/320")$status_code, 320)
  expect_equal(GET("http://httpbin.org/status/404")$status_code, 404)
  expect_equal(GET("http://httpbin.org/status/418")$status_code, 418)

})

test_that("DELETE deletes", {
  expect_equal(GET("http://httpbin.org/delete")$status_code, 405)
  expect_equal(DELETE("http://httpbin.org/delete")$status_code, 200)
})

test_that("POST posts", {
  expect_equal(GET("http://httpbin.org/post")$status_code, 405)
  expect_equal(POST("http://httpbin.org/post")$status_code, 200)
})

test_that("PATCH patches", {
  expect_equal(GET("http://httpbin.org/patch")$status_code, 405)
  expect_equal(PATCH("http://httpbin.org/patch")$status_code, 200)
})

test_that("PUT puts", {
  expect_equal(GET("http://httpbin.org/put")$status_code, 405)
  expect_equal(PUT("http://httpbin.org/put")$status_code, 200)
})

test_that("headers returned as expected", {
  round_trip <- function(...) {
    req <- GET("http://httpbin.org/headers", add_headers(...))
    headers <- content(req)$headers
    names(headers) <- tolower(names(headers))
    headers
  }

  expect_equal(round_trip(a = 1)$a, "1")
  expect_equal(round_trip(a = "a + b")$a, "a + b")

})

test_that("application/json responses parsed as lists", {
  test_user_agent <- function(user_agent = NULL) {
    response <- GET("http://httpbin.org/user-agent",
                    add_headers("user-agent" = user_agent))

    expect_equal(response$status_code, 200)
    expected_reply = list("user-agent" = user_agent %||% default_ua())
    expect_equal(expected_reply, content(response))
  }

  test_user_agent()
  test_user_agent("gunicorn-client/0.1")
})
