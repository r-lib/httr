## Submission summary

This is a large update that replaces the dependency on RCurl with curl. This should mainly only affect the internal operation of the package, but some authors have relied on stuff they shouldn't have. Because of the large change, I notified all reverse depencies authors on June 10, giving them two weeks to fix any problems.

## Test environments
* local OS X install, R 3.1.2
* ubuntu 12.04 (on travis-ci), R 3.1.2
* win-builder (devel and release)

## R CMD check results
There were no ERRORs or WARNINGs. 

## Downstream dependencies
I ran `R CMD check` on all 109 reverse dependencies (https://github.com/hadley/httr/tree/master/revdep/summary.md). 

There were three failures that appear related to httr:

* covr
* genderizeR
* rentrez

I notified these authors on June 10, and again yesterday.
