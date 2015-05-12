#' Generate a safe R callback.
#'
#' @param f A function.
#' @keywords deprecated
#' @export
safe_callback <- function(f) {
  warning("`safe_callback()` is no longer needed and will be removed in a ",
    "future version", call. = FALSE)
  f
}
