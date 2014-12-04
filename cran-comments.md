The following notes were generated across my local OS X install, ubuntu running on travis-ci and win builder (devel and release):

* checking dependencies in R code ... WARNING
  Namespace in Imports field not imported from: 'R6'

  This is a spurious warning: R6 is a build-time dependency.

## Reverse dependencies

Important reverse dependency check notes (full summary at 
https://github.com/hadley/httr/tree/master/revdep/summary.md);

* gmailr and RSocrata: use deprecated function. Package authors informed Dec 4.
