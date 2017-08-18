## Test environments
* local OS X install, R 3.4.1
* ubuntu 12.04 (on travis-ci), R 3.4.1
* win-builder (devel and release)

## R CMD check results
0 errors | 0 warnings | 0 notes

## Revdepcheck results

This is a patch to fix an issue with interactive use of httr. It should not affect revdepchecks (and hence I have not run them).  Apologies for missing this problem in the inial release - unfortunately it's hard to test this code because it's designed purely for interactive use.
