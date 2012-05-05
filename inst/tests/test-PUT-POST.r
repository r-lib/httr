context("Send data")

round_trip <- function(method, body = NULL, ...) {
  url <- str_c("http://httpbin.org/", tolower(method))
  request <- match.fun(toupper(method))
  parsed_content(request(url, body = body, ...))
}
methods <- c("POST", "PUT")

citation <- upload_file(system.file("CITATION"))
citation_val <- c(readLines(system.file("CITATION")), "")

test_that("empty body gives empty data element", {
  for(method in methods) {
    out <- round_trip(method)
    expect_equal(out$data, "", info = method)
  }
})

test_that("string in body gives same string in data element", {
  for(method in methods) {
    out <- round_trip(method, "test")
    expect_equal(out$data, "test", info = method)
  }
})

test_that("named list matches form results", {
  for(method in methods) {
    out <- round_trip(method, list(a = 1, b = 2))
    expect_equal(out$form$a, "1", info = method)
    expect_equal(out$form$b, "2", info = method)
  }
})

test_that("file and form vals mixed give form and data elements", {
  for(method in methods) {
    out <- round_trip(method, list(y = citation, a = 1))  
    expect_equal(out$form$a, "1", info = method)
    expect_equal(str_split(out$file$y, "\n")[[1]], citation_val, 
      info = method)
  }
})