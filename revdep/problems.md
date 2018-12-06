# abjutils

Version: 0.2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# aire.zmvm

Version: 0.8.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 52 marked UTF-8 strings
    ```

# algorithmia

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rjson’ ‘xml2’
      All declared Imports should be used.
    ```

# AlphaVantageClient

Version: 0.0.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [31m──[39m [31m1. Error: fetchSeries mocked (@test-fetch.R#13) [39m [31m──────────────────────────────────────────────────────────────────────[39m
      argument 'x' must be a raw vector
      1: fetchSeries(function_nm = "time_series_daily", symbol = "amzn", outputsize = "compact", datatype = "json") at testthat/test-fetch.R:13
      2: httr::GET(url) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/AlphaVantageClient/new/AlphaVantageClient.Rcheck/00_pkg_src/AlphaVantageClient/R/fetch.R:18
      3: request_perform(req, hu$handle$handle) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/http-get.r:69
      4: parse_http_headers(resp$headers) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/request.R:163
      5: strsplit(rawToChar(raw), "\r?\n") at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/headers.r:109
      6: rawToChar(raw) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/headers.r:109
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 33 SKIPPED: 0 FAILED: 1
      1. Error: fetchSeries mocked (@test-fetch.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# alphavantager

Version: 0.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# AnnotationForge

Version: 1.24.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/AnnotationForge_unit_tests.R’ failed.
    Last 13 lines of output:
      Loading required package: IRanges
      Loading required package: S4Vectors
      
      Attaching package: 'S4Vectors'
      
      The following object is masked from 'package:base':
      
          expand.grid
      
      [1] TRUE
      > AnnotationForge:::.test()
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> <Anonymous> -> library
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 54-57 (MakingNewAnnotationPackages.Rnw) 
    Error: processing vignette 'MakingNewAnnotationPackages.Rnw' failed with diagnostics:
    there is no package called 'Homo.sapiens'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘hgu95av2.db’ ‘human.db0’ ‘org.Hs.eg.db’ ‘Homo.sapiens’
      ‘hom.Hs.inp.db’ ‘GO.db’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        AnnDbPkg-templates   1.3Mb
        R                    2.1Mb
        extdata              3.3Mb
    ```

# AnnotationHub

Version: 2.14.1

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘ensembldb’
    Unexported object imported by a ':::' call: ‘BiocManager:::.version_bioc’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘AnnotationHubData’
    ```

# AntWeb

Version: 0.7

## In both

*   checking R code for possible problems ... NOTE
    ```
    aw_map: no visible global function definition for ‘browseURL’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/AntWeb/new/AntWeb.Rcheck/00_pkg_src/AntWeb/R/aw_map.R:52)
    Undefined global functions or variables:
      browseURL
    Consider adding
      importFrom("utils", "browseURL")
    to your NAMESPACE file.
    ```

# anyflights

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# anyLib

Version: 1.0.5

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# archivist

Version: 2.3.1

## In both

*   checking examples ... ERROR
    ```
    ...
    > createLocalRepo("ahistory_check", default = TRUE)
    > library(dplyr)
    
    Attaching package: ‘dplyr’
    
    The following objects are masked from ‘package:stats’:
    
        filter, lag
    
    The following objects are masked from ‘package:base’:
    
        intersect, setdiff, setequal, union
    
    > iris %a%
    + filter(Sepal.Length < 6) %a%
    +  lm(Petal.Length~Species, data=.) %a%
    +  summary() -> artifact
    Error in saveToRepo(env[[nm]], archiveData = FALSE, artifactName = lhs_name) : 
      devtools package required for archiveSessionInfo parameter
    Calls: %a% ... eval -> %a% -> eval -> eval -> %a% -> paste0 -> saveToRepo
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    
    Package which this enhances but not available for checking: ‘archivist.github’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘rmarkdown’, ‘archivist.github’
    ```

# aRxiv

Version: 0.5.16

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# atlas

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# auk

Version: 0.3.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 552 marked UTF-8 strings
    ```

# AzureRMR

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘jsonlite’
      All declared Imports should be used.
    ```

# BaMORC

Version: 1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# BANEScarparkinglite

Version: 0.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘zoo’
      All declared Imports should be used.
    ```

# banR

Version: 0.2.0

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 57-66 (geocode.Rmd) 
    Error: processing vignette 'geocode.Rmd' failed with diagnostics:
    The API sent back an error 503
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

# bcmaps

Version: 0.17.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bcmaps.rdata’
    ```

# bea.R

Version: 1.0.6

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘chron’ ‘colorspace’ ‘gtable’ ‘htmltools’ ‘htmlwidgets’
      ‘httpuv’ ‘magrittr’ ‘munsell’ ‘plyr’ ‘scales’ ‘stringi’ ‘xtable’
      ‘yaml’
      All declared Imports should be used.
    ```

# BETS

Version: 0.4.9

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# bib2df

Version: 1.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library("testthat")
      > library("bib2df")
      > test_check("bib2df")
      [31m──[39m [31m1. Failure: bib2df() throws error messages (@tests.R#70) [39m [31m─────────────────────────────────────────────────────────────[39m
      `bib2df("https://www.example.com/data/x.bib")` threw an error with unexpected message.
      Expected match: "Invalid URL: File is not readable."
      Actual message: "Could not resolve host: www.example.com"
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 19 SKIPPED: 0 FAILED: 1
      1. Failure: bib2df() throws error messages (@tests.R#70) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# BIGDAWG

Version: 2.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

# bigQueryR

Version: 0.4.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘bigrquery’
    ```

# bigrquery

Version: 1.0.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [31m──[39m [31m2. Error: can update dataset metadata (@bq-dataset.R#89) [39m [31m─────────────────────────────────────────────────────────────[39m
      Not found: Dataset bigrquery-examples:TESTING_urvkoehyid [notFound]
      1: bq_dataset_delete(ds)
      2: bq_delete(url, query = query) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/bigrquery/new/bigrquery.Rcheck/00_pkg_src/bigrquery/R/bq-dataset.R:89
      3: process_request(req) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/bigrquery/new/bigrquery.Rcheck/00_pkg_src/bigrquery/R/bq-request.R:114
      4: bq_check_response(status, type, content) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/bigrquery/new/bigrquery.Rcheck/00_pkg_src/bigrquery/R/bq-request.R:171
      5: signal_reason(json$error$errors[[1L]]$reason, json$error$message) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/bigrquery/new/bigrquery.Rcheck/00_pkg_src/bigrquery/R/bq-request.R:188
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 232 SKIPPED: 0 FAILED: 2
      1. Error: can update dataset metadata (@test-bq-dataset.R#18) 
      2. Error: can update dataset metadata (@bq-dataset.R#89) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# binman

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             httr::stop_for_status(res)
             res
         })(dir = dots[[1L]][[2L]], file = dots[[2L]][[2L]], url = dots[[3L]][[2L]])
      7: httr::GET(url, wd) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/binman/new/binman.Rcheck/00_pkg_src/binman/R/download_files.R:41
      8: request_perform(req, hu$handle$handle) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/http-get.r:69
      9: request_fetch(req$output, req$url, handle) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/request.R:149
      10: request_fetch.write_disk(req$output, req$url, handle) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/write-function.R:77
      11: curl::curl_fetch_disk(url, x$path, handle = handle) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/write-function.R:82
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 30 SKIPPED: 0 FAILED: 1
      1. Error: canDownloadFiles (@test-download_files.R#10) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# bio3d

Version: 2.3-4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        R   4.0Mb
    ```

# BiocCheck

Version: 1.18.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > ###   guidelines
    > ### Aliases: BiocCheck usage
    > 
    > ### ** Examples
    > 
    > packageDir <- system.file("testpackages", "testpkg0", package="BiocCheck")
    > BiocCheck(packageDir, `quit-with-status`=FALSE)
    This is BiocCheck version 1.18.0. BiocCheck is a work in progress.
    Output and severity of issues may change. Installing package...
      cmd: /Library/Frameworks/R.framework/Resources/bin/R
      args: --vanilla CMD INSTALL --no-test-load --library=/tmp/RtmpL3WCh7/lib '/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocCheck/new/BiocCheck.Rcheck/BiocCheck/testpackages/testpkg0'
      stderr:
      ERROR: dependency ‘devtools’ is not available for package ‘testpkg0’
      * removing ‘/private/tmp/RtmpL3WCh7/lib/testpkg0’
        * ERROR:
          /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocCheck/new/BiocCheck.Rcheck/BiocCheck/testpackages/testpkg0
          must be installable.
    Error in (function (package, help, pos = 2, lib.loc = NULL, character.only = FALSE,  : 
      there is no package called ‘testpkg0’
    Calls: BiocCheck ... suppressPackageStartupMessages -> withCallingHandlers -> do.call -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      
       
      1 Test Suite : 
      BiocCheck RUnit Tests - 1 test function, 1 error, 0 failures
      ERROR in /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocCheck/new/BiocCheck.Rcheck/BiocCheck/unitTests/test_BiocCheck.R: Error while sourcing  /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocCheck/new/BiocCheck.Rcheck/BiocCheck/unitTests/test_BiocCheck.R : Error in library(devtools) : there is no package called 'devtools'
      
      Test files with failing tests
      
         test_BiocCheck.R 
           /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocCheck/new/BiocCheck.Rcheck/BiocCheck/unitTests/test_BiocCheck.R 
      
      
      Error in BiocGenerics:::testPackage("BiocCheck") : 
        unit tests failed for package BiocCheck
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'BiocCheck.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    
    Package which this enhances but not available for checking: ‘codetoolsBioC’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        unitTests   4.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocManager:::.version_bioc’ ‘knitr:::detect_pattern’
      ‘tools:::RdTags’
      See the note in ?`:::` about the use of this operator.
    ```

# BiocFileCache

Version: 1.6.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: dbplyr
    Quitting from lines 770-799 (BiocFileCache.Rmd) 
    Error: processing vignette 'BiocFileCache.Rmd' failed with diagnostics:
    reading GFF file: line 1416108 has less than 8 tab-separated columns
    Execution halted
    ```

# BiocOncoTK

Version: 1.2.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘BiocOncoTK-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: load_ccleNRAS
    > ### Title: utilities for mock data (not involving internet access for
    > ###   vignette)
    > ### Aliases: load_ccleNRAS load_NRAS_AHR load_nrasdf
    > 
    > ### ** Examples
    > 
    > load_ccleNRAS()
    Loading required package: pogos
    Loading required package: rjson
    Loading required package: httr
    Error: package or namespace load failed for ‘pogos’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
     there is no package called ‘ontoProc’
    Error in .requirePackage(package) : 
      unable to find required package ‘pogos’
    Calls: <Anonymous> ... getClass -> getClassDef -> .classEnv -> .requirePackage
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Loading required package: BiocParallel
      
      Attaching package: 'DelayedArray'
      
      The following objects are masked from 'package:matrixStats':
      
          colMaxs, colMins, colRanges, rowMaxs, rowMins, rowRanges
      
      The following objects are masked from 'package:base':
      
          aperm, apply
      
      Error: package or namespace load failed for 'restfulSE' in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
       there is no package called 'GO.db'
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 18-30 (BiocOncoTK.Rmd) 
    Error: processing vignette 'BiocOncoTK.Rmd' failed with diagnostics:
    package or namespace load failed for 'pogos' in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
     there is no package called 'ontoProc'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘org.Hs.eg.db’ ‘ontoProc’ ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
      ‘TxDb.Hsapiens.UCSC.hg18.knownGene’ ‘FDb.InfiniumMethylation.hg19’
      ‘EnsDb.Hsapiens.v75’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        data   4.0Mb
        doc    1.9Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘DBI’
    A package should be listed in only one of these fields.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocOncoTK/new/BiocOncoTK.Rcheck/00_pkg_src/BiocOncoTK/R/mc3utils.R:118)
    ggFeatureSegs: no visible binding for global variable ‘symbol’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocOncoTK/new/BiocOncoTK.Rcheck/00_pkg_src/BiocOncoTK/R/mc3utils.R:124-126)
    ggMutDens : <anonymous>: no visible binding for global variable
      ‘Consequence’
    ggMutDens: no visible binding for global variable ‘project_short_name’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocOncoTK/new/BiocOncoTK.Rcheck/00_pkg_src/BiocOncoTK/R/mc3utils.R:67-68)
    ggMutDens: no visible binding for global variable ‘project_short_name’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocOncoTK/new/BiocOncoTK.Rcheck/00_pkg_src/BiocOncoTK/R/mc3utils.R:70)
    ggMutDens: no visible binding for global variable ‘project_short_name’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocOncoTK/new/BiocOncoTK.Rcheck/00_pkg_src/BiocOncoTK/R/mc3utils.R:71-73)
    mc3toGR : <anonymous>: no visible binding for global variable
      ‘Consequence’
    rainfall: no visible global function definition for ‘genome’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocOncoTK/new/BiocOncoTK.Rcheck/00_pkg_src/BiocOncoTK/R/rainfall3.R:152)
    tumNorSet : <anonymous>: no visible global function definition for
      ‘pancan_SE’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocOncoTK/new/BiocOncoTK.Rcheck/00_pkg_src/BiocOncoTK/R/pancan.R:132-134)
    Undefined global functions or variables:
      BiocFileCache Consequence genes genome pancan_SE project_short_name
      seqlengths symbol tfstart
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 46 marked UTF-8 strings
    ```

# BiocPkgTools

Version: 1.0.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Downloading package data...
    Package data download complete
    
    Attaching package: 'igraph'
    
    The following objects are masked from 'package:dplyr':
    
        as_data_frame, groups, union
    
    The following objects are masked from 'package:stats':
    
        decompose, spectrum
    
    The following object is masked from 'package:base':
    
        union
    
    Quitting from lines 198-200 (BiocPkgTools.Rmd) 
    Error: processing vignette 'BiocPkgTools.Rmd' failed with diagnostics:
    there is no package called 'visNetwork'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘visNetwork’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    process_data: no visible binding for global variable ‘biocViews’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocPkgTools/new/BiocPkgTools.Rcheck/00_pkg_src/BiocPkgTools/R/getData.R:47-66)
    process_data: no visible binding for global variable ‘Description’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocPkgTools/new/BiocPkgTools.Rcheck/00_pkg_src/BiocPkgTools/R/getData.R:47-66)
    process_data: no visible binding for global variable ‘downloads_month’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocPkgTools/new/BiocPkgTools.Rcheck/00_pkg_src/BiocPkgTools/R/getData.R:47-66)
    process_data: no visible binding for global variable ‘downloads_total’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocPkgTools/new/BiocPkgTools.Rcheck/00_pkg_src/BiocPkgTools/R/getData.R:47-66)
    summarise_dl_stats: no visible binding for global variable ‘Package’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocPkgTools/new/BiocPkgTools.Rcheck/00_pkg_src/BiocPkgTools/R/getData.R:75-80)
    summarise_dl_stats: no visible binding for global variable
      ‘Nb_of_downloads’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/BiocPkgTools/new/BiocPkgTools.Rcheck/00_pkg_src/BiocPkgTools/R/getData.R:75-80)
    Undefined global functions or variables:
      Author Description License Nb_of_downloads Package V<- any_alnums
      any_alphas any_blanks any_non_alnums any_of anything biocViews blank
      capture digit downloads_month downloads_total except_any_of maybe
      start tags
    Consider adding
      importFrom("stats", "start")
    to your NAMESPACE file.
    ```

# BiocWorkflowTools

Version: 1.8.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# biomaRt

Version: 2.38.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("biomaRt", encoding = "UTF-8")
      [31m──[39m [31m1. Error: Renaming columns - real data (@test_utilityFunctions.R#35) [39m [31m─────────────────────────────────────────────────[39m
      invalid 'text' argument
      1: useMart(biomart = "ensembl", host = "https://www.ensembl.org", dataset = "mmusculus_gene_ensembl", port = 443) at testthat/test_utilityFunctions.R:35
      2: useDataset(mart = mart, dataset = dataset, verbose = verbose) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/biomaRt/new/biomaRt.Rcheck/00_pkg_src/biomaRt/R/biomaRt.R:258
      3: bmAttrFilt("filters", mart, verbose = verbose) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/biomaRt/new/biomaRt.Rcheck/00_pkg_src/biomaRt/R/biomaRt.R:412
      4: textConnection(attrfilt) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/biomaRt/new/biomaRt.Rcheck/00_pkg_src/biomaRt/R/biomaRt.R:332
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 56 SKIPPED: 0 FAILED: 1
      1. Error: Renaming columns - real data (@test_utilityFunctions.R#35) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘AnnotationDbi:::smartKeys’
      See the note in ?`:::` about the use of this operator.
    ```

# biomartr

Version: 0.8.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘biomartr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getFilters
    > ### Title: Retrieve All Available Filters for a Specific Dataset
    > ### Aliases: getFilters
    > 
    > ### ** Examples
    > 
    > # search for available datasets
    > # getMarts()
    > # choose database (mart): "ENSEMBL_MART_ENSEMBL"
    > # head(getDatasets(mart = "ENSEMBL_MART_ENSEMBL"), 10)
    > # choose dataset: "hsapiens_gene_ensembl"
    > head(getFilters(mart = "ENSEMBL_MART_ENSEMBL", 
    +                 dataset = "hsapiens_gene_ensembl") , 5)
    Error in getFilters(mart = "ENSEMBL_MART_ENSEMBL", dataset = "hsapiens_gene_ensembl") : 
      Service Unavailable (HTTP 503).
    Calls: head -> getFilters -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      4: jsonlite::fromJSON(rest_url) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/biomartr/new/biomartr.Rcheck/00_pkg_src/biomartr/R/get.ensemblgenome.info.R:46
      5: fromJSON_string(txt = txt, simplifyVector = simplifyVector, simplifyDataFrame = simplifyDataFrame, 
             simplifyMatrix = simplifyMatrix, flatten = flatten, ...)
      6: parseJSON(txt, bigint_as_char)
      7: parse_con(txt, bigint_as_char)
      
      trying URL 'ftp://ftp.ncbi.nlm.nih.gov/genomes/genbank/metagenomes/assembly_summary.txt'
      Content type 'unknown' length 2921832 bytes (2.8 MB)
      ==================================================
      ══ testthat results  ═══════════════════════════════════════════════════════
      OK: 2 SKIPPED: 105 FAILED: 1
      1. Error: The getENSEMBLGENOMESInfo() interface works properly.. (@test-getENSEMBLGENOMESInfo.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# BIOMASS

Version: 1.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘lmfor’, ‘taxize’
    ```

# blscrapeR

Version: 3.1.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘blscrapeR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: qcew_api
    > ### Title: Request data from the Quarterly Census of Employment and Wages.
    > ### Aliases: qcew_api
    > ### Keywords: api bls cpi economics inflation unemployment
    > 
    > ### ** Examples
    > 
    > 
    > # A request for the employment levels and wages for NIACS 5112: Software Publishers.
    > dat <- qcew_api(year=2015, qtr="A", slice="area", sliceCode="US000")
    Please set a numeric year.
    Trying BLS servers...
    URL caused a warning. Please check your parameters and try again: https://data.bls.gov/cew/data/api/2015/A/area/US000.csv
    Error in qcew_api(year = 2015, qtr = "A", slice = "area", sliceCode = "US000") : 
      object 'qcewDat' not found
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(blscrapeR)
      > 
      > test_check("blscrapeR")
      [31m──[39m [31m1. Error: (unknown) (@test_qcew_api.R#8) [39m [31m─────────────────────────────────────────────────────────────────────────────[39m
      cannot open URL 'https://data.bls.gov/cew/data/api/2013/1/industry/5112.csv'
      1: download.file(url, temp, quiet = TRUE) at testthat/test_qcew_api.R:8
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 2 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_qcew_api.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# cdcfluview

Version: 0.7.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘units’
      All declared Imports should be used.
    ```

# CDECRetrieve

Version: 0.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘lazyeval’ ‘purrr’ ‘roxygen2’
      All declared Imports should be used.
    ```

# cellbaseR

Version: 1.6.0

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Attaching package: 'Biostrings'
    
    The following object is masked from 'package:DelayedArray':
    
        type
    
    The following object is masked from 'package:base':
    
        strsplit
    
    
    Attaching package: 'VariantAnnotation'
    
    The following object is masked from 'package:base':
    
        tabulate
    
    Quitting from lines 153-163 (cellbaseR.Rmd) 
    Error: processing vignette 'cellbaseR.Rmd' failed with diagnostics:
    error writing to connection
    Execution halted
    ```

# cepR

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 287 marked UTF-8 strings
    ```

# chromer

Version: 0.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    parse_counts: no visible global function definition for ‘na.omit’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/chromer/new/chromer.Rcheck/00_pkg_src/chromer/R/clean-data.R:77)
    Undefined global functions or variables:
      na.omit
    Consider adding
      importFrom("stats", "na.omit")
    to your NAMESPACE file.
    ```

# civis

Version: 1.5.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# classyfireR

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: eval_bare(get_expr(quo), get_env(quo))
      4: dplyr::is.tbl(retrieve_classification(inchi_sub$query_id))
      5: retrieve_classification(inchi_sub$query_id)
      6: jsonlite::fromJSON(text_content) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/classyfireR/new/classyfireR.Rcheck/00_pkg_src/classyfireR/R/retrieve_classification.R:27
      7: fromJSON_string(txt = txt, simplifyVector = simplifyVector, simplifyDataFrame = simplifyDataFrame, simplifyMatrix = simplifyMatrix, 
             flatten = flatten, ...)
      8: parseJSON(txt, bigint_as_char)
      9: parse_string(txt, bigint_as_char)
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 10 SKIPPED: 0 FAILED: 1
      1. Error: submit-classification (@test-submission.R#16) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ClusterJudge

Version: 1.4.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ClusterJudge-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: clusterJudge
    > ### Title: judges clustering using an entity.attribute table
    > ### Aliases: clusterJudge
    > ### Keywords: attribute_mut_inf consolidate_entity_attribute
    > 
    > ### ** Examples
    > 
    > 
    > library('yeastExpData')
    Error in library("yeastExpData") : 
      there is no package called ‘yeastExpData’
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 61-62 (ClusterJudge-intro.Rmd) 
    Error: processing vignette 'ClusterJudge-intro.Rmd' failed with diagnostics:
    there is no package called 'devtools'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘yeastExpData’ ‘devtools’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   5.0Mb
    ```

# congressbr

Version: 0.1.3

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘congressbr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: sen_bills
    > ### Title: Downloads and tidies information on the legislation in the
    > ###   Federal Senate
    > ### Aliases: sen_bills
    > 
    > ### ** Examples
    > 
    > pls_5_2010 <- sen_bills(type = "PLS", number = 5, year = 2010)
    Error: Column `bill_indexing` must be a 1d atomic vector or a list
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 187 marked UTF-8 strings
    ```

# cRegulome

Version: 0.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Loading required package: IRanges
    Loading required package: S4Vectors
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    
    Attaching package: 'IRanges'
    
    The following object is masked from 'package:R.oo':
    
        trim
    
    Quitting from lines 32-41 (case_study.Rmd) 
    Error: processing vignette 'case_study.Rmd' failed with diagnostics:
    there is no package called 'org.Hs.eg.db'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘org.Hs.eg.db’
    ```

# crunch

Version: 1.24.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 958 SKIPPED: 1 FAILED: 112
      1. Error: (unknown) (@test-active-filter.R#3) 
      2. Error: (unknown) (@test-add-variable.R#287) 
      3. Error: Deprecation warnings report to the user (@test-api.R#22) 
      4. Error: But other kinds of warnings don't look like deprecations (@test-api.R#34) 
      5. Error: crunch.debug logging if enabled (@test-api.R#54) 
      6. Error: 503 on GET with Retry-After is handled (@test-api.R#71) 
      7. Error: Checking feature flags (@test-api.R#79) 
      8. Error: (unknown) (@test-append-subset.R#3) 
      9. Error: (unknown) (@test-appending.R#18) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    You may need to restart R after upgrading.
    
    Attaching package: 'crunch'
    
    The following object is masked from 'package:stats':
    
        setNames
    
    The following object is masked from 'package:utils':
    
        write.csv
    
    The following object is masked from 'package:base':
    
        table
    
    Quitting from lines 18-21 (crunch.Rmd) 
    Error: processing vignette 'crunch.Rmd' failed with diagnostics:
    argument 'x' must be a raw vector
    Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        R     4.1Mb
        doc   1.1Mb
    ```

# CytobankAPI

Version: 1.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        doc   4.1Mb
    ```

# CytobankAPIstats

Version: 2.0

## In both

*   checking whether package ‘CytobankAPIstats’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/CytobankAPIstats/new/CytobankAPIstats.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CytobankAPIstats’ ...
** package ‘CytobankAPIstats’ successfully unpacked and MD5 sums checked
** R
** byte-compile and prepare package for lazy loading
Error : .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/CytobankAPIstats/rJava/libs/rJava.so':
  dlopen(/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/CytobankAPIstats/rJava/libs/rJava.so, 6): Library not loaded: /Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home/lib/server/libjvm.dylib
  Referenced from: /Users/hadley/Documents/r-lib/httr/revdep/library.noindex/CytobankAPIstats/rJava/libs/rJava.so
  Reason: image not found
ERROR: lazy loading failed for package ‘CytobankAPIstats’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/CytobankAPIstats/new/CytobankAPIstats.Rcheck/CytobankAPIstats’

```
### CRAN

```
* installing *source* package ‘CytobankAPIstats’ ...
** package ‘CytobankAPIstats’ successfully unpacked and MD5 sums checked
** R
** byte-compile and prepare package for lazy loading
Error : .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/CytobankAPIstats/rJava/libs/rJava.so':
  dlopen(/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/CytobankAPIstats/rJava/libs/rJava.so, 6): Library not loaded: /Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home/lib/server/libjvm.dylib
  Referenced from: /Users/hadley/Documents/r-lib/httr/revdep/library.noindex/CytobankAPIstats/rJava/libs/rJava.so
  Reason: image not found
ERROR: lazy loading failed for package ‘CytobankAPIstats’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/CytobankAPIstats/old/CytobankAPIstats.Rcheck/CytobankAPIstats’

```
# d3r

Version: 0.8.4

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘igraph’ ‘partykit’ ‘treemap’ ‘V8’
    ```

# datarobot

Version: 2.10.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

# datasus

Version: 0.4.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RCurl’
      All declared Imports should be used.
    ```

# dkanr

Version: 0.1.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 52 SKIPPED: 0 FAILED: 25
      1. Error: dkan_list class functions work as expected (@test-as-dkan_list.R#12) 
      2. Error: dkan_node class functions work as expected (@test-as-dkan_node.R#12) 
      3. Error: Connect system is working as expected (@test-connect_system.R#12) 
      4. Error: Node is correctly created and returned (@test-create_node.R#24) 
      5. Error: JSON is returned by default (@test-create_node.R#31) 
      6. Error: JSON node is correctly returned (@test-dkan_REQUEST.R#15) 
      7. Error: Logout is working as expected (@test-dkanr_logout.R#14) 
      8. Failure: Errors from datastore API are handled correctly (@test-ds_err_handler.R#12) 
      9. Error: Datastore status correctly detected (@test-ds_is_available.R#12) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        is_null
    
    
    Attaching package: 'dplyr'
    
    The following object is masked from 'package:testthat':
    
        matches
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 64-71 (getting_started_with_dkanr.Rmd) 
    Error: processing vignette 'getting_started_with_dkanr.Rmd' failed with diagnostics:
    argument 'x' must be a raw vector
    Execution halted
    ```

# Doscheda

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        data             2.1Mb
        doc              1.6Mb
        shiny-examples   2.0Mb
    ```

# dpmr

Version: 0.1.9

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# dwapi

Version: 0.1.3.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘xml2’
      All declared Imports should be used.
    ```

# dynamichazard

Version: 0.6.1

## In both

*   checking whether package ‘dynamichazard’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/dynamichazard/new/dynamichazard.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘dynamichazard’ ...
** package ‘dynamichazard’ successfully unpacked and MD5 sums checked
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/dynamichazard/Rcpp/include" -I"/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/dynamichazard/RcppArmadillo/include" -I/usr/local/include   -fopenmp -fPIC  -Wall -g -O2 -c PF/importance_samplers.cpp -o PF/importance_samplers.o
clang: error: unsupported option '-fopenmp'
make: *** [PF/importance_samplers.o] Error 1
ERROR: compilation failed for package ‘dynamichazard’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/dynamichazard/new/dynamichazard.Rcheck/dynamichazard’

```
### CRAN

```
* installing *source* package ‘dynamichazard’ ...
** package ‘dynamichazard’ successfully unpacked and MD5 sums checked
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/dynamichazard/Rcpp/include" -I"/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/dynamichazard/RcppArmadillo/include" -I/usr/local/include   -fopenmp -fPIC  -Wall -g -O2 -c PF/importance_samplers.cpp -o PF/importance_samplers.o
clang: error: unsupported option '-fopenmp'
make: *** [PF/importance_samplers.o] Error 1
ERROR: compilation failed for package ‘dynamichazard’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/dynamichazard/old/dynamichazard.Rcheck/dynamichazard’

```
# echor

Version: 0.1.1

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 92-95 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    argument 'x' must be a raw vector
    Execution halted
    ```

# ecoengine

Version: 1.11.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# edgarWebR

Version: 1.0.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 44 SKIPPED: 14 FAILED: 37
      1. Failure: running  (@test_browse_edgar.R#5) 
      2. Error: running  (@test_browse_edgar.R#7) 
      3. Error: One Result (Cloudera) (@test_cik_search.R#5) 
      4. Error: 100+ Results (Intel) (@test_cik_search.R#17) 
      5. Error: No Results (@test_cik_search.R#24) 
      6. Error: running (@test_company_details.R#6) 
      7. Error: type filtering (@test_company_details.R#14) 
      8. Error: running (@test_company_filings.R#6) 
      9. Error: type filtering (@test_company_filings.R#15) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# ENCODExplorer

Version: 2.8.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 74.0Mb
      sub-directories of 1Mb or more:
        data     24.1Mb
        doc       1.5Mb
        extdata  48.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    step6_target: no visible binding for global variable ‘target’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ENCODExplorer/new/ENCODExplorer.Rcheck/00_pkg_src/ENCODExplorer/R/prepare_data.R:354-355)
    step7: no visible binding for global variable ‘organism’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ENCODExplorer/new/ENCODExplorer.Rcheck/00_pkg_src/ENCODExplorer/R/prepare_data.R:424-425)
    step8: no visible binding for global variable ‘investigated_as’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ENCODExplorer/new/ENCODExplorer.Rcheck/00_pkg_src/ENCODExplorer/R/prepare_data.R:436-437)
    step8: no visible binding for global variable ‘target’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ENCODExplorer/new/ENCODExplorer.Rcheck/00_pkg_src/ENCODExplorer/R/prepare_data.R:439-440)
    step9: no visible binding for global variable ‘organism’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ENCODExplorer/new/ENCODExplorer.Rcheck/00_pkg_src/ENCODExplorer/R/prepare_data.R:449-450)
    Undefined global functions or variables:
      . Experiment Value accession antibody_caption
      antibody_characterization antibody_target assay
      biological_replicate_number biosample_name biosample_type col_name
      controls data date_released download.file encode_df file_accession
      file_format href investigated_as lab nucleic_acid_term organism
      platform project replicate_antibody replicate_library server status
      submitted_by target technical_replicate_number treatment ui value
    Consider adding
      importFrom("utils", "data", "download.file")
    to your NAMESPACE file.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 771 marked UTF-8 strings
    ```

# ess

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      [31m──[39m [31m5. Failure: show_country_rounds returns correct rounds for countries (@test-show_.R#101[39m
      show_country_rounds("Spain") not equal to 1:7.
      Lengths differ: 9 is not 7
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 33 SKIPPED: 23 FAILED: 5
      1. Failure: show_country_rounds returns correct rounds for countries (@test-show_.R#97) 
      2. Failure: show_country_rounds returns correct rounds for countries (@test-show_.R#98) 
      3. Failure: show_country_rounds returns correct rounds for countries (@test-show_.R#99) 
      4. Failure: show_country_rounds returns correct rounds for countries (@test-show_.R#100) 
      5. Failure: show_country_rounds returns correct rounds for countries (@test-show_.R#101) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# eurostat

Version: 3.3.1

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: xml2
    Warning in (function (con, what, n = 1L, size = NA_integer_, signed = TRUE,  :
      URL 'https://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?sort=1&downfile=table_of_contents_en.txt': status was 'Failure when receiving data from the peer'
    Quitting from lines 58-68 (eurostat_tutorial.Rmd) 
    Error: processing vignette 'eurostat_tutorial.Rmd' failed with diagnostics:
    Evaluation error: cannot read from connection.
    Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 595 marked UTF-8 strings
    ```

# EventStudy

Version: 0.34

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        doc   5.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘curl’ ‘openxlsx’ ‘stringr’
      All declared Imports should be used.
    ```

# fauxpas

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘whisker’
      All declared Imports should be used.
    ```

# fbRanks

Version: 2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘RCurl’ ‘RJSONIO’ ‘XML’ ‘glmnet’ ‘httr’ ‘speedglm’ ‘tcltk’ ‘xtable’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    Undefined global functions or variables:
      Axis GET abline as as.formula axis box coef content devAskNewPage
      fromJSON getNodeSet getURL glm glmnet hist htmlParse legend lines
      loess mad median plot pnorm points poisson predict quantile read.csv
      readHTMLTable residuals rpois runif sparseMatrix speedglm tclObj<-
      tclVar tclvalue tclvalue<- terms text text_content title tkbutton
      tkcurselection tkdestroy tkentry tkframe tkgrid tklabel tklistbox
      tkpack tkradiobutton tkselection.clear tktoplevel tkwait.window
      tkwm.title user_agent write.table xmlAttrs xmlChildren xmlValue
      xtable
    Consider adding
      importFrom("grDevices", "devAskNewPage")
      importFrom("graphics", "Axis", "abline", "axis", "box", "hist",
                 "legend", "lines", "plot", "points", "text", "title")
      importFrom("methods", "as")
      importFrom("stats", "as.formula", "coef", "glm", "loess", "mad",
                 "median", "pnorm", "poisson", "predict", "quantile",
                 "residuals", "rpois", "runif", "terms")
      importFrom("utils", "read.csv", "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# FedData

Version: 2.5.5

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# fedreporter

Version: 0.2.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘fedreporter-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: fe_projects
    > ### Title: Federal RePORTER projects
    > ### Aliases: fe_projects
    > 
    > ### ** Examples
    > 
    > res = fe_projects(project_number = "5R01MH092950-05")
    GET command is:
    Response [https://api.federalreporter.nih.gov/v1/Projects?projectNumber=5R01MH092950-05]
      Date: 2018-12-05 16:29
      Status: 500
      Content-Type: <unknown>
    <EMPTY BODY>
    Error in fe_projects(project_number = "5R01MH092950-05") : 
      Internal Server Error (HTTP 500).
    Calls: fe_projects -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        Date: 2018-12-05 16:29
        Status: 500
        Content-Type: <unknown>
      <EMPTY BODY>
      [31m──[39m [31m1. Error: Check projects (@test-projects.R#2) [39m [31m────────────────────────────────────────[39m
      Internal Server Error (HTTP 500).
      1: fe_projects(project_number = "5R01MH092950-05") at testthat/test-projects.R:2
      2: httr::stop_for_status(res) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/fedreporter/new/fedreporter.Rcheck/00_pkg_src/fedreporter/R/fe_projects.R:51
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: Check projects (@test-projects.R#2) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# fingertipsR

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrr’
      All declared Imports should be used.
    ```

# fitbitScraper

Version: 0.1.8

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 22-24 (fitbitScraper-examples.Rmd) 
    Error: processing vignette 'fitbitScraper-examples.Rmd' failed with diagnostics:
    login failed
    Execution halted
    ```

# flora

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        R   7.2Mb
    ```

# fredr

Version: 1.0.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# ftDK

Version: 1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 39 marked UTF-8 strings
    ```

# fulltext

Version: 1.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        examples   4.2Mb
    ```

# GA4GHclient

Version: 1.6.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 14 SKIPPED: 0 FAILED: 82
      1. Error: getBiosample works (@test-getBiosample.R#6) 
      2. Error: getCallSet works (@test-getCallSet.R#6) 
      3. Error: getDataset works (@test-getDataset.R#6) 
      4. Error: getExpressionLevel works (@test-getExpressionLevel.R#6) 
      5. Error: getFeature works (@test-getFeature.R#6) 
      6. Error: getFeatureSet works (@test-getFeatureSet.R#6) 
      7. Error: getIndividual works (@test-getIndividual.R#6) 
      8. Error: getReadGroupSet works (@test-getReadGroupSet.R#6) 
      9. Error: getReference works (@test-getReference.R#6) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    The following objects are masked from 'package:base':
    
        Filter, Find, Map, Position, Reduce, anyDuplicated, append,
        as.data.frame, basename, cbind, colMeans, colSums, colnames,
        dirname, do.call, duplicated, eval, evalq, get, grep, grepl,
        intersect, is.unsorted, lapply, lengths, mapply, match, mget,
        order, paste, pmax, pmax.int, pmin, pmin.int, rank, rbind,
        rowMeans, rowSums, rownames, sapply, setdiff, sort, table,
        tapply, union, unique, unsplit, which, which.max, which.min
    
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    Quitting from lines 129-133 (GA4GHclient.Rmd) 
    Error: processing vignette 'GA4GHclient.Rmd' failed with diagnostics:
    there is no package called 'org.Hs.eg.db'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘org.Hs.eg.db’ ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
    ```

# ganalytics

Version: 0.10.4

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# gdns

Version: 0.3.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# gender

Version: 0.5.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘genderdata’
    ```

# genderizeR

Version: 2.0.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘sortinghat’
    ```

# GenomicDataCommons

Version: 1.6.0

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object '.htseq_importer'
      ‘fnames’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Loading required package: magrittr
    
    Attaching package: 'GenomicDataCommons'
    
    The following object is masked from 'package:stats':
    
        filter
    
    Quitting from lines 145-146 (overview.Rmd) 
    Error: processing vignette 'overview.Rmd' failed with diagnostics:
    failed to rename downloaded file:
    
      from: '/Users/hadley/Library/Caches/GenomicDataCommons/1c710ed8-4e82-48ce-a559-71a5c790c2e5/.partial_download'
      to: '/Users/hadley/Library/Caches/GenomicDataCommons/1c710ed8-4e82-48ce-a559-71a5c790c2e5/85fe5749-1fef-49a2-bbac-9200c3c5a1cb.htseq.counts.gz'
      reason:
        cannot rename file
        '/Users/hadley/Library/Caches/GenomicDataCommons/1c710ed8-4e82-48ce-a559-71a5c790c2e5/.partial_download'
        to
        '/Users/hadley/Library/Caches/GenomicDataCommons/1c710ed8-4e82-48ce-a559-71a5c790c2e5/85fe5749-1fef-49a2-bbac-9200c3c5a1cb.htseq.counts.gz',
        reason 'No such file or directory'
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    default_fields.character: no visible binding for global variable
      ‘defaults’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GenomicDataCommons/new/GenomicDataCommons.Rcheck/00_pkg_src/GenomicDataCommons/R/fields.R:51)
    gdc_rnaseq: no visible binding for global variable ‘case_id’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GenomicDataCommons/new/GenomicDataCommons.Rcheck/00_pkg_src/GenomicDataCommons/R/gdc_rnaseq.R:106-107)
    gdc_rnaseq: no visible binding for global variable ‘file_id’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GenomicDataCommons/new/GenomicDataCommons.Rcheck/00_pkg_src/GenomicDataCommons/R/gdc_rnaseq.R:106-107)
    Undefined global functions or variables:
      case_id defaults file_id
    ```

# geojsonio

Version: 0.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc        1.4Mb
        examples   1.6Mb
        vign       1.0Mb
    ```

# geoparser

Version: 0.1.1

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error in re-building vignettes:
      ...
    Could not fetch http://www.ropensci.org/public_images/github_footer.png
    HttpExceptionRequest Request {
      host                 = "www.ropensci.org"
      port                 = 80
      secure               = False
      requestHeaders       = []
      path                 = "/public_images/github_footer.png"
      queryString          = ""
      method               = "GET"
      proxy                = Nothing
      rawBody              = False
      redirectCount        = 10
      responseTimeout      = ResponseTimeoutDefault
      requestVersion       = HTTP/1.1
    }
     ResponseTimeout
    Error: processing vignette 'geoparser.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 61
    Execution halted
    ```

# GEOquery

Version: 2.50.0

## Newly fixed

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    ..... ............... .................. ......... ............
    See problems(...) for more details.
    
    Using locally cached version of GPL97 found here:
    /tmp/RtmpDbMYdv/GPL97.annot.gz 
    Warning: 68 parsing failures.
      row             col           expected    actual         file
    22578 Platform_SPOTID 1/0/T/F/TRUE/FALSE --Control literal data
    22579 Platform_SPOTID 1/0/T/F/TRUE/FALSE --Control literal data
    22580 Platform_SPOTID 1/0/T/F/TRUE/FALSE --Control literal data
    22581 Platform_SPOTID 1/0/T/F/TRUE/FALSE --Control literal data
    22582 Platform_SPOTID 1/0/T/F/TRUE/FALSE --Control literal data
    ..... ............... .................. ......... ............
    See problems(...) for more details.
    
    Warning in download.file(myurl, destfile, mode = mode, quiet = TRUE, method = getOption("download.file.method.GEOquery")) :
      URL 'https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?targ=self&acc=GPL97&form=text&view=full': status was 'Failure when receiving data from the peer'
    Quitting from lines 251-257 (GEOquery.Rmd) 
    Error: processing vignette 'GEOquery.Rmd' failed with diagnostics:
    download from 'https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?targ=self&acc=GPL97&form=text&view=full' failed
    Execution halted
    ```

## In both

*   checking examples ... ERROR
    ```
    ...
    
    > ### Name: getGSEDataTables
    > ### Title: Get GSE data tables from GEO into R data structures.
    > ### Aliases: getGSEDataTables
    > ### Keywords: IO
    > 
    > ### ** Examples
    > 
    > 
    > dfl = getGSEDataTables("GSE3494")
    Called from: FUN(X[[i]], ...)
    Browse[1]> lapply(dfl,head)
    Error in lapply(dfl, head) : object 'dfl' not found
    Calls: getGSEDataTables -> sapply -> lapply -> FUN -> lapply
    Browse[1]> 
    debug at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GEOquery/new/GEOquery.Rcheck/00_pkg_src/GEOquery/R/getGSEDataTables.R#37: dTable = suppressWarnings(read_tsv(dTableText, col_names = FALSE))
    Browse[2]> 
    Error in read_tokens_(data, tokenizer, col_specs, col_names, locale_,  : 
      attempt to set index 1000/326 in SET_STRING_ELT
    Calls: getGSEDataTables -> sapply -> lapply -> FUN
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      downloaded 3.3 MB
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 175 SKIPPED: 0 FAILED: 8
      1. Error: generic GPL parsing works as expected (@test_GPL.R#5) 
      2. Error: quoted GPL works (@test_GPL.R#17) 
      3. Error: empty GSE is handled correctly (@test_GSE.R#6) 
      4. Error: case-mismatched IDs in GSEs handled correctly (@test_GSE.R#15) 
      5. Failure: short GSE handled correctly (@test_GSE.R#30) 
      6. Failure: GSE with more than one value per characteristic handled (@test_GSE.R#49) 
      7. Failure: GSE without GPL works (@test_fetch_GPL_false.R#9) 
      8. Error: GSE Supplemental files downloading works (@test_supp_files.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.9Mb
      sub-directories of 1Mb or more:
        extdata  12.8Mb
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘GEOquery’ for: ‘show’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘httr’
      All declared Imports should be used.
    Package in Depends field not imported from: ‘methods’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GEOquery/new/GEOquery.Rcheck/00_pkg_src/GEOquery/R/parseGEO.R:531-539)
    parseGSEMatrix: no visible binding for global variable ‘accession’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GEOquery/new/GEOquery.Rcheck/00_pkg_src/GEOquery/R/parseGEO.R:531-539)
    parseGSEMatrix: no visible binding for global variable ‘accession’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GEOquery/new/GEOquery.Rcheck/00_pkg_src/GEOquery/R/parseGEO.R:541-542)
    parseGSEMatrix: no visible global function definition for ‘new’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GEOquery/new/GEOquery.Rcheck/00_pkg_src/GEOquery/R/parseGEO.R:568)
    parseGSEMatrix: no visible global function definition for ‘new’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GEOquery/new/GEOquery.Rcheck/00_pkg_src/GEOquery/R/parseGEO.R:590)
    parseGSEMatrix: no visible global function definition for ‘new’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GEOquery/new/GEOquery.Rcheck/00_pkg_src/GEOquery/R/parseGEO.R:606-610)
    parseGSEMatrix: no visible global function definition for ‘as’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GEOquery/new/GEOquery.Rcheck/00_pkg_src/GEOquery/R/parseGEO.R:606-610)
    Undefined global functions or variables:
      . MA accession as characteristics k kvpair new read.delim read.table
      v
    Consider adding
      importFrom("methods", "as", "new")
      importFrom("utils", "read.delim", "read.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# getCRUCLdata

Version: 0.2.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1/1 mismatches
      [1] 12.9 - 12.9 == 5.72e-07
      
      [31m──[39m [31m2. Failure: Test that create_stack creates tmn if requested (@test-create_CRU_stack.R#1[39m
      raster::maxValue(CRU_stack_list[[1]][[1]]) not equal to 4.3.
      1/1 mismatches
      [1] 4.3 - 4.3 == 1.91e-07
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 661 SKIPPED: 23 FAILED: 2
      1. Failure: Test that create_stack creates tmx if requested (@test-create_CRU_stack.R#868) 
      2. Failure: Test that create_stack creates tmn if requested (@test-create_CRU_stack.R#1233) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# getProxy

Version: 1.12

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘bitops’ ‘data.table’ ‘dplyr’ ‘httr’
      All declared Imports should be used.
    ```

# gfer

Version: 0.1.10

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# githubinstall

Version: 0.2.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# gitlabr

Version: 0.9

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# googleAuthR

Version: 0.7.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘devtools’
    ```

# googleComputeEngineR

Version: 0.2.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# GoogleGenomics

Version: 2.4.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘GoogleGenomics-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getReads
    > ### Title: Get reads from Google Genomics.
    > ### Aliases: getReads
    > 
    > ### ** Examples
    > 
    > # Authenticated on package load from the env variable GOOGLE_API_KEY.
    > reads <- getReads()
    Error in getSearchPage("reads", body, fields, pageToken) : 
      You are not authenticated; see ?GoogleGenomics::authenticate.
    Calls: getReads -> getReadsPage -> getSearchPage
    Execution halted
    ```

*   checking whether package ‘GoogleGenomics’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: Package 'GoogleGenomics' is deprecated and will be removed from
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/GoogleGenomics/new/GoogleGenomics.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘BSgenome.Hsapiens.UCSC.hg19’ ‘org.Hs.eg.db’
      ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# googlesheets

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# graphite

Version: 1.28.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘graphite-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: convertIdentifiers
    > ### Title: Convert the node identifiers of a pathway.
    > ### Aliases: convertIdentifiers
    > 
    > ### ** Examples
    > 
    >   r <- pathways("hsapiens", "reactome")
    >   convertIdentifiers(r$`mTOR signalling`, "symbol")
    Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
      there is no package called ‘org.Hs.eg.db’
    Error: package "org.Hs.eg.db" is missing
    Execution halted
    ```

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘ALL’ ‘hgu133plus2.db’ ‘hgu95av2.db’ ‘org.Hs.eg.db’
    ```

# helminthR

Version: 1.0.6

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘rmarkdown’
      All declared Imports should be used.
    ```

# highcharter

Version: 0.5.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.9Mb
      sub-directories of 1Mb or more:
        doc          13.7Mb
        htmlwidgets   1.8Mb
    ```

# httpcache

Version: 1.1.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 25 SKIPPED: 0 FAILED: 29
      1. Error: Checking cache even with cache off doesn't fail on long query (@test-cache-query-params.R#9) 
      2. Error: cache gets set on GET even with long query (@test-cache-query-params.R#19) 
      3. Error: Can read cache with query params even with no connection (@test-cache-query-params.R#26) 
      4. Error: Cache gets set on GET (@test-cache.R#20) 
      5. Error: When the cache is set, can read from it even with no connection (@test-cache.R#34) 
      6. Error: PUT busts cache (@test-cache.R#45) 
      7. Failure: PATCH busts cache (@test-cache.R#58) 
      8. Error: PATCH busts cache (@test-cache.R#58) 
      9. Error: POST busts cache more narrowly by default: setup (@test-cache.R#81) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# httptest

Version: 3.2.0

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘httptest-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: expect_header
    > ### Title: Test that an HTTP request is made with a header
    > ### Aliases: expect_header
    > 
    > ### ** Examples
    > 
    > library(httr)
    > with_fake_http({
    +     expect_header(GET("http://example.com", config=add_headers(Accept="image/png")),
    +         "Accept: image/png")
    + })
    GET http://example.com
    Error in rawToChar(raw) : argument 'x' must be a raw vector
    Calls: with_fake_http ... request_perform -> parse_http_headers -> strsplit -> rawToChar
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 141 SKIPPED: 8 FAILED: 42
      1. Error: Recording requests even with the mock API (@test-capture-requests.R#105) 
      2. Error: Loading 204 response status recorded with simplify=TRUE (@test-capture-requests.R#117) 
      3. Error: Using simplify=FALSE (and setting .mockPaths) (@test-capture-requests.R#129) 
      4. Error: Recorded JSON is prettified (@test-capture-requests.R#145) 
      5. Error: Using verbose=TRUE works (and warns) (@test-capture-requests.R#153) 
      6. Error: Request object isn't recorded at all (@test-capture-requests.R#174) 
      7. Error: expect_header with fake HTTP (@test-expect-header.R#6) 
      8. Error: expect_header with mock API (@test-expect-header.R#23) 
      9. Error: fakeGET (@test-fake-http.R#6) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# huxtable

Version: 4.3.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R     2.1Mb
        doc   2.9Mb
    ```

# hydrolinks

Version: 0.10.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dbplyr’
      All declared Imports should be used.
    ```

# icesSAG

Version: 1.3-4

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘icesSAG-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getSAGGraphs
    > ### Title: Get Summary Graphs of Stock Assessment Output
    > ### Aliases: getSAGGraphs
    > 
    > ### ** Examples
    > 
    > assessmentKey <- findAssessmentKey("cod", 2015)
    GETing ... http://sg.ices.dk/StandardGraphsWebServices.asmx/getListStocks?year=2015
    > graphs <- getSAGGraphs(assessmentKey[1])
    > plot(graphs)
    Error in UseMethod("as.raster") : 
      no applicable method for 'as.raster' applied to an object of class "c('ices_standardgraph_list', 'list')"
    Calls: plot ... plot.ices_standardgraph_list -> <Anonymous> -> rasterGrob -> as.raster
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > ## test package
      > test_check("icesSAG")
      [31m──[39m [31m1. Failure: getSAGTypeGraphs (@test-test.R#50) [39m [31m───────────────────────────────────────[39m
      `x` inherits from `NULL` not `data.frame`.
      
      [31m──[39m [31m2. Failure: findAssessmentKey (@test-test.R#59) [39m [31m──────────────────────────────────────[39m
      `keytab` inherits from `NULL` not `data.frame`.
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 6 SKIPPED: 0 FAILED: 2
      1. Failure: getSAGTypeGraphs (@test-test.R#50) 
      2. Failure: findAssessmentKey (@test-test.R#59) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ImmuneSpaceR

Version: 1.10.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 2 SKIPPED: 0 FAILED: 19
      1. Failure: all studies can loaded with empty string (@test-CreateConnection.R#33) 
      2. Failure: Nonexistent study fails to load (@test-CreateConnection.R#39) 
      3. Failure: Existing study can be loaded (@test-CreateConnection.R#44) 
      4. Failure: ImmuneSignatures study can be loaded (@test-CreateConnection.R#49) 
      5. Failure: ImmuneSignatures study can be loaded (@test-CreateConnection.R#50) 
      6. Failure: Lyoplate study cannot be loaded (@test-CreateConnection.R#56) 
      7. Error: Connection loads with cohort-type in GE_matrices (@test-CreateConnection.R#60) 
      8. Error: (unknown) (@test-dataIntegration.R#11) 
      9. Error: (unknown) (@test-getDataset.R#9) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 63-66 (Intro_to_ImmuneSpaceR.Rmd) 
    Error: processing vignette 'Intro_to_ImmuneSpaceR.Rmd' failed with diagnostics:
    Invalid credential or deactivated account. Check your account in the portal.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        doc   7.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘Rlabkey:::.lkdefaults’ ‘Rlabkey:::labkey.getRequestOptions’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .getDataToPlot: no visible binding for global variable ‘value_reported’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ImmuneSpaceR/new/ImmuneSpaceR.Rcheck/00_pkg_src/ImmuneSpaceR/R/ISCon-plot.R:411)
    Undefined global functions or variables:
      value_reported
    ```

# inlmisc

Version: 0.4.4

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# InterMineR

Version: 1.4.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > # load human genes which are associated with Diabetes (retrieved from HumanMine)
    > data("PL_DiabetesGenes")
    > 
    > # get Gene.primaryIdentifiers (ENTREZ Gene identifier)
    > hsa_gene_entrez = as.character(PL_DiabetesGenes$Gene.primaryIdentifier)
    > 
    > # perform enrichment analysis with InterMineR
    > hsa_enrichResult = doEnrichment(
    +   im = initInterMine(listMines()["HumanMine"]),
    +   genelist = "PL_DiabetesGenes",
    +   widget = "go_enrichment_for_gene",
    +   correction = "Benjamini Hochberg"
    + )
    > 
    > # convert InterMineR enrichment analysis results to a GeneAnswers object
    > # Do not run unless you have installed and loaded GeneAnswers package!
    > 
    > # load GeneAnswers
    > library(GeneAnswers)
    Error in library(GeneAnswers) : there is no package called ‘GeneAnswers’
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in fun(libname, pkgname) : couldn't connect to display ""
    Quitting from lines 224-255 (Enrichment_Analysis_and_Visualization.Rmd) 
    Error: processing vignette 'Enrichment_Analysis_and_Visualization.Rmd' failed with diagnostics:
    there is no package called 'GeneAnswers'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘GeneAnswers’ ‘GO.db’ ‘org.Hs.eg.db’
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc   4.6Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      definition for ‘reshape’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/InterMineR/new/InterMineR.Rcheck/00_pkg_src/InterMineR/R/convertToRangedSummarizedExperiment.R:63-68)
    doEnrichment: no visible global function definition for ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/InterMineR/new/InterMineR.Rcheck/00_pkg_src/InterMineR/R/doEnrichment.R:87)
    listDatasets: no visible binding for global variable ‘child_name’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/InterMineR/new/InterMineR.Rcheck/00_pkg_src/InterMineR/R/listDatasets.R:4)
    runQuery,ANY-InterMineR: no visible global function definition for
      ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/InterMineR/new/InterMineR.Rcheck/00_pkg_src/InterMineR/R/runQuery.R:61)
    runQuery,ANY-InterMineR: no visible global function definition for
      ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/InterMineR/new/InterMineR.Rcheck/00_pkg_src/InterMineR/R/runQuery.R:96)
    runQuery,ANY-list: no visible global function definition for
      ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/InterMineR/new/InterMineR.Rcheck/00_pkg_src/InterMineR/R/runQuery.R:139)
    Undefined global functions or variables:
      URLencode child_name geneExpProfile reshape
    Consider adding
      importFrom("stats", "reshape")
      importFrom("utils", "URLencode")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘GeneAnswers’
    ```

# ipeaData

Version: 0.0.2

## Newly broken

*   R CMD check timed out
    

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: search_serie("pib", fields_search = ("SERNOME")) at testthat/test_functions_ipea_data.R:24
      2: basic_call(api_call, type) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ipeaData/old/ipeaData.Rcheck/00_pkg_src/ipeaData/R/ipeaData.R:139
      3: GET(api) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ipeaData/old/ipeaData.Rcheck/00_pkg_src/ipeaData/R/ipeaData.R:61
      4: request_perform(req, hu$handle$handle)
      5: request_fetch(req$output, req$url, handle)
      6: request_fetch.write_memory(req$output, req$url, handle)
      7: curl::curl_fetch_memory(url, handle = handle)
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 5 SKIPPED: 0 FAILED: 2
      1. Error: ipeaData (@test_functions_ipea_data.R#19) 
      2. Error: search_serie (@test_functions_ipea_data.R#24) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RCurl’
      All declared Imports should be used.
    ```

# jsonlite

Version: 1.5

## In both

*   checking compiled code ... NOTE
    ```
    File ‘jsonlite/libs/jsonlite.so’:
      Found non-API calls to R: ‘R_GetConnection’, ‘R_ReadConnection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# KEGGlincs

Version: 1.8.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘hgu133a.db’ ‘org.Hs.eg.db’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# KEGGREST

Version: 1.22.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘BiocGenerics:::testPackage’
      See the note in ?`:::` about the use of this operator.
    ```

# kokudosuuchi

Version: 0.4.2

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 52458 marked UTF-8 strings
    ```

# levi

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 2-90 (levi.Rmd) 
    Error: processing vignette 'levi.Rmd' failed with diagnostics:
    could not find function "doc_date"
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    LEVIui: no visible global function definition for ‘is’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/levi/new/levi.Rcheck/00_pkg_src/levi/R/LEVIui.R:23-24)
    levi_function: no visible binding for global variable ‘x’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/levi/new/levi.Rcheck/00_pkg_src/levi/R/levi_function.R:34)
    levi_function: no visible binding for global variable ‘x’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/levi/new/levi.Rcheck/00_pkg_src/levi/R/levi_function.R:503-532)
    levi_function: no visible binding for global variable ‘x’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/levi/new/levi.Rcheck/00_pkg_src/levi/R/levi_function.R:534-562)
    Undefined global functions or variables:
      is x
    Consider adding
      importFrom("methods", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# LowMACA

Version: 1.12.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘LowMACAAnnotation’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Luminescence

Version: 0.8.6

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        R   7.1Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘devtools’
    ```

# malariaAtlas

Version: 0.0.3

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
     Vanuatu 
     Vatican City 
     Venezuela 
     Vietnam 
     Wallis and Futuna 
     Western Sahara 
     Yemen 
     Zambia 
     Zimbabwe
    Confirming availability of PR data for: Madagascar...
    PR points are available for Madagascar.
    Attempting to download PR point data for Madagascar ...
    Data downloaded for Madagascar.
    Downloading list of available species, please wait...
    Confirming availability of Vector data for: Myanmar...
    Vector points are available for Myanmar.
    Attempting to download vector occurence data for Myanmar ...
    Quitting from lines 102-103 (overview.Rmd) 
    Error: processing vignette 'overview.Rmd' failed with diagnostics:
    cannot read from connection
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘grid’
      All declared Imports should be used.
    ```

# markmyassignment

Version: 0.8.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# martini

Version: 1.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘snpStats’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MetamapsDB

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘shiny’
      All declared Imports should be used.
    ```

# metavizr

Version: 1.6.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: replacing previous import 'S4Vectors::head' by 'git2r::head' when loading 'epivizrStandalone' 
      3: replacing previous import 'S4Vectors::as.data.frame' by 'git2r::as.data.frame' when loading 'epivizrStandalone' 
      > 
      > test_check("metavizr")
      [31m──[39m [31m1. Error: (unknown) (@test-EpivizMetagenomicsInnerNodeData_class.R#2) [39m [31m────────────────[39m
      there is no package called 'curatedMetagenomicData'
      1: library(curatedMetagenomicData) at testthat/test-EpivizMetagenomicsInnerNodeData_class.R:2
      2: stop(txt, domain = NA)
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 17 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test-EpivizMetagenomicsInnerNodeData_class.R#2) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        plotMA
    
    Loading required package: glmnet
    Loading required package: Matrix
    Loading required package: foreach
    Loaded glmnet 2.0-16
    
    Loading required package: RColorBrewer
    Loading required package: data.table
    Loading required package: digest
    Warning: replacing previous import 'S4Vectors::merge' by 'git2r::merge' when loading 'epivizrStandalone'
    Warning: replacing previous import 'S4Vectors::head' by 'git2r::head' when loading 'epivizrStandalone'
    Warning: replacing previous import 'S4Vectors::as.data.frame' by 'git2r::as.data.frame' when loading 'epivizrStandalone'
    Loading required package: msd16s
    Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
      there is no package called 'msd16s'
    Quitting from lines 95-124 (IntroToMetavizr.Rmd) 
    Error: processing vignette 'IntroToMetavizr.Rmd' failed with diagnostics:
    object 'msd16s' not found
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘msd16s’ ‘etec16s’ ‘curatedMetagenomicData’
    ```

# miniCRAN

Version: 0.2.11

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# miRLAB

Version: 1.12.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘TCGAbiolinks’ ‘Category’ ‘org.Hs.eg.db’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mlflow

Version: 0.8.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘aws.s3’
      All declared Imports should be used.
    ```

# MODISTools

Version: 1.0.0

## In both

*   R CMD check timed out
    

# MODIStsp

Version: 1.3.7

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gWidgetsRGtk2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# monkeylearn

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ratelimitr’
      All declared Imports should be used.
    ```

# move

Version: 3.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        R      2.1Mb
        data   2.1Mb
    ```

# mregions

Version: 0.1.6

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘leaflet’
    ```

# mygene

Version: 1.18.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    package 'methods' is used but not declared
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/mygene/new/mygene.Rcheck/00_pkg_src/mygene/R/utils.R:56)
    MyGene: no visible global function definition for ‘new’
    index.tx.id: no visible global function definition for
      ‘installed.packages’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/mygene/new/mygene.Rcheck/00_pkg_src/mygene/R/mygene.R:280)
    validMyGeneObject: no visible global function definition for ‘slot’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/mygene/new/mygene.Rcheck/00_pkg_src/mygene/R/mygene.R:17-18)
    .request.get,MyGene: no visible global function definition for
      ‘capture.output’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/mygene/new/mygene.Rcheck/00_pkg_src/mygene/R/mygene.R:57-59)
    .request.post,MyGene: no visible global function definition for
      ‘capture.output’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/mygene/new/mygene.Rcheck/00_pkg_src/mygene/R/mygene.R:79-81)
    Undefined global functions or variables:
      as capture.output installed.packages is new setNames slot
    Consider adding
      importFrom("methods", "as", "is", "new", "slot")
      importFrom("stats", "setNames")
      importFrom("utils", "capture.output", "installed.packages")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# myvariant

Version: 1.12.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    package 'methods' is used but not declared
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/myvariant/new/myvariant.Rcheck/00_pkg_src/myvariant/R/utils.R:54)
    MyVariant: no visible global function definition for ‘new’
    formatHgvs: no visible global function definition for
      ‘seqlevelsStyle<-’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/myvariant/new/myvariant.Rcheck/00_pkg_src/myvariant/R/readHGVS.R:52)
    validMyVariantObject: no visible global function definition for ‘slot’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/myvariant/new/myvariant.Rcheck/00_pkg_src/myvariant/R/MyVariant.R:10-11)
    .request.get,MyVariant: no visible global function definition for
      ‘capture.output’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/myvariant/new/myvariant.Rcheck/00_pkg_src/myvariant/R/MyVariant.R:51-53)
    .request.post,MyVariant: no visible global function definition for
      ‘capture.output’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/myvariant/new/myvariant.Rcheck/00_pkg_src/myvariant/R/MyVariant.R:75-77)
    Undefined global functions or variables:
      ALT REF as capture.output is new seqlevelsStyle<- setNames slot
    Consider adding
      importFrom("methods", "as", "is", "new", "slot")
      importFrom("stats", "setNames")
      importFrom("utils", "capture.output")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# nat

Version: 1.8.11

## In both

*   checking whether package ‘nat’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: partial match of 'OS' to 'OS.type'
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/nat/new/nat.Rcheck/00install.out’ for details.
    ```

# ndexr

Version: 1.4.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Deprecated license: BSD
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘igraph’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported object imported by a ':::' call: ‘httr:::default_ua’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    rcx_toRCXgraph: no visible global function definition for ‘E’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:117)
    rcx_toRCXgraph: no visible global function definition for ‘E<-’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:117)
    rcxgraph_fromRCX: no visible global function definition for ‘V’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:116)
    rcxgraph_fromRCX: no visible global function definition for ‘V<-’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:116)
    rcxgraph_fromRCX: no visible global function definition for ‘E’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:117)
    rcxgraph_fromRCX: no visible global function definition for ‘E<-’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:117)
    rcxgraph_toRCX: no visible binding for global variable ‘po’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:268)
    rcxgraph_toRCX: no visible binding for global variable ‘po’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:294)
    Undefined global functions or variables:
      E E<- V V<- packageVersion po tail
    Consider adding
      importFrom("utils", "packageVersion", "tail")
    to your NAMESPACE file.
    ```

# neonUtilities

Version: 1.0.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# neurobase

Version: 1.27.6

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 189-219 (nifti_basics.Rmd) 
    Error: processing vignette 'nifti_basics.Rmd' failed with diagnostics:
    LibreSSL SSL_read: error:06FFF064:digital envelope routines:CRYPTO_internal:bad decrypt, errno 0
    Execution halted
    ```

# OmaDB

Version: 1.2.0

## In both

*   checking whether package ‘OmaDB’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/OmaDB/new/OmaDB.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘OmaDB’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘GO.db’
ERROR: lazy loading failed for package ‘OmaDB’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/OmaDB/new/OmaDB.Rcheck/OmaDB’

```
### CRAN

```
* installing *source* package ‘OmaDB’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘GO.db’
ERROR: lazy loading failed for package ‘OmaDB’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/OmaDB/old/OmaDB.Rcheck/OmaDB’

```
# opensensmapr

Version: 0.5.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             test_error <<- e
         }, "object 'boxes' not found", quote(eval(code, test_env))) at testthat/test_phenomena.R:30
      2: eval(code, test_env)
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 10 SKIPPED: 35 FAILED: 6
      1. Error: osem_box_to_archive_name works for one box (@test_archive.R#23) 
      2. Error: osem_box_to_archive_name works for multiple boxes (@test_archive.R#29) 
      3. Error: osem_measurements_archive works for one box (@test_archive.R#41) 
      4. Error: osem_measurements_archive fails for multiple boxes (@test_archive.R#47) 
      5. Error: summary.sensebox outputs all metrics for a single box (@test_box.R#42) 
      6. Error: phenomena from a not sensebox data.frame returns error (@test_phenomena.R#30) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        intersect, setdiff, setequal, union
    
    
    Attaching package: 'lubridate'
    
    The following object is masked from 'package:base':
    
        date
    
    
    Attaching package: 'zoo'
    
    The following objects are masked from 'package:base':
    
        as.Date, as.Date.numeric
    
    Quitting from lines 44-47 (osem-history.Rmd) 
    Error: processing vignette 'osem-history.Rmd' failed with diagnostics:
    $ operator is invalid for atomic vectors
    Execution halted
    ```

# osmdata

Version: 0.0.8

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# osmplotr

Version: 0.3.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 33-37 (basic-maps.Rmd) 
    Error: processing vignette 'basic-maps.Rmd' failed with diagnostics:
    there is no package called 'devtools'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        doc   5.9Mb
    ```

# packrat

Version: 0.5.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# parlitools

Version: 0.2.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 13 marked UTF-8 strings
    ```

# patentsview

Version: 0.2.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 42-59 (examples.Rmd) 
    Error: processing vignette 'examples.Rmd' failed with diagnostics:
    parse error: object key and value must be separated by a colon (':')
              9835"}]},{"patent_numbeijing","inventor_country":"CN","inven
                         (right here) ------^
    Execution halted
    ```

# paxtoolsr

Version: 1.16.0

## In both

*   checking whether package ‘paxtoolsr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/paxtoolsr/new/paxtoolsr.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘estrogen’ ‘hgu95av2’ ‘org.Hs.eg.db’
    ```

## Installation

### Devel

```
* installing *source* package ‘paxtoolsr’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘rJava’:
 .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/paxtoolsr/rJava/libs/rJava.so':
  dlopen(/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/paxtoolsr/rJava/libs/rJava.so, 6): Library not loaded: /Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home/lib/server/libjvm.dylib
  Referenced from: /Users/hadley/Documents/r-lib/httr/revdep/library.noindex/paxtoolsr/rJava/libs/rJava.so
  Reason: image not found
Error : package ‘rJava’ could not be loaded
ERROR: lazy loading failed for package ‘paxtoolsr’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/paxtoolsr/new/paxtoolsr.Rcheck/paxtoolsr’

```
### CRAN

```
* installing *source* package ‘paxtoolsr’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘rJava’:
 .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/paxtoolsr/rJava/libs/rJava.so':
  dlopen(/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/paxtoolsr/rJava/libs/rJava.so, 6): Library not loaded: /Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home/lib/server/libjvm.dylib
  Referenced from: /Users/hadley/Documents/r-lib/httr/revdep/library.noindex/paxtoolsr/rJava/libs/rJava.so
  Reason: image not found
Error : package ‘rJava’ could not be loaded
ERROR: lazy loading failed for package ‘paxtoolsr’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/paxtoolsr/old/paxtoolsr.Rcheck/paxtoolsr’

```
# phantasus

Version: 1.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: getGSE("GSE99709", destdir = system.file("testdata", package = "phantasus")) at testthat/testloadGEO.R:74
      2: suppressWarnings(getGEO(filename = destfile, destdir = destdir, AnnotGPL = TRUE)) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/phantasus/new/phantasus.Rcheck/00_pkg_src/phantasus/R/loadGEO.R:344
      3: withCallingHandlers(expr, warning = function(w) invokeRestart("muffleWarning"))
      4: getGEO(filename = destfile, destdir = destdir, AnnotGPL = TRUE) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/phantasus/new/phantasus.Rcheck/00_pkg_src/phantasus/R/loadGEO.R:344
      5: parseGEO(filename, GSElimits, destdir, AnnotGPL = AnnotGPL, getGPL = getGPL)
      6: parseGSEMatrix(fname, destdir = destdir, AnnotGPL = AnnotGPL, getGPL = getGPL)
      7: datamat[[1]]
      8: `[[.tbl_df`(datamat, 1)
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 95 SKIPPED: 0 FAILED: 1
      1. Error: getGSE works with ARCHS4 (@testloadGEO.R#74) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.9Mb
      sub-directories of 1Mb or more:
        doc   2.6Mb
        www  11.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'GEOquery:::getDirListing' 'opencpu:::rookhandler'
      'opencpu:::tmp_root' 'opencpu:::win_or_mac'
      See the note in ?`:::` about the use of this operator.
    ```

# pivotaltrackR

Version: 0.1.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      12: ptPOST(pivotalURL("stories"), body = list(...)) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pivotaltrackR/new/pivotaltrackR.Rcheck/00_pkg_src/pivotaltrackR/R/story.R:53
      13: ptAPI("POST", url, encode = "json", ...) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pivotaltrackR/new/pivotaltrackR.Rcheck/00_pkg_src/pivotaltrackR/R/api.R:47
      14: FUN(url, ..., config = c(ptConfig(), config)) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pivotaltrackR/new/pivotaltrackR.Rcheck/00_pkg_src/pivotaltrackR/R/api.R:18
      15: request_perform(req, hu$handle$handle) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/http-post.r:49
      16: parse_http_headers(resp$headers) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/request.R:163
      17: strsplit(rawToChar(raw), "\r?\n") at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/headers.r:109
      18: rawToChar(raw) at /private/tmp/RtmpWX9zDL/R.INSTALL90f54d7cc535/httr/R/headers.r:109
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 18 SKIPPED: 0 FAILED: 2
      1. Error: (unknown) (@test-stories.R#44) 
      2. Error: (unknown) (@test-story.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 50-52 (pivotaltrackR.Rmd) 
    Error: processing vignette 'pivotaltrackR.Rmd' failed with diagnostics:
    argument 'x' must be a raw vector
    Execution halted
    ```

# pkgdown

Version: 1.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(pkgdown)
      > 
      > test_check("pkgdown")
      [31m──[39m [31m1. Failure: intermediate files cleaned up automatically (@test-build_home.R#22) [39m [31m──────[39m
      dir(pkg) not set-equal to c("docs", "man", "NAMESPACE", "DESCRIPTION", "README.md", "README.Rmd").
      Lengths differ: 5 is not 6
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 287 SKIPPED: 8 FAILED: 1
      1. Failure: intermediate files cleaned up automatically (@test-build_home.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘devtools’
    ```

# plotly

Version: 4.8.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
        htmlwidgets   3.1Mb
    ```

# pogos

Version: 1.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 2-36 (pogos.Rmd) 
    Error: processing vignette 'pogos.Rmd' failed with diagnostics:
    could not find function "Biocpkg"
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    lkc: no visible binding for global variable ‘datasets_v1’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pogos/new/pogos.Rcheck/00_pkg_src/pogos/R/lkcomb.R:93)
    lkc: no visible binding for global variable ‘datasets_v1’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pogos/new/pogos.Rcheck/00_pkg_src/pogos/R/lkcomb.R:94)
    plot,DRProfSet-missing: no visible binding for global variable ‘dose’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pogos/new/pogos.Rcheck/00_pkg_src/pogos/R/lkcomb.R:209-210)
    plot,DRProfSet-missing: no visible binding for global variable
      ‘response’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pogos/new/pogos.Rcheck/00_pkg_src/pogos/R/lkcomb.R:209-210)
    plot,DRProfSet-missing: no visible binding for global variable ‘drug’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pogos/new/pogos.Rcheck/00_pkg_src/pogos/R/lkcomb.R:209-210)
    plot,DRTraceSet-missing: no visible binding for global variable ‘dose’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pogos/new/pogos.Rcheck/00_pkg_src/pogos/R/lkcomb.R:142)
    plot,DRTraceSet-missing: no visible binding for global variable
      ‘response’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pogos/new/pogos.Rcheck/00_pkg_src/pogos/R/lkcomb.R:142)
    plot,DRTraceSet-missing: no visible binding for global variable
      ‘cell_line’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pogos/new/pogos.Rcheck/00_pkg_src/pogos/R/lkcomb.R:142)
    Undefined global functions or variables:
      cell_line cell_lines_v1 compounds_v1 datasets_v1 dose drug response
    ```

# PoloniexR

Version: 0.0.1

## In both

*   checking examples ... ERROR
    ```
    ...
             bid       amount
    1 0.00000815 4310.8497278
    2 0.00000814 245.77965373
    > order.book$ask
             ask        amount
    1 0.00000821  436.55744592
    2 0.00000822 3440.78986349
    > order.book$frozen
    [1] FALSE
    > order.book$seq
    [1] 85890835
    > 
    > pair <- "all"
    > depth <- 2
    > order.book <- ReturnOrderBook(poloniex.public,
    +                               pair  = pair,
    +                               depth = depth)
    Error in matrix(unlist(pair.book$bids), ncol = 2, byrow = TRUE) : 
      'data' must be of a vector type, was 'NULL'
    Calls: ReturnOrderBook ... ReturnOrderBook -> lapply -> FUN -> as.data.frame -> matrix
    Execution halted
    ```

# portalr

Version: 0.1.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: get_stake_data(path = portal_data_path) at testthat/test-05-get_stake_data.R:6
      2: load_data(path, download_if_missing = download_if_missing, clean = clean) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/portalr/new/portalr.Rcheck/00_pkg_src/portalr/R/IndividualData.R:40
      3: load_generic_data(data_files, na_strings, path, download_if_missing) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/portalr/new/portalr.Rcheck/00_pkg_src/portalr/R/GetData.R:333
      4: download_observations(path) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/portalr/new/portalr.Rcheck/00_pkg_src/portalr/R/GetData.R:516
      5: download.file(zip_download_path, zip_download_dest, quiet = TRUE, mode = "wb") at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/portalr/new/portalr.Rcheck/00_pkg_src/portalr/R/GetData.R:71
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 62 SKIPPED: 14 FAILED: 4
      1. Error: load_data downloads data if missing (@test-01-data-retrieval.R#25) 
      2. Error: (unknown) (@test-02-data-processing.R#4) 
      3. Error: (unknown) (@test-04-weather.R#4) 
      4. Error: get_stake_data returns expected columns (@test-05-get_stake_data.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    ── Attaching packages ───────────────────────────────────────────────── tidyverse 1.2.1 ──
    ✔ ggplot2 3.1.0     ✔ purrr   0.2.5
    ✔ tibble  1.4.2     ✔ dplyr   0.7.8
    ✔ tidyr   0.8.2     ✔ stringr 1.3.1
    ✔ readr   1.2.1     ✔ forcats 0.3.0
    ── Conflicts ──────────────────────────────────────────────────── tidyverse_conflicts() ──
    ✖ dplyr::filter() masks stats::filter()
    ✖ dplyr::lag()    masks stats::lag()
    Loading in data version 1.66.0
    Loading in data version 1.66.0
    
    Attaching package: 'cowplot'
    
    The following object is masked from 'package:ggplot2':
    
        ggsave
    
    Quitting from lines 50-52 (rodent-abundance-demo.Rmd) 
    Error: processing vignette 'rodent-abundance-demo.Rmd' failed with diagnostics:
    download from 'https://zenodo.org/api/files/a7cf28e3-caf9-4e93-a4bd-d93840ca9afc/weecology/PortalData-1.64.0.zip' failed
    Execution halted
    ```

# primerTree

Version: 1.0.3

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Error in .requirePackage(package) : 
        unable to find required package 'RCurl'
      Calls: <Anonymous> ... .extendsForS3 -> extends -> getClassDef -> .requirePackage
      Execution halted
    ```

# prisonbrief

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked UTF-8 strings
    ```

# psichomics

Version: 1.8.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        R     3.0Mb
        doc   5.6Mb
    ```

*   checking compiled code ... NOTE
    ```
    File ‘psichomics/libs/psichomics.so’:
      Found ‘___stdoutp’, possibly from ‘stdout’ (C)
        Object: ‘psiFastCalc.o’
      Found ‘_printf’, possibly from ‘printf’ (C)
        Object: ‘psiFastCalc.o’
      Found ‘_putchar’, possibly from ‘putchar’ (C)
        Object: ‘psiFastCalc.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# PSICQUIC

Version: 1.20.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      
      The following object is masked from 'package:IRanges':
      
          desc
      
      The following object is masked from 'package:S4Vectors':
      
          rename
      
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      In addition: Warning message:
      replacing previous import 'IRanges::desc' by 'plyr::desc' when loading 'PSICQUIC' 
      Execution halted
    ```

*   checking whether package ‘PSICQUIC’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘IRanges::desc’ by ‘plyr::desc’ when loading ‘PSICQUIC’
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/PSICQUIC/new/PSICQUIC.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘org.Hs.eg.db’
    ```

*   checking R code for possible problems ... NOTE
    ```
    .loadRegistry: no visible global function definition for ‘DataFrame’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/PSICQUIC/new/PSICQUIC.Rcheck/00_pkg_src/PSICQUIC/R/PSICQUIC-class.R:112-113)
    .loadRegistry: no visible global function definition for ‘DataFrame’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/PSICQUIC/new/PSICQUIC.Rcheck/00_pkg_src/PSICQUIC/R/PSICQUIC-class.R:124)
    Undefined global functions or variables:
      DataFrame
    ```

# pvsR

Version: 0.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pvsR/new/pvsR.Rcheck/00_pkg_src/pvsR/R/getAllBios.R:46)
    getAllBios: no visible global function definition for
      ‘setTxtProgressBar’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pvsR/new/pvsR.Rcheck/00_pkg_src/pvsR/R/getAllBios.R:71)
    getAllLocalOfficials: no visible global function definition for
      ‘txtProgressBar’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pvsR/new/pvsR.Rcheck/00_pkg_src/pvsR/R/getAllLocalOfficials.R:59)
    getAllLocalOfficials: no visible global function definition for
      ‘setTxtProgressBar’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pvsR/new/pvsR.Rcheck/00_pkg_src/pvsR/R/getAllLocalOfficials.R:84)
    getAllVotes: no visible global function definition for ‘txtProgressBar’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pvsR/new/pvsR.Rcheck/00_pkg_src/pvsR/R/getAllVotes.R:47)
    getAllVotes: no visible global function definition for
      ‘setTxtProgressBar’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/pvsR/new/pvsR.Rcheck/00_pkg_src/pvsR/R/getAllVotes.R:72)
    Undefined global functions or variables:
      na.omit setTxtProgressBar txtProgressBar
    Consider adding
      importFrom("stats", "na.omit")
      importFrom("utils", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# r511

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# RBitmoji

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘jsonlite’
      All declared Imports should be used.
    ```

# Rcereal

Version: 1.2.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# rclimateca

Version: 1.0.2

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 24 marked UTF-8 strings
    ```

# RCy3

Version: 2.2.5

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.6Mb
      sub-directories of 1Mb or more:
        doc  10.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    createNetworkFromDataFrames: no visible binding for global variable
      ‘SUID’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/RCy3/new/RCy3.Rcheck/00_pkg_src/RCy3/R/Networks.R:903-904)
    createNetworkFromDataFrames: no visible binding for global variable
      ‘SUID’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/RCy3/new/RCy3.Rcheck/00_pkg_src/RCy3/R/Networks.R:910-911)
    Undefined global functions or variables:
      SUID
    ```

# RCzechia

Version: 1.3.1

## Newly fixed

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Linking to GEOS 3.6.1, GDAL 2.1.3, PROJ 4.9.3
    RCzechia: downloading remote dataset.
    RCzechia: downloading remote dataset.
    Quitting from lines 104-127 (vignette.Rmd) 
    Error: processing vignette 'vignette.Rmd' failed with diagnostics:
    ReadItem: unknown type 169, perhaps written by later version of R
    Execution halted
    ```

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: expect_that(is.data.frame(zeleznice()), is_true()) at testthat/test-1-data-structures.R:132
      2: condition(object)
      3: expect_true(x)
      4: quasi_label(enquo(object), label)
      5: eval_bare(get_expr(quo), get_env(quo))
      6: is.data.frame(zeleznice())
      7: zeleznice()
      8: readRDS(local_file) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/RCzechia/new/RCzechia.Rcheck/00_pkg_src/RCzechia/R/zeleznice.R:47
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 74 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test-1-data-structures.R#132) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# rdrop2

Version: 0.8.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘digest’
      All declared Imports should be used.
    ```

# readtext

Version: 0.71

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘XML’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked Latin-1 string
      Note: found 1 marked UTF-8 string
      Note: found 7 strings marked as "bytes"
    ```

# redcapAPI

Version: 2.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘readr’
      All declared Imports should be used.
    ```

# REDCapR

Version: 0.9.8

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 91 SKIPPED: 15 FAILED: 11
      1. Error: (unknown) (@test-metadata-read.R#4) 
      2. Error: (unknown) (@test-read-batch-longitudinal.R#4) 
      3. Error: (unknown) (@test-read-batch-simple.R#4) 
      4. Error: One Shot: Bad Uri -Not HTTPS (@test-read-errors.R#8) 
      5. Error: One Shot: Bad Uri -wrong address (@test-read-errors.R#30) 
      6. Error: Batch: Bad Uri -Not HTTPS (@test-read-errors.R#51) 
      7. Error: Batch: Bad Uri -wrong address (@test-read-errors.R#72) 
      8. Error: (unknown) (@test-read-oneshot.R#4) 
      9. Error: (unknown) (@test-read-russian.R#4) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# refimpact

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 85 marked UTF-8 strings
    ```

# rentrez

Version: 1.2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘XML’
    
    Packages suggested but not available for checking:
      ‘testthat’ ‘knitr’ ‘rmarkdown’
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# reproducible

Version: 0.2.5

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# rerddap

Version: 0.4.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘taxize’
    ```

# rfacebookstat

Version: 1.8.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘bitops’
      All declared Imports should be used.
    ```

# rfbCNPJ

Version: 0.1.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 27 marked UTF-8 strings
    ```

# rfigshare

Version: 0.3.7

## In both

*   checking R code for possible problems ... NOTE
    ```
    fs_author_ids : <anonymous>: no visible global function definition for
      ‘select.list’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rfigshare/new/rfigshare.Rcheck/00_pkg_src/rfigshare/R/fs_add_authors.R:82-85)
    fs_download : <anonymous>: no visible global function definition for
      ‘download.file’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rfigshare/new/rfigshare.Rcheck/00_pkg_src/rfigshare/R/fs_download.R:35-38)
    Undefined global functions or variables:
      download.file select.list
    Consider adding
      importFrom("utils", "download.file", "select.list")
    to your NAMESPACE file.
    ```

# RGMQL

Version: 1.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘RGMQLlib’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# rGoodData

Version: 0.1.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Actual message: "argument is of length zero"
      
      ══ testthat results  ═════════════════════════════════════════════════════════════════════
      OK: 2 SKIPPED: 0 FAILED: 8
      1. Failure: Login unauthorized message is correct (@test.login.R#15) 
      2. Error: Report definition is extracted correctly (@report.R#79) 
      3. Error: Correct report URI is returned (@report.R#30) 
      4. Failure: Error code is processed correctly 
      5. Failure: Error code is processed correctly 
      6. Failure: Error code is processed correctly 
      7. Error: Test that data is extracted correctly from large report (@report.R#51) 
      8. Failure: Test bad response with text message 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rhdf5client

Version: 1.4.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > # cg00000029      0.47339629  1.2943041 -0.8084735  |  0.6708168 -0.86093022
    > # cg00000165      1.23640861  0.2099817 -0.2683763  |  0.4446088  0.99868231
    > # cg00000236     -0.22258183  1.6236857 -0.8654838  |  0.1958195 -0.06090929
    > # cg00000289      0.65720581  0.5527470 -1.8458295  | -0.4618782  0.34934164
    > # cg00000363     -0.15063083  0.7498020  0.3254333  |  0.7342878  0.12940774
    > # #-------------------------------------------------------------------------
    > # ch.9.98936572R -0.07954958  0.2139431 -0.4719621  |  0.6835012  0.57758798
    > # ch.9.98937537R  0.04254705  1.0702770  1.7356387  | -0.1531732 -1.52889773
    > # ch.9.98959675F -1.59253143  0.2982456 -1.1954030  | -1.3703135  0.28974909
    > # ch.9.98989607R -1.80646652  0.4760022  1.4771808  |  0.9479602  0.49921375
    > # ch.9.991104F    0.08180195 -0.2434306  1.0281002  | -0.1653721  0.55612215
    > #
    > # compare to that delivered by H5S_Array
    > #
    > H5S_Array("http://h5s.channingremotedata.org:5000", "", "assays")
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Timeout was reached: Connection timed out after 10005 milliseconds
    Error in H5S_ArraySeed(endpoint, filepath, host) : 
      could not resolve H5S_source request on filepath
    Calls: H5S_Array -> DelayedArray -> H5S_ArraySeed
    Execution halted
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘listDomains’
    Undocumented S4 methods:
      generic 'listDomains' and siglist 'HSDSSource,character'
      generic 'listDomains' and siglist 'HSDSSource,missing'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Duplicated \argument entries in documentation object 'dim':
      ‘x’
    
    Duplicated \argument entries in documentation object 'dimnames,H5S_ArraySeed-method':
      ‘x’
    
    Duplicated \argument entries in documentation object '[,H5S_dataset,numeric,numeric-method':
      ‘x’ ‘i’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 115-124 (h5client.Rmd) 
    Error: processing vignette 'h5client.Rmd' failed with diagnostics:
    ImportError: No module named h5pyd
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘getDataList’
    ```

*   checking R code for possible problems ... NOTE
    ```
    HSDS_Matrix: warning in readBin(GET(targ)$content, w = "character"):
      partial argument match of 'w' to 'what'
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rhdf5client/new/rhdf5client.Rcheck/00_pkg_src/rhdf5client/R/HSDS_Matrix.R:46)
    ```

# rHealthDataGov

Version: 1.0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    .quick_fetch: no visible global function definition for ‘POST’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rHealthDataGov/new/rHealthDataGov.Rcheck/00_pkg_src/rHealthDataGov/R/fetch_heathdata.R:22)
    .quick_fetch: no visible global function definition for ‘add_headers’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rHealthDataGov/new/rHealthDataGov.Rcheck/00_pkg_src/rHealthDataGov/R/fetch_heathdata.R:22)
    .quick_fetch: no visible global function definition for
      ‘stop_for_status’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rHealthDataGov/new/rHealthDataGov.Rcheck/00_pkg_src/rHealthDataGov/R/fetch_heathdata.R:27)
    .quick_fetch: no visible global function definition for ‘content’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rHealthDataGov/new/rHealthDataGov.Rcheck/00_pkg_src/rHealthDataGov/R/fetch_heathdata.R:28)
    fetch_healthdata: no visible binding for global variable ‘resources’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rHealthDataGov/new/rHealthDataGov.Rcheck/00_pkg_src/rHealthDataGov/R/fetch_heathdata.R:92)
    fetch_healthdata : <anonymous>: no visible binding for global variable
      ‘filters’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rHealthDataGov/new/rHealthDataGov.Rcheck/00_pkg_src/rHealthDataGov/R/fetch_heathdata.R:97)
    Undefined global functions or variables:
      POST add_headers content filters resources stop_for_status
    ```

# riingo

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rlang’
      All declared Imports should be used.
    ```

# rmapzen

Version: 0.4.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 31 marked UTF-8 strings
    ```

# RMassBank

Version: 2.10.0

## In both

*   checking whether package ‘RMassBank’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/RMassBank/new/RMassBank.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

## Installation

### Devel

```
* installing *source* package ‘RMassBank’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Warning in fun(libname, pkgname) :
  mzR has been built against a different Rcpp version (0.12.19)
than is installed on your system (1.0.0). This might lead to errors
when loading mzR. If you encounter such issues, please send a report,
including the output of sessionInfo() to the Bioc support forum at 
https://support.bioconductor.org/. For details see also
https://github.com/sneumann/mzR/wiki/mzR-Rcpp-compiler-linker-issue.
Error : .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/RMassBank/rJava/libs/rJava.so':
  dlopen(/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/RMassBank/rJava/libs/rJava.so, 6): Library not loaded: /Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home/lib/server/libjvm.dylib
  Referenced from: /Users/hadley/Documents/r-lib/httr/revdep/library.noindex/RMassBank/rJava/libs/rJava.so
  Reason: image not found
ERROR: lazy loading failed for package ‘RMassBank’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/RMassBank/new/RMassBank.Rcheck/RMassBank’

```
### CRAN

```
* installing *source* package ‘RMassBank’ ...
** R
** inst
** byte-compile and prepare package for lazy loading
Warning in fun(libname, pkgname) :
  mzR has been built against a different Rcpp version (0.12.19)
than is installed on your system (1.0.0). This might lead to errors
when loading mzR. If you encounter such issues, please send a report,
including the output of sessionInfo() to the Bioc support forum at 
https://support.bioconductor.org/. For details see also
https://github.com/sneumann/mzR/wiki/mzR-Rcpp-compiler-linker-issue.
Error : .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/RMassBank/rJava/libs/rJava.so':
  dlopen(/Users/hadley/Documents/r-lib/httr/revdep/library.noindex/RMassBank/rJava/libs/rJava.so, 6): Library not loaded: /Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home/lib/server/libjvm.dylib
  Referenced from: /Users/hadley/Documents/r-lib/httr/revdep/library.noindex/RMassBank/rJava/libs/rJava.so
  Reason: image not found
ERROR: lazy loading failed for package ‘RMassBank’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/RMassBank/old/RMassBank.Rcheck/RMassBank’

```
# rmytarget

Version: 2.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘jsonlite’
      All declared Imports should be used.
    ```

# rnaturalearth

Version: 0.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘devtools’ ‘rnaturalearthhires’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 7 marked Latin-1 strings
    ```

# RNeXML

Version: 2.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    No ENTREZ API key provided
     Get one via use_entrez()
    See https://ncbiinsights.ncbi.nlm.nih.gov/2017/11/02/new-api-keys-for-the-e-utilities/
    
    Retrieving data for taxon 'Allenopithecus_nigroviridis'
    
    No ENTREZ API key provided
     Get one via use_entrez()
    See https://ncbiinsights.ncbi.nlm.nih.gov/2017/11/02/new-api-keys-for-the-e-utilities/
    
    Retrieving data for taxon 'Allocebus_trichotis'
    
    Quitting from lines 205-209 (metadata.Rmd) 
    Error: processing vignette 'metadata.Rmd' failed with diagnostics:
    '{"error":"API rate limit exceeded","api-key":"76.31.205.235","count":"4","limit":"3"}
    ' does not exist in current working directory ('/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/RNeXML/new/RNeXML.Rcheck/vign_test/RNeXML/vignettes').
    Execution halted
    ```

# robotstxt

Version: 0.6.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# rols

Version: 2.10.0

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 21-26 (rols.Rmd) 
    Error: processing vignette 'rols.Rmd' failed with diagnostics:
    there is no package called 'GO.db'
    Execution halted
    ```

## Newly fixed

*   R CMD check timed out
    

## In both

*   checking examples ... ERROR
    ```
    ...
    > ###   olsTitle,character-method olsTitle,Ontology-method
    > ###   olsTitle,Ontologies-method olsVersion olsVersion,Ontology-method
    > ###   olsVersion,character-method olsVersion,Ontologies-method olsLoaded
    > ###   olsLoaded,Ontology-method olsLoaded,character-method
    > ###   olsLoaded,Ontologies-method olsUpdated olsUpdated,Ontology-method
    > ###   olsUpdated,character-method olsUpdated,Ontologies-method
    > ###   show,Ontology-method show,Ontologies-method length,Ontologies-method
    > ###   lapply,Ontologies-method [,Ontologies-method [[,Ontologies-method
    > ###   coerce,Ontologies,data.frame-method coerce,Ontologies,list-method
    > ###   all.equal,Ontologies,Ontologies-method
    > ###   all.equal,Ontology,Ontology-method
    > ### Keywords: classes
    > 
    > ### ** Examples
    > 
    > ## Get all ontolgies
    > ol <- Ontologies()
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      LibreSSL SSL_read: error:06FFF064:digital envelope routines:CRYPTO_internal:bad decrypt, errno 0
    Calls: Ontologies ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GO.db’
    ```

# rscorecard

Version: 0.11.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyselect’
      All declared Imports should be used.
    ```

# RSelenium

Version: 1.7.4

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Terminated False "bad record mac" (Error_Protocol ("bad record mac",True,BadRecordMac))
    Error: processing vignette 'saucelabs.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 1
    Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rcompression’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘binman’ ‘httr’
      All declared Imports should be used.
    ```

# rsinaica

Version: 0.6.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 467 marked UTF-8 strings
    ```

# Rspotify

Version: 0.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# RSuite

Version: 0.33-246

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# rtweet

Version: 0.6.8

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 113868 marked UTF-8 strings
    ```

# rWBclimate

Version: 0.1.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rWBclimate/new/rWBclimate.Rcheck/00_pkg_src/rWBclimate/R/check_ISO_code.R:14)
    check_ISO_code: no visible binding for global variable ‘Oceana_country’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rWBclimate/new/rWBclimate.Rcheck/00_pkg_src/rWBclimate/R/check_ISO_code.R:14)
    check_ISO_code: no visible binding for global variable ‘Africa_country’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rWBclimate/new/rWBclimate.Rcheck/00_pkg_src/rWBclimate/R/check_ISO_code.R:14)
    check_ISO_code: no visible binding for global variable ‘Asia_country’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rWBclimate/new/rWBclimate.Rcheck/00_pkg_src/rWBclimate/R/check_ISO_code.R:14)
    check_ISO_code: no visible binding for global variable ‘Eur_country’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rWBclimate/new/rWBclimate.Rcheck/00_pkg_src/rWBclimate/R/check_ISO_code.R:14)
    climate_map: no visible binding for global variable ‘data’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rWBclimate/new/rWBclimate.Rcheck/00_pkg_src/rWBclimate/R/climate_map.R:45)
    date_correct: no visible global function definition for ‘tail’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rWBclimate/new/rWBclimate.Rcheck/00_pkg_src/rWBclimate/R/date_correct.R:43)
    date_correct: no visible global function definition for ‘tail’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rWBclimate/new/rWBclimate.Rcheck/00_pkg_src/rWBclimate/R/date_correct.R:45)
    Undefined global functions or variables:
      Africa_country Asia_country Eur_country NoAm_country Oceana_country
      SoAm_country data tail
    Consider adding
      importFrom("utils", "data", "tail")
    to your NAMESPACE file.
    ```

# rWikiPathways

Version: 1.2.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc       3.4Mb
        extdata   2.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    downloadPathwayArchive: no visible global function definition for
      ‘readHTMLTable’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rWikiPathways/new/rWikiPathways.Rcheck/00_pkg_src/rWikiPathways/R/downloadPathwayArchive.R:42)
    Undefined global functions or variables:
      readHTMLTable
    ```

# rzeit2

Version: 0.2.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 841 marked UTF-8 strings
    ```

# scholar

Version: 0.1.7

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘scholar-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: compare_scholar_careers
    > ### Title: Compare the careers of multiple scholars
    > ### Aliases: compare_scholar_careers
    > 
    > ### ** Examples
    > 
    > {
    +     ## How do Richard Feynmann and Stephen Hawking compare?
    +     # Compare Feynman and Stephen Hawking
    +     ids <- c("B7vSqZsAAAAJ", "qj74uXkAAAAJ")
    +     df <- compare_scholar_careers(ids)
    + }
    Error in get_resp(url, attempts_left - 1) : 
      Cannot connect to Google Scholar. Is the ID you provided correct?
    Calls: compare_scholar_careers ... get_resp -> get_resp -> get_resp -> get_resp -> get_resp
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 35-48 (scholar.Rmd) 
    Error: processing vignette 'scholar.Rmd' failed with diagnostics:
    Cannot connect to Google Scholar. Is the ID you provided correct?
    Execution halted
    ```

# seoR

Version: 0.1.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘seoR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getBingResults
    > ### Title: Function to retrive data from Google Suggest for a specific
    > ###   keyword
    > ### Aliases: getBingResults
    > 
    > ### ** Examples
    > 
    > getBingResults("R Project")
    Error in data.frame(..., check.names = FALSE) : 
      arguments imply differing number of rows: 10, 9
    Calls: getBingResults -> as.data.frame -> cbind -> cbind -> data.frame
    Execution halted
    ```

# Seurat

Version: 2.3.4

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘loomR’ ‘MAST’
    ```

# sevenbridges

Version: 1.12.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.3Mb
      sub-directories of 1Mb or more:
        R     4.1Mb
        doc   9.5Mb
    ```

# SmarterPoland

Version: 1.7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        data   8.1Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1122 marked UTF-8 strings
    ```

# SocialMediaLab

Version: 0.23.2

## In both

*   checking whether package ‘SocialMediaLab’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Note: break used in wrong context: no loop is visible at CollectDataFacebook.R:128 
      Note: break used in wrong context: no loop is visible at CollectDataTwitter.R:140 
      Note: break used in wrong context: no loop is visible at CollectDataYoutube.R:117 
      Note: break used in wrong context: no loop is visible at CollectDataYoutube.R:124 
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/SocialMediaLab/new/SocialMediaLab.Rcheck/00install.out’ for details.
    Information on the location(s) of code generating the ‘Note’s can be
    obtained by re-running with environment variable R_KEEP_PKG_SOURCE set
    to ‘yes’.
    ```

# socialmixr

Version: 0.1.3

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# soilDB

Version: 2.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > 
      > 
      > 
      > test_check("soilDB")
      [31m──[39m [31m1. Failure: siblings() returns reasonable data (@test-siblings.R#26) [39m [31m───[39m
      names(x$sib) not equal to c("series", "sibling", "n").
      Lengths differ: 4 is not 3
      
      ══ testthat results  ═══════════════════════════════════════════════════════
      OK: 119 SKIPPED: 2 FAILED: 1
      1. Failure: siblings() returns reasonable data (@test-siblings.R#26) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# SpaDES.core

Version: 0.2.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Attaching package: 'RandomFields'
    
    The following object is masked from 'package:RandomFieldsUtils':
    
        RFoptions
    
    The following objects are masked from 'package:base':
    
        abs, acosh, asin, asinh, atan, atan2, atanh, cos, cosh, exp,
        expm1, floor, gamma, lgamma, log, log1p, log2, logb, max, min,
        round, sin, sinh, sqrt, tan, tanh, trunc
    
    Quitting from lines 477-498 (ii-modules.Rmd) 
    Error: processing vignette 'ii-modules.Rmd' failed with diagnostics:
    GLPK not found on this system.
    igraph is used internally and requires a GLPK installation.
    It can be installed using, e.g., `brew install glpk`, after which you should reinstall igraph from source using:
    `install.packages('igraph', type = 'source')`
    For more info see https://github.com/igraph/rigraph/issues/273.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R     3.1Mb
        doc   1.4Mb
    ```

# sparklyr

Version: 0.9.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        R      4.1Mb
        java   1.9Mb
    ```

# SpidermiR

Version: 1.12.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘TCGAbiolinks’ ‘miRNAtap.db’ ‘org.Hs.eg.db’
    
    Package suggested but not available for checking: ‘devtools’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# spm12r

Version: 2.8.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Name: install_spm12
    > ### Title: Install SPM12 file into directory
    > ### Aliases: install_spm12
    > 
    > ### ** Examples
    > 
    > tdir = tempfile()
    > dir.create(tdir)
    > res = install_spm12(install_dir = tdir)
    cloning into '/tmp/RtmpecbiIb/file32b44eeb40f7/spm12'...
    Receiving objects:   1% (65/6461),   17 kb
    Receiving objects:  11% (711/6461),  256 kb
    Receiving objects:  21% (1357/6461), 3169 kb
    Receiving objects:  31% (2003/6461), 8336 kb
    Receiving objects:  41% (2650/6461), 10176 kb
    Receiving objects:  51% (3296/6461), 11568 kb
    Receiving objects:  61% (3942/6461), 32893 kb
    Error in git2r::clone("https://github.com/muschellij2/spm12r", branch = "gh-pages",  : 
      Error in 'git2r_clone': SecureTransport error: decryption failure
    Calls: install_spm12 -> <Anonymous>
    Execution halted
    ```

# statsDK

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘ggplot2’ ‘stringr’
      All declared Imports should be used.
    ```

# SympluR

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘readr’
      All declared Imports should be used.
    ```

# tableschema.r

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘iterators’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘parsedate’
    ```

# TCGAbiolinks

Version: 2.10.0

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘tidyr’
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 75.5Mb
      sub-directories of 1Mb or more:
        R      4.1Mb
        data   4.1Mb
        doc   67.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00_pkg_src/TCGAbiolinks/R/visualize.R:156-157)
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dNetPipeline’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00_pkg_src/TCGAbiolinks/R/visualize.R:161-162)
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dCommSignif’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00_pkg_src/TCGAbiolinks/R/visualize.R:174)
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘visNet’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00_pkg_src/TCGAbiolinks/R/visualize.R:184-189)
    TCGAvisualize_oncoprint: no visible binding for global variable ‘value’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00_pkg_src/TCGAbiolinks/R/visualize.R:936)
    readExonQuantification: no visible binding for global variable ‘exon’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00_pkg_src/TCGAbiolinks/R/prepare.R:234-235)
    readExonQuantification: no visible binding for global variable
      ‘coordinates’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00_pkg_src/TCGAbiolinks/R/prepare.R:234-235)
    Undefined global functions or variables:
      Tumor.purity barcode c3net clinical coordinates dCommSignif
      dNetInduce dNetPipeline exon knnmi.cross limmacontrasts.fit
      limmamakeContrasts minet portions rse_gene value visNet
    ```

# tidyquant

Version: 0.5.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc   4.1Mb
    ```

# tidyRSS

Version: 1.2.7

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# tidytransit

Version: 0.3.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        extdata   4.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘here’ ‘htmltools’ ‘scales’ ‘stringr’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 41 marked UTF-8 strings
    ```

# tidyverse

Version: 1.2.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dbplyr’ ‘reprex’ ‘rlang’
      All declared Imports should be used.
    ```

# TMDb

Version: 1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TMDb/new/TMDb.Rcheck/00_pkg_src/TMDb/R/search_collection.R:16-17)
    search_company: no visible global function definition for ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TMDb/new/TMDb.Rcheck/00_pkg_src/TMDb/R/search_company.R:8-9)
    search_keyword: no visible global function definition for ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TMDb/new/TMDb.Rcheck/00_pkg_src/TMDb/R/search_keyword.R:12-13)
    search_list: no visible global function definition for ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TMDb/new/TMDb.Rcheck/00_pkg_src/TMDb/R/search_list.R:17-18)
    search_movie: no visible global function definition for ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TMDb/new/TMDb.Rcheck/00_pkg_src/TMDb/R/search_movie.R:35-36)
    search_multi: no visible global function definition for ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TMDb/new/TMDb.Rcheck/00_pkg_src/TMDb/R/search_multi.R:21-22)
    search_person: no visible global function definition for ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TMDb/new/TMDb.Rcheck/00_pkg_src/TMDb/R/search_person.R:20-21)
    search_tv: no visible global function definition for ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/TMDb/new/TMDb.Rcheck/00_pkg_src/TMDb/R/search_tv.R:26-27)
    Undefined global functions or variables:
      URLencode
    Consider adding
      importFrom("utils", "URLencode")
    to your NAMESPACE file.
    ```

# translateR

Version: 1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    microsoftTranslate: no visible global function definition for
      ‘URLencode’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/translateR/new/translateR.Rcheck/00_pkg_src/translateR/R/microsoftTranslate.R:3)
    Undefined global functions or variables:
      URLencode
    Consider adding
      importFrom("utils", "URLencode")
    to your NAMESPACE file.
    ```

# tropr

Version: 0.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Failed to find tvtrope content
      1: as.data.frame(trope_content(.url)) at testthat/test-tropr.R:26
      2: trope_content(.url)
      3: stop("Failed to find tvtrope content") at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/tropr/new/tropr.Rcheck/00_pkg_src/tropr/R/tropr.R:40
      
      ══ testthat results  ═══════════════════════════════════════════════════════
      OK: 3 SKIPPED: 0 FAILED: 5
      1. Error: trope_data (@test-data.R#6) 
      2. Error: trope_cache (@test-data.R#19) 
      3. Error: trope_content, as.data.frame (@test-tropr.R#5) 
      4. Error: trope_history, aggr (@test-tropr.R#14) 
      5. Error: More cases (@test-tropr.R#26) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 41-47 (quickstart.Rmd) 
    Error: processing vignette 'quickstart.Rmd' failed with diagnostics:
    Failed to find tvtrope content
    Execution halted
    ```

# trread

Version: 0.2.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘here’ ‘htmltools’ ‘magrittr’ ‘scales’ ‘stringr’
      All declared Imports should be used.
    ```

# tumblR

Version: 1.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    http.connection: no visible global function definition for ‘setNames’
      (/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/tumblR/new/tumblR.Rcheck/00_pkg_src/tumblR/R/http.connection.R:23)
    Undefined global functions or variables:
      setNames
    Consider adding
      importFrom("stats", "setNames")
    to your NAMESPACE file.
    ```

# vcr

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘crul’ ‘httr’
      All declared Imports should be used.
    ```

# viridis

Version: 0.5.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# vstsr

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘xml2’
      All declared Imports should be used.
    ```

# wbstats

Version: 0.2

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1528 marked UTF-8 strings
    ```

# weathercan

Version: 0.2.8

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘xml2’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 25 marked UTF-8 strings
    ```

# webTRISr

Version: 0.1.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# WikidataR

Version: 1.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# WikipediaR

Version: 1.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘WikipediR’
    ```

# wikipediatrend

Version: 1.1.14

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘devtools’
    ```

# wunderscraper

Version: 0.1.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rwunderground’
    ```

# XKCDdata

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# xlm

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘methods’ ‘stats’
      All declared Imports should be used.
    ```

# xml2

Version: 1.2.0

## In both

*   checking whether package ‘xml2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/xml2/new/xml2.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘xml2’ ...
** package ‘xml2’ successfully unpacked and MD5 sums checked
Found pkg-config cflags and libs!
Using PKG_CFLAGS=-I/usr/include/libxml2
Using PKG_LIBS=-L/usr/lib -lxml2 -lz -lpthread -licucore -lm
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because libxml-2.0 was not found. Try installing:
 * deb: libxml2-dev (Debian, Ubuntu, etc)
 * rpm: libxml2-devel (Fedora, CentOS, RHEL)
 * csw: libxml2_dev (Solaris)
If libxml-2.0 is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a libxml-2.0.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘xml2’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/xml2/new/xml2.Rcheck/xml2’

```
### CRAN

```
* installing *source* package ‘xml2’ ...
** package ‘xml2’ successfully unpacked and MD5 sums checked
Found pkg-config cflags and libs!
Using PKG_CFLAGS=-I/usr/include/libxml2
Using PKG_LIBS=-L/usr/lib -lxml2 -lz -lpthread -licucore -lm
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because libxml-2.0 was not found. Try installing:
 * deb: libxml2-dev (Debian, Ubuntu, etc)
 * rpm: libxml2-devel (Fedora, CentOS, RHEL)
 * csw: libxml2_dev (Solaris)
If libxml-2.0 is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a libxml-2.0.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘xml2’
* removing ‘/Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/xml2/old/xml2.Rcheck/xml2’

```
# xtractomatic

Version: 3.4.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    date	lon	lat	lowLon	higLon	lowLat	higLat
    4/23/2003	203.899	19.664	203.899	203.899	19.664	19.664
    4/24/2003	204.151	19.821	203.912597	204.389403	18.78051934	20.86148066
    4/30/2003	203.919	20.351	203.6793669	204.1586331	18.79728188	21.90471812
    5/1/2003	204.229	20.305	203.9943343	204.4636657	18.90440013	21.70559987
    Quitting from lines 818-843 (Usingxtractomatic.Rmd) 
    Error: processing vignette 'Usingxtractomatic.Rmd' failed with diagnostics:
    (converted from warning) Removed 4070 rows containing missing values (geom_raster).
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

