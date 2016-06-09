## Test environments
* local OS X install, R 3.3.0
* ubuntu 12.04 (on travis-ci), R 3.3.0
* win-builder (devel and release)

## R CMD check results
0 errors | 0 warnings | 1 notes

* httr uses the MIT license + license file template.

## Downstream dependencies

I ran `R CMD check` on all 239 reverse dependencies (results at https://github.com/hadley/httr/tree/master/revdep/)

Problems:

* Failed to install dependencies for: biomartr, stringgaussnet

* fitbitScraper: checking re-building of vignette outputs ... WARNING
  Appears to be error caught by stricter check in curl package.

* nat: checking tests ... ERROR
  Appears to be lingering failure from testthat update.

* REDCapR: checking tests ... ERROR
  Seems to be standard REDCapR unrealiability.

* RFc: checking tests ... ERROR
  I had problems checking this package - I think it's depending on an 
  unreliable web API.

* RSocrata: checking tests ... ERROR
  No idea - appears to be returning totally different values than 
  expected

I notified all authors about problem on May 25 and again today.
