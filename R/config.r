
#' @export
config <- function(...) {
  options <- list(...)
  
  unknown <- setdiff(names(options), listCurlOptions())
  if (length(unknown) > 0) {
    stop("Unknown RCurl options: ", str_c(unkown, collapse = ", "))
  }
  
  structure(options, class = "config")
}

# Need to make it more reduce(modifyList)

#' @S3method c config
c.config <- function(...) {
  structure(NextMethod(), class = "config")
}

#' @S3method print config
print.config <- function(x, ...) {
  cat("Config: \n")
  str(unclass(x), give.head = FALSE)
}


default_config <- function() {  
  c(config(followlocation = 1L, maxredirs = 10L), getOption("httr_config"))
}
