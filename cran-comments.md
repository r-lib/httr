The following notes were generated across my local OS X install, ubuntu running on travis-ci and win builder (devel and release):

* checking CRAN incoming feasibility ... NOTE

  RCurl is not a spelling error.

I have also run R CMD check on downstream dependencies of httr. Results are available at R release: https://github.com/wch/checkresults/blob/master/httr/r-release. Potential problems:

* Ecoengine: this appears to be a failure related to config on that machine,
  I couldn't reproduce locally, and it doesn't seem likely to be related to
  changes to this version of httr.
