context("Body")

round_trip <- function(method, ...) {
  url <- paste0("http://httpbin.org/", "post")
  content(POST(url, ...))
}

data_path <- upload_file("data.txt")
data <- c(readLines("data.txt"), "")

test_that("empty body gives empty data element", {
  out <- round_trip(body = NULL)
  expect_equal(out$data, "")
})

test_that("string in body gives same string in data element", {
  out <- round_trip(body = "test")
  expect_equal(out$data, "test")
})

test_that("named list matches form results (encode = 'form')", {
  out <- round_trip(body = list(a = 1, b = 2), encode = "form")
  expect_equal(out$form$a, "1")
  expect_equal(out$form$b, "2")
})

test_that("named list matches form results (encode = 'multipart')", {
  out <- round_trip(body = list(a = 1, b = 2), encode = "multipart")
  expect_equal(out$form$a, "1")
  expect_equal(out$form$b, "2")
})

test_that("named list matches form results (encode = 'json')", {
  out <- round_trip(body = list(a = 1, b = 2), encode = "json")
  expect_equal(out$json$a[[1]], 1)
  expect_equal(out$json$b[[1]], 2)
})


test_that("file and form vals mixed give form and data elements", {
  out <- round_trip(body = list(y = data_path, a = 1))
  expect_equal(out$form$a, "1")
  split_actual <- str_split(out$file$y, "\n")[[1]]

  expect_equal(length(split_actual), expected = length(data), label = "The number of returned elements should match the number of lines in the data file.")
  for( i in seq_along(data) ) {
    expect_match(split_actual[i], regexp = data[i], info = paste("Element:", i))
  }
})

test_that("single file matches contents on disk", {
  out <- round_trip(body = data_path)
  # expect_equal(str_split(out$data, "\n")[[1]], data) #This line is dependent the line endings of ./test/testthat/data.txt.  The version below isn't.
  split_actual <- str_split(out$data, "\n")[[1]]

  expect_equal(length(split_actual), expected = length(data), label = "The number of returned elements should match the number of lines in the data file.")
  for( i in seq_along(data) ) {
    expect_match(split_actual[i], regexp = data[i], info = paste("Element:", i))
  }
})
