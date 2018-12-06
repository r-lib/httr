## Test environments
* local OS X install, R 3.4.1
* ubuntu 12.04 (on travis-ci), R 3.4.1
* win-builder (devel and release)

## R CMD check results
0 errors | 0 warnings | 0 notes

## revdepcheck results

We checked 613 reverse dependencies (556 from CRAN + 57 from BioConductor), comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 19 new problems
 * We failed to check 6 packages

Issues with CRAN packages are summarised below.

### New problems
(This reports the first line of each new failure)

* AlphaVantageClient
  checking tests ...

* banR
  checking re-building of vignette outputs ... WARNING

* bigrquery
  checking tests ...

* biomartr
  checking tests ...

* boxoffice
  checking tests ...

* crunch
  checking tests ...
  checking re-building of vignette outputs ... WARNING

* dkanr
  checking tests ...
  checking re-building of vignette outputs ... WARNING

* echor
  checking re-building of vignette outputs ... WARNING

* edgarWebR
  checking tests ...

* eurostat
  checking re-building of vignette outputs ... WARNING

* geoparser
  checking re-building of vignette outputs ... WARNING

* httpcache
  checking tests ...

* httptest
  checking examples ... ERROR
  checking tests ...

* malariaAtlas
  checking re-building of vignette outputs ... WARNING

* neurobase
  checking re-building of vignette outputs ... WARNING

* phenocamr
  checking tests ...

* pivotaltrackR
  checking tests ...
  checking re-building of vignette outputs ... WARNING

* rGoodData
  checking tests ...

* RSelenium
  checking re-building of vignette outputs ... WARNING

### Failed to check

* CytobankAPIstats (failed to install)
* dynamichazard    (failed to install)
* ipeaData         (check timed out)
* MODISTools       (check timed out)
* xml2             (failed to install)
* rcongresso       (NA)
