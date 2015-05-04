## Test environments
* local OS X install, R 3.1.2
* ubuntu 12.04 (on travis-ci), R 3.1.2
* win-builder (devel and release)

## R CMD check results
There were no ERRORs or WARNINGs. 

## Downstream dependencies
This is a minor update to fix a number of small bugs. I ran `R CMD check` on all 72 reverse dependencies (https://github.com/hadley/httr/tree/master/revdep/summary.md). As far as I can tell, there are no new problems.
