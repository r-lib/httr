#' \pkg{httr} makes http easy.
#'
#' \code{httr} is organised around the six most common http verbs:
#' \code{\link{GET}}, \code{\link{PATCH}},
#' \code{\link{POST}}, \code{\link{HEAD}},
#' \code{\link{PUT}}, and \code{\link{DELETE}}.
#'
#' Each request returns a \code{\link{response}} object which provides
#' easy access to status code, cookies, headers, timings, and other useful
#' info.  The content of the request is available as a raw vector
#' (\code{\link{content}}), character vector (\code{\link{text_content}}),
#' or parsed into an R object (\code{\link{parsed_content}}), currently for
#' html, xml, json, png and jpeg).
#'
#' Requests can be modified by various config options like
#' \code{\link{set_cookies}}, \code{\link{add_headers}},
#' \code{\link{authenticate}}, \code{\link{use_proxy}},
#' \code{\link{verbose}}, and \code{\link{timeout}}
#'
#' httr supports OAuth 1.0 and 2.0. Use \code{\link{oauth1.0_token}} and
#' \code{\link{oauth2.0_token}} to get user tokens, and
#' \code{\link{sign_oauth1.0}} and \code{\link{sign_oauth2.0}} to sign
#' requests. The demos directory has twelve demos of using OAuth: four for 1.0
#' (linkedin, twitter, vimeo, and yahoo) and eight for 2.0 (azure, facebook,
#` github, google, linkedin, reddit, yahoo, and yelp).
#'
#' @keywords internal
"_PACKAGE"
