context("Body")

round_trip <- function(method, body = NULL, ...) {
  url <- paste0("http://httpbin.org/", tolower(method))
  request <- match.fun(toupper(method))
  content(request(url, body = body, ...))
}
methods <- c("POST", "PUT", "PATCH")

data_path <- upload_file("data.txt")
data <- c(readLines("data.txt"), "")

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

test_that("named list matches form results (multipart = TRUE)", {
  for(method in methods) {
    out <- round_trip(method, list(a = 1, b = 2), multipart = TRUE)
    expect_equal(out$form$a, "1", info = method)
    expect_equal(out$form$b, "2", info = method)
  }
})

test_that("named list matches form results (multipart = FALSE)", {
  for(method in methods) {
    out <- round_trip(method, list(a = 1, b = 2), multipart = FALSE)
    expect_equal(out$form$a, "1", info = method)
    expect_equal(out$form$b, "2", info = method)
  }
})

test_that("file and form vals mixed give form and data elements", {
  for(method in methods) {
    out <- round_trip(method, list(y = data_path, a = 1))
    expect_equal(out$form$a, "1", info = method)
    expect_equal(str_split(out$file$y, "\n")[[1]], data,
      info = method)
  }
})
