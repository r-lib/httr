context("OAuth")

test_that("oauth2.0 signing works", {
  request_url <- "http://httpbin.org/headers"

  token <- Token2.0$new(
    app = oauth_app("x", "y", "z"),
    endpoint = oauth_endpoints("google"),
    credentials = list(access_token = "ofNoArms")
  )

  token$params$as_header <- TRUE
  header_response <- GET(request_url, config(token = token))
  response_content <- content(header_response)$headers
  expect_equal("Bearer ofNoArms", response_content$Authorization)
  expect_equal(request_url, header_response$url)

  token$params$as_header <- FALSE
  url_response <- GET(request_url, config(token = token))
  response_content <- content(url_response)$headers
  expect_equal(NULL, response_content$Authorization)
  expect_equal(
    parse_url(url_response$url)$query,
    list(access_token = "ofNoArms")
  )
})

test_that("partial OAuth1 flow works", {
  skip_on_cran()
  # From rfigshare

  endpoint <- oauth_endpoint(
    base_url = "http://api.figshare.com/v1/pbl/oauth",
    "request_token", "authorize", "access_token"
  )
  myapp <- oauth_app("rfigshare",
    key = "Kazwg91wCdBB9ggypFVVJg",
    secret = "izgO06p1ymfgZTsdsZQbcA")
  sig <- sign_oauth1.0(myapp,
    token = "xdBjcKOiunwjiovwkfTF2QjGhROeLMw0y0nSCSgvg3YQxdBjcKOiunwjiovwkfTF2Q",
    token_secret = "4mdM3pfekNGO16X4hsvZdg")

  r <- GET("http://api.figshare.com/v1/my_data/articles", sig)
  expect_equal(status_code(r), 200)
})

test_that("oauth_encode1 works", {
  # chinese characters for "xaringan"
  orig_string <- "\u5199\u8f6e\u773c"
  restored_string <- URLdecode(oauth_encode1(orig_string))
  Encoding(restored_string) <- "UTF-8"

  expect_equal(orig_string, restored_string)
})

test_that("oauth2.0 authorize url appends query params", {
  app <- oauth_app("x", "y", "z")
  scope <- NULL
  query_extra <- list(
    foo = "bar"
  )
  authURL <- oauth2.0_authorize_url(
    endpoint = oauth_endpoints("google"),
    app = app,
    scope = scope,
    query_extra = query_extras
  )
  
  url <- parse_url(authURL)
  expect_equal(url$query$foo, "bar")
})

test_that("oauth2.0 authorize url with empty input does not append empty query params", {
  # common constructor
  authorize_url_with_extra <- function(query_extra)
  {
    app <- oauth_app("x", "y", "z")
    scope <- NULL
    
    url_with_empty_input <- oauth2.0_authorize_url(
      endpoint = oauth_endpoints("google"),
      app = app,
      scope = scope,
      state = "testing-nonce",
      query_extra = query_extra
    )
  }
  
  test_authorize_url_with_empty_input <- function(empty_input) {
    # N.B. we do a delta between a query with and without extra query params to test
    
    # need this later: empty named list
    empty_named_list <- list()
    attr(empty_named_list, "names") <- character(0)
    
    # sample query_extra params
    extra_pars <- list(
      foo = "bar"
    )
    
    # create base/empty URL
    url_with_empty_input <- authorize_url_with_extra(empty_input)
    # create URL w/ extras
    url_with_extra <- authorize_url_with_extra(extra_pars)
    
    # get respective query params
    qry_pars_empty_input <- parse_url(url_with_empty_input)$query
    qry_pars_extra <- parse_url(url_with_extra)$query
    
    # get extra params appended to extra_pars query (compared to empty_input)
    appended_extras <- qry_pars_extra[!(qry_pars_extra %in% qry_pars_empty_input)]
    
    # get extra params appended to empty input query (compared to empty_input)
    appended_empty <- qry_pars_empty_input[!(qry_pars_empty_input %in% qry_pars_extra)]
    
    expect_equal(appended_extras, extra_pars) # only extra_pars should be here
    expect_equal(appended_empty, empty_named_list) # empty input query should be empty list
  }
  
  test_authorize_url_with_empty_input(list())
  test_authorize_url_with_empty_input(NULL)
  
})


# Parameter checking ------------------------------------------------------

test_that("scope must be character or NULL", {
  expect_equal(check_scope("a"), "a")
  expect_equal(check_scope(NULL), NULL)
  expect_error(check_scope(1), "character vector")
})

test_that("multiple scopes collapsed with space", {
  expect_equal(check_scope(c("a", "b")), "a b")
})

test_that("oob must be a flag", {
  expect_error(check_oob("a"), "logical vector")
  expect_error(check_oob(c(FALSE, FALSE)), "logical vector")
})

test_that("can not use oob in non-interactive session", {
  expect_error(check_oob(TRUE), "interactive")
})
