#' Get and set environment variables.
#'
#' This is a bad idea because it will leave it on the history
#'
#' @param Name of environment variable.
#' @param Value of environment variable. Use \code{NA} to unset.
#' @param Scope of change. If "session", the change is ephemeral and will
#'   disappear when you restart R. If "user", modifies your \code{~/.Renviron}
#'   so that it affects every project. If "site", modifies the site .Renviron
#'   so that it affects every user.
#' @return Invisibly, the previous value of the environment variable.
#' @noRd
#' @examples
#' \dontrun{
#' # Set locally
#' set_envvar("HTTR", "true")
#'
#' # Set for every new session (and this session)
#' set_envvar("HTTR", "false", "user")
#' # Update existing value
#' set_envvar("HTTR", "true", "user")
#' }
set_envvar <- function(name, value, scope = c("session", "user", "site")) {
  stopifnot(length(name) == 1, length(value) == 1)
  scope <- match.arg(scope)

  old <- get_envvar(value)

  path <- switch(scope,
    session = NULL,
    user = Sys.getenv("R_ENVIRON_USER", "~/.Renviron"),
    site = Sys.getenv("R_ENVIRON", file.path(R.home("etc"), "Renviron.site"))
  )
  set_envvar_local(name, value)
  if (scope != "session")
    set_envvar_renviron(name, value, path)

  invisible(old)
}


#' @rdname set_envvar
#' @noRd
get_envvar <- function(name) {
  stopifnot(is.character(name))
  Sys.getenv(name, unset = NA_character_)
}

set_envvar_local <- function(name, value) {
  if (is.na(value)) {
    Sys.unsetenv(name)
  } else {
    l <- stats::setNames(list(quote(value)), name)
    do.call("Sys.setenv", l)
  }
}

# @return \code{TRUE} if an existing env var was modified, \code{FALSE}
#   otherwise (invisibly).
set_envvar_renviron <- function(name, value, path) {
  ev <- paste0(name, '="', value, '"')
  if (is.na(value)) value <- ""

  if (!file.exists(path)) {
    # Create if it doesn't already exist
    cat(ev, "\n", sep = "", file = path)
    return(invisible(FALSE))
  }

  lines <- tryCatch(readLines(path), error = function(e) {
    stop("Failed to read ", path, " with error:\n", e$message, call. = FALSE)
  })
  re <- paste0("^", name, "=")
  matches <- which(grepl(re, lines))

  # No matches, so append to end of file
  if (length(matches) == 0) {
    message("Setting ", name, " in ", path)
    cat(ev, "\n", sep = "", file = path, append = TRUE)
    return(invisible(FALSE))
  }

  message("Updating ", name, " in ", path)
  if (length(matches) == 1) {
    lines[matches] <- ev
  } else {
    lines[matches[1]] <- ev
    lines <- lines[-matches[-1]]
  }

  lines <- tryCatch(writeLines(lines, path), error = function(e) {
    stop("Failed to write ", path, " with error:\n", e$message, call. = FALSE)
  })

  invisible(TRUE)
}

can_write <- function(x) file.access(x, 6)
