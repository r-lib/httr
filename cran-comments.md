## Test environments

* local: darwin15.6.0-3.5.1
* travis: 3.1, 3.2, 3.3, oldrel, release, devel
* r-hub: windows-x86_64-devel, ubuntu-gcc-release, fedora-clang-devel
* win-builder: windows-x86_64-devel

## R CMD check results
0 errors | 0 warnings | 0 notes

## revdepcheck results

We checked 613 reverse dependencies (556 from CRAN + 57 from BioConductor), comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 19 new problems
 * We failed to check 6 packages

Issues with CRAN packages are summarised below.

### New problems
(This reports the first line of each new failure)

There were 10 failures due to httptest relying on internal implementation details. The author has a fix in flight and will submit to CRAN very shortly (I'm assuming the complete set of httr revdep tests will take a while so I'm submitting httr even though httptest is still on its way).

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

Random internet failure:

* banR
* bigrquery
* biomartr
* boxoffice
* eurostat
* geoparser
* malariaAtlas
* phenocamr
* RSelenium


### Failed to check

* CytobankAPIstats (failed to install)
* dynamichazard    (failed to install)
* ipeaData         (check timed out)
* MODISTools       (check timed out)
* xml2             (failed to install)
* rcongresso       (NA)
