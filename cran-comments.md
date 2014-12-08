The following notes were generated across my local OS X install, ubuntu running on travis-ci and win builder (devel and release):

* checking dependencies in R code ... WARNING
  Namespace in Imports field not imported from: 'R6'

  This is a spurious warning: R6 is a build-time dependency.

## Reverse dependencies

I ran `R CMD check` on all 70 reverse dependencies (https://github.com/hadley/httr/tree/master/revdep/summary.md). As far as I can tell, there are no new problems caused by this version of httr.  I informed all package authors of the release on Dec 8 and encouraged them to verify for themselves.
