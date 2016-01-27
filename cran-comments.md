## Test environments
* local OS X install, R 3.2.2
* ubuntu 12.04 (on travis-ci), R 3.2.2
* win-builder (devel and release)

## R CMD check results
0 errors | 0 warnings | 1 notes

* httr uses the MIT license + license file template.

## Downstream dependencies

* I ran `R CMD check` on all 180 reverse dependencies.

* Results at https://github.com/hadley/httr/tree/master/revdep/summary.md.

  * rvest failed, but I re-ran locally and it seems ok. Intermittent error?
  * WaterML failed, but author just submitted updated version.

* Authors were notified Jan 12.
