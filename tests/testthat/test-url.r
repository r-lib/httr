context("URL parsing and building")

test_that("parse_url works as expected", {

  urls <- list(
    "http://google.com/",
    "http://google.com/path",
    "http://google.com/path?a=1&b=2",
    "http://google.com/path;param?a=1&b=2",
    "http://google.com:80/path;param?a=1&b=2",
    "http://google.com:80/path;param?a=1&b=2#frag",
    "http://user@google.com:80/path;param?a=1&b=2",
    "http://user:pass@google.com:80/path;param?a=1&b=2",
    "svn+ssh://my.svn.server/repo/trunk"
  )

  expect_equal(lapply(urls, function(u) build_url(parse_url(u))),
               urls)

})


test_that("empty queries not converted to NA", {
  expect_equal(parse_url("http://x.com/?q=")$query, list(q = ""))
  expect_equal(parse_url("http://x.com/?q")$query, list(q = ""))

  expect_equal(parse_url("http://x.com/?a&q")$query, list(a = "", q = ""))
})

test_that("query strings escaped and unescaped correctly", {
  url <- "http://x.com/?x%20y=a%20b"
  parsed <- parse_url(url)
  expect_equal(parsed$query, list("x y" = "a b"))
  expect_equal(build_url(parsed), url)
})

test_that("password and no username is an error", {
  url <- "http://www.example.com/"
  parsed <- parse_url(url)
  expect_equal(build_url(parsed), url)
  parsed$password <- "secret"
  expect_error(build_url(parsed), "password without username")
})


test_that("handle_url modifies url with named components", {
  hu <- handle_url(NULL, "http://google.com")
  expect_equal(hu$url, "http://google.com")

  hu <- handle_url(NULL, "http://google.com", path = "abc")
  expect_equal(hu$url, "http://google.com/abc")
})

test_that("handle_url ignores unnamed arguments", {
  hu <- handle_url(NULL, "http://google.com", 1, 2, 3)
  expect_equal(hu$url, "http://google.com")
})

test_that("build_url collapse path", {
  url <- modify_url("http://google.com", path = c("one", "two"))
  expect_equal(url, "http://google.com/one/two")
})

test_that("build_url drops leading / in path", {
  url <- modify_url("http://google.com", path = "/one")
  expect_equal(url, "http://google.com/one")
})

test_that("build_url drops null or empty query", {
  url <- modify_url("http://google.com", query = list(a = 1, b = NULL))
  expect_equal(url, "http://google.com/?a=1")
  url <- modify_url("http://google.com", query = list(a = NULL))
  expect_equal(url, "http://google.com/")
  url <- modify_url("http://google.com", query = list())
  expect_equal(url, "http://google.com/")
})

test_that("parse_url pulls off domain correctly given query without trailing '/'", {
   url <- modify_url('http://google.com?a=1', query = list(b = 2))
   expect_equal(url, "http://google.com/?a=1&b=2")
})

test_that("parse_url preserves leading / in path", {
  url <- parse_url("file:///tmp/foobar")
  expect_equal(url$path, "/tmp/foobar")
})

# compose_query -----------------------------------------------------------

test_that("I() prevents escaping", {
  expect_equal(compose_query(list(x = I("&"))), "x=&")
})

test_that("null elements are dropped", {
  expect_equal(compose_query(list(x = 1, y = NULL)), "x=1")
})
