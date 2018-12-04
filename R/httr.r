#' \pkg{httr} makes http easy.
#'
#' `httr` is organised around the six most common http verbs:
#' [GET()], [PATCH()],
#' [POST()], [HEAD()],
#' [PUT()], and [DELETE()].
#'
#' Each request returns a [response()] object which provides
#' easy access to status code, cookies, headers, timings, and other useful
#' info.  The content of the request is available as a raw vector
#' ([content()]), character vector ([text_content()]),
#' or parsed into an R object ([parsed_content()]), currently for
#' html, xml, json, png and jpeg).
#'
#' Requests can be modified by various config options like
#' [set_cookies()], [add_headers()],
#' [authenticate()], [use_proxy()],
#' [verbose()], and [timeout()]
#'
#' httr supports OAuth 1.0 and 2.0. Use [oauth1.0_token()] and
#' [oauth2.0_token()] to get user tokens, and
#' [sign_oauth1.0()] and [sign_oauth2.0()] to sign
#' requests. The demos directory has twelve demos of using OAuth: four for 1.0
#' (linkedin, twitter, vimeo, and yahoo) and eight for 2.0 (azure, facebook,
#' github, google, linkedin, reddit, yahoo, and yelp).
#'
#' @keywords internal
"_PACKAGE"
