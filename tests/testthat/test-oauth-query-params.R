context("OAuth-query-params")

test_that("oauth2.0 authorize url appends query params", {
  app <- oauth_app("x", "y", "z")
  scope <- httr:::check_scope(c("foo", "bar"))
  queryParams <- list(
    foo = "bar",
    paul = "isCool"
  )
  authURL <- oauth2.0_authorize_url(
    endpoint = oauth_endpoints("google"),
    app = app,
    scope = scope,
    auth_page_query_params = queryParams
  )

  url <- parse_url(authURL)
  paramNames <- names(queryParams)
  for (qpIndex in 1:length(queryParams))
  {
    paramName <- paramNames[qpIndex]
    expect_equal(url$query[paramName], queryParams[qpIndex])
  }
})

test_that("oauth2.0 authorize url does not append empty query params", {
  testAuthorizeUrlWithEmptyInput <- function(emptyInput) {
    app <- oauth_app("x", "y", "z")
    scope <- NULL
    authURL <- oauth2.0_authorize_url(
      endpoint = oauth_endpoints("google"),
      app = app,
      scope = scope,
      state = "testing-nonce",
      auth_page_query_params = emptyInput
    )
    urlQuery <- parse_url(authURL)$query

    queryParams <- list(
      foo = "bar",
      paul = "isCool"
    )
    authURL2 <- oauth2.0_authorize_url(
      endpoint = oauth_endpoints("google"),
      app = app,
      scope = scope,
      state = "testing-nonce",
      auth_page_query_params = queryParams
    )
    urlQuery2 <- parse_url(authURL2)$query

    appendedQueryParamsIn2 <- urlQuery2[!(urlQuery2 %in% urlQuery)]

    expect_equal(appendedQueryParamsIn2, queryParams)

    appendedQueryParamsIn1 <- urlQuery[!(urlQuery %in% urlQuery2)]

    emptyNamedList <- list()
    attr(emptyNamedList, "names") <- character(0)

    expect_equal(appendedQueryParamsIn1, emptyNamedList)
  }

  testAuthorizeUrlWithEmptyInput(list())
  testAuthorizeUrlWithEmptyInput(NULL)
  
})
