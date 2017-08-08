# AnnotationHub

Version: 2.8.2

## Newly broken

*   R CMD check timed out
    ```
    ```

## Newly fixed

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    downloading from 'https://annotationhub.bioconductor.org/fetch/57158'
        'https://annotationhub.bioconductor.org/fetch/57159'
    retrieving 2 resources
    Quitting from lines 310-312 (AnnotationHub-HOWTO.Rmd) 
    Error: processing vignette 'AnnotationHub-HOWTO.Rmd' failed with diagnostics:
    failed to load resource
      name: AH50424
      title: clinvar_20160203.vcf.gz
      reason: 1 resources failed to download
    Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘AnnotationHubData’
    ```

*   checking R code for possible problems ... NOTE
    ```
    .get1,EnsDbResource: no visible global function definition for ‘EnsDb’
    Undefined global functions or variables:
      EnsDb
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: listResources.Rd:50-51: Dropping empty section \seealso
    ```

# banR

Version: 0.2.0

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 52-54 (geocode.Rmd) 
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

# dataonderivatives

Version: 0.3.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `df2` inherits from `NULL` not `data.frame`.
      
      
      3. Failure: BSDR API accesible (@test-bsdr.R#9) --------------------------------
      nrow(df1) <= nrow(df2) isn't true.
      
      
      testthat results ================================================================
      OK: 24 SKIPPED: 0 FAILED: 3
      1. Failure: BSDR API accesible (@test-bsdr.R#6) 
      2. Failure: BSDR API accesible (@test-bsdr.R#8) 
      3. Failure: BSDR API accesible (@test-bsdr.R#9) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# googleAuthR

Version: 0.5.1

## Newly broken

*   R CMD check timed out
    ```
    ```

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      
      
      ==auth JSON file location==
      =dir:  /Users/hadley/Documents/web/httr/revdep/checks/googleAuthR/old/googleAuthR.Rcheck/tests/testthat 
      =file:   
      =list files: auth.json httr-oauth.rds test-batch.R test-discovery.R test-gaAuthR.R 
      
      testthat results ================================================================
      OK: 23 SKIPPED: 2 FAILED: 2
      1. Error: A batch call works (@test-batch.R#95) 
      2. Error: A walk batch call works but with no returned data (@test-batch.R#103) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# oai

Version: 0.2.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library("oai")
      > 
      > test_check("oai")
      1. Failure: badArgument is triggered (@test-handle_errors.R#28) ----------------
      handle_errors(xml) did not throw an error.
      
      
      testthat results ================================================================
      OK: 137 SKIPPED: 0 FAILED: 1
      1. Failure: badArgument is triggered (@test-handle_errors.R#28) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# REDCapR

Version: 0.9.8

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      returned_object$success isn't true.
      
      
      testthat results ================================================================
      OK: 563 SKIPPED: 0 FAILED: 7
      1. Failure: NameComesFromREDCap (@test-file-oneshot.R#15) 
      2. Error: NameComesFromREDCap (@test-file-oneshot.R#30) 
      3. Failure: Write Batch -Insert (@test-write-batch.R#16) 
      4. Failure: Write Batch -Insert (@test-write-batch.R#52) 
      5. Failure: Write Batch -Insert (@test-write-batch.R#54) 
      6. Failure: Write Batch -Insert (@test-write-batch.R#57) 
      7. Failure: Write Batch -Insert (@test-write-batch.R#58) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

