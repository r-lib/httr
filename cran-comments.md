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

* biomartr
  checking tests ...

* boxoffice
  checking tests ...

* phenocamr
  checking tests ...

Random internet failure:

* banR
* bigrquery
* eurostat
* geoparser
* malariaAtlas
* RSelenium

Failure due to httptest:

* AlphaVantageClient
* crunch
* dkanr
* echor
* edgarWebR
* httpcache
* httptest
* pivotaltrackR
* rGoodData
* neurobase


### Failed to check

* CytobankAPIstats (failed to install)
* dynamichazard    (failed to install)
* ipeaData         (check timed out)
* MODISTools       (check timed out)
* xml2             (failed to install)
* rcongresso       (NA)
