The following notes were generated across my local OS X install, ubuntu running on travis-ci and win builder (devel and release):

* checking dependencies in R code ... WARNING
  Namespace in Imports field not imported from: 'R6'

  This is a spurious warning: R6 is a build-time dependency.

I have also run R CMD check on downstream dependencies of httr. Results are available at R release: https://github.com/wch/checkresults/blob/master/httr/r-release. Potential problems:

* Ecoengine: this appears to be a failure related to config on that machine,
  I couldn't reproduce locally, and it doesn't seem to be related to changes 
  in httr (the same problem exists with httr 0.4).
