Minor update: this version moves automated NSS check into explicit function to avoid false-positives.

---

## Test environments
* local OS X install, R 3.1.2
* ubuntu 12.04 (on travis-ci), R 3.1.2
* win-builder (devel and release)

## R CMD check results
There were no ERRORs or WARNINGs. 

* checking dependencies in R code ... WARNING
  Namespace in Imports field not imported from: 'R6'

  This is a spurious warning: R6 is a build-time dependency.

## Downstream dependencies
I ran `R CMD check` on all 70 reverse dependencies (https://github.com/hadley/httr/tree/master/revdep/summary.md). As far as I can tell, there are no new problems caused by this version of httr. I informed all package authors of the release on Dec 8 and encouraged them to verify for themselves.
