# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.0 (2016-05-03) |
|system   |x86_64, darwin13.4.0         |
|ui       |X11                          |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |
|date     |2016-06-09                   |

## Packages

|package   |*  |version    |date       |source                   |
|:---------|:--|:----------|:----------|:------------------------|
|curl      |   |0.9.7      |2016-04-10 |CRAN (R 3.3.0)           |
|httpuv    |   |1.3.3      |2015-08-04 |CRAN (R 3.3.0)           |
|httr      |   |1.1.0.9000 |2016-06-09 |local (hadley/httr@NA)   |
|jpeg      |   |0.1-8      |2014-01-23 |CRAN (R 3.3.0)           |
|jsonlite  |   |0.9.21     |2016-06-04 |cran (@0.9.21)           |
|knitr     |   |1.13       |2016-05-09 |CRAN (R 3.3.0)           |
|mime      |   |0.4        |2015-09-03 |CRAN (R 3.3.0)           |
|openssl   |   |0.9.4      |2016-05-25 |CRAN (R 3.3.0)           |
|png       |   |0.1-7      |2013-12-03 |CRAN (R 3.3.0)           |
|R6        |   |2.1.2      |2016-01-26 |CRAN (R 3.3.0)           |
|readr     |   |0.2.2      |2015-10-22 |CRAN (R 3.3.0)           |
|rmarkdown |   |0.9.6      |2016-05-01 |CRAN (R 3.3.0)           |
|testthat  |*  |1.0.2.9000 |2016-06-09 |github (hadley/testthat) |
|xml2      |   |0.1.2      |2015-09-01 |CRAN (R 3.3.0)           |

# Check results
7 packages with problems

## biomartr (0.0.3)
Maintainer: Hajk-Georg Drost <hgd23@cam.ac.uk>  
Bug reports: https://github.com/HajkD/biomartr/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘biomaRt’ ‘Biostrings’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## fitbitScraper (0.1.7)
Maintainer: Cory Nissen <corynissen@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 29-40 (fitbitScraper-examples.Rmd) 
Error: processing vignette 'fitbitScraper-examples.Rmd' failed with diagnostics:
Value for option cookie (10022) must be length-1 string
Execution halted

```

## nat (1.8.1)
Maintainer: Greg Jefferis <jefferis@gmail.com>  
Bug reports: https://github.com/jefferis/nat/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
    adding: DL3/EBH20L.swc (deflated 54%)
    adding: DL3/EBI22R.swc (deflated 53%)
  1. Failure: write.nrrd.header.for.file (@test-nrrd-io.R#132) -------------------
  error$message does not match "read.im3d".
  Actual value: "Unable to read data saved in format: am"
  
  
  testthat results ================================================================
  OK: 726 SKIPPED: 0 FAILED: 1
  1. Failure: write.nrrd.header.for.file (@test-nrrd-io.R#132) 
  
  Error: testthat unit tests failed
  Execution halted
```

## REDCapR (0.9.3)
Maintainer: Will Beasley <wibeasley@hotmail.com>  
Bug reports: https://github.com/OuhscBbmc/REDCapR/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  returned_object$outcome_messages does not match "The initial call failed with the code: 411.".
  Actual value: "The initial call failed with the code: 501."
  
  
  testthat results ================================================================
  OK: 55 SKIPPED: 43 FAILED: 4
  1. Failure: One Shot: Bad Uri -Not HTTPS (@test-read_errors.R#21) 
  2. Failure: One Shot: Bad Uri -Not HTTPS (@test-read_errors.R#23) 
  3. Failure: Batch: Bad Uri -Not HTTPS (@test-read_errors.R#59) 
  4. Failure: Batch: Bad Uri -Not HTTPS (@test-read_errors.R#63) 
  
  Error: testthat unit tests failed
  Execution halted

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RODBC’
```

## RFc (0.1-1)
Maintainer: Dmitry A. Grechka <dmitryg@itis.cs.msu.ru>  
Bug reports: https://github.com/dgrechka/RFc/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  [1] "pending=1; hash=27155a5e75b3a127a407efa73f33e9205011b399"
  
  Execution halted
```

## RSocrata (1.7.0-14)
Maintainer: "Tom Schenk Jr." <developers@cityofchicago.org>  
Bug reports: https://github.com/Chicago/RSocrata/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  [2] 141 -  390 == -249
  [3] 240 -  432 == -192
  [4] 906 - -769 == 1675
  [5] 195 -  805 == -610
  
  
  testthat results ================================================================
  OK: 96 SKIPPED: 0 FAILED: 2
  1. Failure: fully replace a dataset (@test-all.R#275) 
  2. Failure: fully replace a dataset (@test-all.R#276) 
  
  Error: testthat unit tests failed
  Execution halted
```

## stringgaussnet (1.1)
Maintainer: Emmanuel Chaplais <emmanuel.chaplais@inserm.fr>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available:
  ‘AnnotationDbi’ ‘GO.db’ ‘biomaRt’ ‘limma’ ‘org.Hs.eg.db’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

