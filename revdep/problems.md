# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.0 (2016-05-03) |
|system   |x86_64, darwin13.4.0         |
|ui       |RStudio (0.99.1186)          |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |
|date     |2016-05-25                   |

## Packages

|package   |*  |version    |date       |source              |
|:---------|:--|:----------|:----------|:-------------------|
|curl      |   |0.9.7      |2016-04-10 |CRAN (R 3.3.0)      |
|httpuv    |   |1.3.3      |2015-08-04 |CRAN (R 3.3.0)      |
|httr      |   |1.1.0.9000 |2016-05-25 |local (hadley/httr) |
|jpeg      |   |0.1-8      |2014-01-23 |CRAN (R 3.3.0)      |
|jsonlite  |   |0.9.20     |2016-05-10 |CRAN (R 3.3.0)      |
|knitr     |   |1.13       |2016-05-09 |CRAN (R 3.3.0)      |
|mime      |   |0.4        |2015-09-03 |CRAN (R 3.3.0)      |
|openssl   |   |0.9.3      |2016-05-04 |CRAN (R 3.3.0)      |
|png       |   |0.1-7      |2013-12-03 |CRAN (R 3.3.0)      |
|R6        |   |2.1.2      |2016-01-26 |CRAN (R 3.3.0)      |
|readr     |   |0.2.2      |2015-10-22 |CRAN (R 3.3.0)      |
|rmarkdown |   |0.9.6      |2016-05-01 |CRAN (R 3.3.0)      |
|testthat  |*  |1.0.2      |2016-04-23 |CRAN (R 3.3.0)      |
|xml2      |   |0.1.2      |2015-09-01 |CRAN (R 3.3.0)      |

# Check results
12 packages with problems

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

## geoknife (1.3.0)
Maintainer: Jordan Read <jread@usgs.gov>  
Bug reports: https://github.com/USGS-R/geoknife/issues

2 errors | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘geoknife-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: XML
> ### Title: XML from set of objects
> ### Aliases: XML XML,ANY,webdata,webprocess-method XML,webgeom-method
> 
> ### ** Examples
> 
> wd <- webdata('prism',times = as.POSIXct(c('2001-01-01','2002-02-05')))
> wg <- webgeom('state::Wisconsin')
StartTag: invalid element name
Extra content at the end of the document
Error: 1: StartTag: invalid element name
2: Extra content at the end of the document
Execution halted

checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  StartTag: invalid element name
  Extra content at the end of the document
  StartTag: invalid element name
  Extra content at the end of the document
  StartTag: invalid element name
  Extra content at the end of the document
  testthat results ================================================================
  OK: 48 SKIPPED: 45 FAILED: 2
  1. Error: multi-args work with shorthand knife (@test-knife_shorthand.R#23) 
  2. Error: show webprocess (@test-show_object.R#35) 
  
  Error: testthat unit tests failed
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
StartTag: invalid element name
Extra content at the end of the document
Quitting from lines 393-409 (geoknife.Rmd) 
Error: processing vignette 'geoknife.Rmd' failed with diagnostics:
http://cida.usgs.gov/gdp/process/WebProcessingService does not seem to be a valid Web Processing Service url.
Execution halted

```

## gmum.r (0.2.1)
Maintainer: Stanislaw Jastrzebski <staszek.jastrzebski@gmail.com>  
Bug reports: https://github.com/gmum/gmum.r/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘RcppArmadillo’ ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## htmltab (0.6.0)
Maintainer: Christian Rubba <christian.rubba@gmail.com>  
Bug reports: https://github.com/crubba/htmltab/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
         which = "//table[5]")
  3: httr::GET(doc)
  4: request_perform(req, hu$handle$handle) at /Users/hadley/Documents/web/httr/R/http-get.r:67
  5: request_fetch(req$output, req$url, handle) at /Users/hadley/Documents/web/httr/R/request.R:135
  6: request_fetch.write_memory(req$output, req$url, handle) at /Users/hadley/Documents/web/httr/R/write-function.R:74
  7: curl::curl_fetch_memory(url, handle = handle) at /Users/hadley/Documents/web/httr/R/write-function.R:76
  
  testthat results ================================================================
  OK: 118 SKIPPED: 0 FAILED: 1
  1. Error: check_type produces class output (@test_inputs.R#9) 
  
  Error: testthat unit tests failed
  Execution halted
```

## Luminescence (0.5.1)
Maintainer: Sebastian Kreutzer <sebastian.kreutzer@u-bordeaux-montaigne.fr>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppArmadillo’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## move (1.6.541)
Maintainer: Bart Kranstauber <bart.kranstauber@uni-konstanz.de>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘move’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/web/httr/revdep/checks/move.Rcheck/00install.out’ for details.
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

## RSocrata (1.7.0-14)
Maintainer: "Tom Schenk Jr." <developers@cityofchicago.org>  
Bug reports: https://github.com/Chicago/RSocrata/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  [2]  261 - -344 ==  605
  [3]  891 -   65 ==  826
  [4] -108 -  680 == -788
  [5] -416 -   16 == -432
  
  
  testthat results ================================================================
  OK: 96 SKIPPED: 0 FAILED: 2
  1. Failure: fully replace a dataset (@test-all.R#275) 
  2. Failure: fully replace a dataset (@test-all.R#276) 
  
  Error: testthat unit tests failed
  Execution halted
```

## stplanr (0.1.1)
Maintainer: Robin Lovelace <rob00x@gmail.com>  
Bug reports: https://github.com/ropensci/stplanr/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppArmadillo’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

