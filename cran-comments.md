## Test environments
* local OS X install, R 3.4.1
* ubuntu 12.04 (on travis-ci), R 3.4.1
* win-builder (devel and release)

## R CMD check results
0 errors | 0 warnings | 0 notes

## Revdepcheck results

(This is a new semi-automated report from the revdepcheck package. Please let me know if there is anything I can to do improve it.)

We checked 424 reverse dependencies (395 from CRAN + 29 from BioConductor) by running R CMD check twice, once with the CRAN version installed, and once with this version installed. We saw 5 new problems. We failed to check 12 packages. Issues are summarised below.

### New problems

Due to the nature of httr's dependencies, I believe that these new errors are due to random network/server failures. I informed all package maintainers about the problems on August 4, and ask them to double check.

* censusr
  checking examples ... ERROR

* dataonderivatives
  checking tests ...

* oai
  checking tests ...

* RSocrata
  checking tests ...

* sparklyr
  checking tests ...

### Failed to check

* ALA4R         (check timed out)
* biomartr      (check timed out)
* dataRetrieval (check timed out)
* dynamichazard (failed to install)
* GA4GHclient   (check timed out)
* gmum.r        (failed to install)
* googleAuthR   (check timed out)
* hansard       (check timed out)
* junr          (check timed out)
* paxtoolsr     (failed to install)
* rols          (check timed out)
* TCGAbiolinks  (check timed out)
