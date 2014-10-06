#' Generate a safe R callback.
#'
#' Whenever an R callback function is passed to Rcurl, it needs to be wrapped
#' in this handler which converts errors and interrupts to the appropriate
#' values that cause RCurl to terminate a request
#'
#' @param f A function.
#' @export
#' @examples
#' f1 <- function(x) {
#'   if (x < 0) stop("Negative value")
#'   sqrt(x)
#' }
#' f2 <- safe_callback(f1)
#' f2(-10)
safe_callback <- function(f) {
  force(f)

  function(...) {
    tryCatch(f(...),
      error = function(e, ...) {
        message("Error:", e$message)
        1L
      },
      interrupt = function(...) {
        message("Interrupted by user")
        1L
      }
    )
  }
}
