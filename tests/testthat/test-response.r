context("Response")

test_that("application/json responses parsed as lists", {
  test_user_agent <- function(user_agent = NULL) {
    response <- GET("http://httpbin.org/user-agent",
                    add_headers("user-agent" = user_agent))

    expect_equal(response$status, 200)
    expected_reply = list("user-agent" = user_agent %||% default_ua())
    expect_equal(expected_reply, content(response))
  }

  test_user_agent()
  test_user_agent("gunicorn-client/0.1")
})

test_that("url_ok works as expected", {

  expect_true(url_ok("http://httpbin.org/status/200"))
  expect_false(url_ok("http://httpbin.org/status/300"))
  expect_false(url_ok("http://httpbin.org/status/404"))
  expect_false(url_ok("http://httpbin.org/status/500"))

})
