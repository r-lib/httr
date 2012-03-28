
config <- function(...) {
  options <- list(...)
  
  unknown <- setdiff(names(options), listCurlOptions())
  if (length(unknown) > 0) {
    stop("Unknown RCurl options: ", str_c(unkown, collapse = ", "))
  }
  
  structure(options, class = "config")
}

# Need to make it more reduce(modifyList)
c.config <- function(...) {
  structure(NextMethod(), class = "config")
}

print.config <- function(x, ...) {
  cat("Config: \n")
  str(unclass(x), give.head = FALSE)
}


default_config <- function() {  
  config(followlocation = 1L, maxredirs = 10L)
}
