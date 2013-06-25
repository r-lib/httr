context("URL parsing and building")

test_that("parse_url works as expected", {
  
  urls <- list(
    "http://google.com/",
    "http://google.com/path",
    "http://google.com/path?a=1&b=2",
    "http://google.com/path;param?a=1&b=2",
    "http://google.com:80/path;param?a=1&b=2",
    "http://user@google.com:80/path;param?a=1&b=2",
    "http://user:pass@google.com:80/path;param?a=1&b=2",
    "svn+ssh://my.svn.server/repo/trunk"
  )
  
  expect_equal(lapply(urls, function(u) build_url(parse_url(u))),
               urls)
  
})
