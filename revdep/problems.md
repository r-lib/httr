# abjutils

Version: 0.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      rm_accent(umlaut) not equal to `nudeUmlaut`.
      1/1 mismatches
      x[1]: "\"a\"e\"i\"o\"u\"A\"E\"I\"O\"U\"y"
      y[1]: "aeiouAEIOUy"
      
      
      testthat results ================================================================
      OK: 10 SKIPPED: 0 FAILED: 4
      1. Failure: rm_accent is the converted version of a string with all non-ASCII characters removed. (@test-rm_accent.R#30) 
      2. Failure: rm_accent is the converted version of a string with all non-ASCII characters removed. (@test-rm_accent.R#32) 
      3. Failure: rm_accent is the converted version of a string with all non-ASCII characters removed. (@test-rm_accent.R#33) 
      4. Failure: rm_accent is the converted version of a string with all non-ASCII characters removed. (@test-rm_accent.R#34) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘httr’
      All declared Imports should be used.
    ```

# ALA4R

Version: 1.5.6

## In both

*   R CMD check timed out
    

# algorithmia

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rjson’ ‘xml2’
      All declared Imports should be used.
    ```

# AnnotationHub

Version: 2.8.2

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

# AntWeb

Version: 0.7

## In both

*   checking R code for possible problems ... NOTE
    ```
    aw_map: no visible global function definition for ‘browseURL’
    Undefined global functions or variables:
      browseURL
    Consider adding
      importFrom("utils", "browseURL")
    to your NAMESPACE file.
    ```

# archivist

Version: 2.1.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘archivist.github’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘rmarkdown’, ‘archivist.github’
    ```

# atsd

Version: 1.0.8441

## In both

*   checking R code for possible problems ... NOTE
    ```
    parse_response: no visible global function definition for ‘read.csv’
    Undefined global functions or variables:
      read.csv
    Consider adding
      importFrom("utils", "read.csv")
    to your NAMESPACE file.
    ```

# banR

Version: 0.2.0

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > ### Name: reverse_geocode_tbl
    > ### Title: Reverse geocode tbl
    > ### Aliases: reverse_geocode_tbl
    > 
    > ### ** Examples
    > 
    > 
    > table_reverse <- tibble::tibble(
    + x = c(2.279092, 2.375933,2.308332), 
    + y = c(48.84683, 48.84255, 48.85032), 
    + z = rnorm(3)
    + )
    > 
    > reverse_geocode_tbl(tbl = table_reverse, longitude = x, latitude = y)
    Writing tempfile to.../tmp/RtmpZMBAyG/fileee766b362c1d.csv
    If file is larger than 8 MB, it must be splitted
    Size is : 73 bytes
    Server errorService UnavailableServer error: (503) Service Unavailable
    Error in reverse_geocode_tbl(tbl = table_reverse, longitude = x, latitude = y) : 
      The API sent back an error 503
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

# bea.R

Version: 1.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘chron’ ‘colorspace’ ‘gtable’ ‘htmltools’ ‘htmlwidgets’
      ‘httpuv’ ‘magrittr’ ‘munsell’ ‘plyr’ ‘scales’ ‘stringi’ ‘xtable’
      ‘yaml’
      All declared Imports should be used.
    ```

# bigQueryR

Version: 0.3.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 13 SKIPPED: 0 FAILED: 12
      1. Error: Can authenticate (@test_query.R#8) 
      2. Error: Can upload test set (@test_query.R#39) 
      3. Error: Can upload via Google Cloud Storage (@test_query.R#58) 
      4. Error: Can list tables (@test_query.R#72) 
      5. Error: Can query test set (@test_query.R#81) 
      6. Error: Single query bug (@test_query.R#91) 
      7. Error: Async query (@test_query.R#100) 
      8. Error: Extract data to Google Cloud Storage, and download (@test_query.R#117) 
      9. Error: Create a table (@test_query.R#142) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘bigrquery’
    ```

# bigrquery

Version: 0.4.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      4. Failure: DBItest: Connection: disconnect_invalid_connection 
      5. Failure: DBItest: Connection: data_type_connection 
      6. Failure: DBItest: Connection: data_type_connection 
      7. Failure: DBItest: Connection: data_type_connection 
      8. Failure: DBItest: Result: send_query_invalid_connection 
      9. Failure: DBItest: Result: fetch_n_bad 
      1. ...
      
      Error: testthat unit tests failed
      In addition: Warning messages:
      1: Unused skip expressions: ^command_query$, ^data_logical_int.*, ^data_character_null_(above|below)$ 
      2: Unused skip expressions: ^roundtrip_logical_int$, ^roundtrip_64_bit$, ^quote_identifier_not_vectorized$ 
      3: Unused skip expressions: rows_affected 
      4: Unused skip expressions: read_only 
      Execution halted
    ```

# bio3d

Version: 2.3-3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
           'Using fake e-mail address may result in your jobs being killed and your IP, Organisation or entire domain being black-listed.'
      1: seqaln(seqs) at testthat/test-seqaln.R:18
      2: stop(paste("You do not have ", prg, " installed/working locally on your machine.\n", 
             "  We can attempt to use the EBI webserver if you provide an email address (required by the EBI).\n", 
             "  Please note that the EBI states (see their Terms of Use):\n", "     'Using fake e-mail address may result in your jobs being killed and your IP, Organisation or entire domain being black-listed.'\n", 
             sep = ""))
      
      testthat results ================================================================
      OK: 4272 SKIPPED: 3 FAILED: 3
      1. Error: aanma based eNMA works (@test-aanma.pdbs.R#22) 
      2. Error: read.all() reads all/select PDB atoms properly (@test-read.all.R#12) 
      3. Error: seqaln works (@test-seqaln.R#18) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# BiocCheck

Version: 1.12.0

## In both

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
    Package which this enhances but not available for checking: ‘codetoolsBioC’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘knitr:::detect_pattern’ ‘tools:::RdTags’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    checkValidDevelopmentURL: no visible global function definition for
      ‘url.exists’
    Undefined global functions or variables:
      url.exists
    ```

# BiocWorkflowTools

Version: 1.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocStyle:::auth_affil_latex’ ‘BiocStyle:::modifyLines’
      ‘rmarkdown:::flatten_latex_dependencies’
      ‘rmarkdown:::has_latex_dependencies’
      ‘rmarkdown:::latex_dependencies_as_text_file’
      See the note in ?`:::` about the use of this operator.
    ```

# biolink

Version: 0.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      tests/testthat/test-url.r:79:22: style: Only use double-quotes.
         url <- modify_url('http://google.com?a=1', query = list(b = 2))
                           ^~~~~~~~~~~~~~~~~~~~~~~
      tests/testthat/test-url.r:85:27: warning: Do not use absolute paths.
        expect_equal(url$path, "/tmp/foobar")
                                ^~~~
      
      
      testthat results ================================================================
      OK: 116 SKIPPED: 0 FAILED: 1
      1. Failure: Package Style (@test-style.r#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# biomartr

Version: 0.5.1

## In both

*   R CMD check timed out
    

# BIOMASS

Version: 1.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘lmfor’, ‘taxize’
    ```

# ccafs

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      one or more files don't exist
      1: cc_data_read(res[1]) at testthat/test-cc_data_read.R:11
      2: cc_data_read.ccafs_files(res[1])
      3: cc_data_read(unclass(x), unreadable)
      4: cc_data_read.character(unclass(x), unreadable)
      5: stop("one or more files don't exist", call. = FALSE)
      
      testthat results ================================================================
      OK: 29 SKIPPED: 0 FAILED: 3
      1. Failure: cc_data_fetch works (@test-cc_data_fetch.R#13) 
      2. Failure: cc_data_fetch works (@test-cc_data_fetch.R#14) 
      3. Error: cc_data_read works (@test-cc_data_read.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# cellbaseR

Version: 1.0.0

## In both

*   checking examples ... WARNING
    ```
    ...
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
      Warning: 'rbind.pages' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

# censusapi

Version: 0.2.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    
    Attaching package: 'censusapi'
    
    The following object is masked from 'package:methods':
    
        getFunction
    
    Quitting from lines 84-87 (getting-started.Rmd) 
    Error: processing vignette 'getting-started.Rmd' failed with diagnostics:
    'key' argument is missing. A Census API key is required and can be requested at https://api.census.gov/data/key_signup.html.
    Please add your Census key to your .Renviron - see instructions at https://github.com/hrecht/censusapi#api-key-setup
    Execution halted
    ```

# censys

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: expect_compare(">=", object, expected, label = label, expected.label = expected.label)
      3: stopifnot(is.numeric(actual), length(actual) == 1)
      4: get_series()
      5: httr::GET(CENSYS_API_URL %s+% "data", check_api())
      6: request_build("GET", hu$url, as.request(config), ...)
      7: as.request(config)
      8: check_api()
      9: stop("Both CENSYS_API_ID and CENSYS_API_SECRET must be present in the R environment.")
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: we can do something (@test-censys.R#7) 
      
      Error: testthat unit tests failed
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
    Undefined global functions or variables:
      na.omit
    Consider adding
      importFrom("stats", "na.omit")
    to your NAMESPACE file.
    ```

# comtradr

Version: 0.0.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      
      testthat results ================================================================
      OK: 47 SKIPPED: 0 FAILED: 8
      1. Failure: search return values are correct, and fail when expected (@test-ct_search.R#62) 
      2. Failure: search return values are correct, and fail when expected (@test-ct_search.R#65) 
      3. Failure: search return values are correct, and fail when expected (@test-ct_search.R#68) 
      4. Failure: search return values are correct, and fail when expected (@test-ct_search.R#71) 
      5. Failure: search return values are correct, and fail when expected (@test-ct_search.R#74) 
      6. Failure: search return values are correct, and fail when expected (@test-ct_search.R#77) 
      7. Failure: search return values are correct, and fail when expected (@test-ct_search.R#80) 
      8. Failure: search return values are correct, and fail when expected (@test-ct_search.R#83) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# congressbr

Version: 0.1.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# covr

Version: 3.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      x[115]: S4.R<\\/a>\"],[38],[6],[6],[0],[\"2\"]],\"container\":\"<table class=\\\"d
      x[115]: isplay\\\">\\n  <thead>\\n    <tr>\\n      <th>Coverage<\\/th>\\n      ...
      y[115]: "          <script type=\"application/json\" data-for=\"htmlwidget-eaef49d
      y[115]: 4a484bc22a8b4\">{\"x\":{\"filter\":\"none\",\"data\":[[\"<div class=\\\"co
      y[115]: verage-box coverage-high\\\">100.00\\u003c/div>\"],[\"<a href=\\\"#\\\">R/
      y[115]: TestS4.R\\u003c/a>\"],[38],[6],[6],[0],[\"2\"]],\"container\":\"<table cla
      y[115]: ss=\\\"display\\\">\\n  <thead>\\n    <tr>\\n      <th>Coverage\\u003c/...
      
      
      testthat results ================================================================
      OK: 239 SKIPPED: 0 FAILED: 1
      1. Failure: it works with coverage objects (@test-report.R#28) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# darksky

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      + }
      1. Error: the API call works (@test-darksky.R#4) -------------------------------
      Please set env var DARKSKY_API_KEY to your Dark Sky API key
      1: get_current_forecast(43.2672, -70.8617) at testthat/test-darksky.R:4
      2: sprintf("https://api.darksky.net/forecast/%s/%s,%s", darksky_api_key(), latitude, 
             longitude)
      3: darksky_api_key()
      4: stop("Please set env var DARKSKY_API_KEY to your Dark Sky API key", call. = FALSE)
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: the API call works (@test-darksky.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
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

# dataRetrieval

Version: 2.7.2

## In both

*   R CMD check timed out
    

# datasus

Version: 0.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RCurl’
      All declared Imports should be used.
    ```

# discgolf

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 6 SKIPPED: 0 FAILED: 17
      1. Error: badges works as expected (@test-badges.R#6) 
      2. Error: badges_user works as expected (@test-badges.R#23) 
      3. Failure: badges_user fails well with no input (@test-badges.R#41) 
      4. Failure: fails well with non-existent user (@test-badges.R#53) 
      5. Error: categories works as expected (@test-categories.R#6) 
      6. Error: category works as expected (@test-categories.R#20) 
      7. Error: category_latest_topics works as expected (@test-categories.R#34) 
      8. Failure: fails well with no input (@test-categories.R#48) 
      9. Failure: fails well with no input (@test-categories.R#50) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# docuSignr

Version: 0.0.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 15
      1. Failure: Environmental vars exist (@test-1-login.R#5) 
      2. Failure: Environmental vars exist (@test-1-login.R#6) 
      3. Failure: Environmental vars exist (@test-1-login.R#7) 
      4. Error: Login works doesn't error (@test-1-login.R#12) 
      5. Error: An actual account is returned (@test-1-login.R#17) 
      6. Error: Retrieve envelope without error for signing (@test-2-signing.R#5) 
      7. Error: envelopId is returned (@test-2-signing.R#24) 
      8. Error: Embed doesn't error (@test-2-signing.R#29) 
      9. Error: URL is legit (@test-2-signing.R#41) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# dwapi

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘xml2’
      All declared Imports should be used.
    ```

# dynamichazard

Version: 0.3.5

## In both

*   checking whether package ‘dynamichazard’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/web/httr/revdep/checks/dynamichazard/new/dynamichazard.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘dynamichazard’ ...
** package ‘dynamichazard’ successfully unpacked and MD5 sums checked
** libs
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/hadley/Documents/web/httr/revdep/library/dynamichazard/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/dynamichazard/RcppArmadillo/include" -I/usr/local/include    -fopenmp -fPIC  -Wall -g -O2 -c RcppExports.cpp -o RcppExports.o
clang: error: unsupported option '-fopenmp'
make: *** [RcppExports.o] Error 1
ERROR: compilation failed for package ‘dynamichazard’
* removing ‘/Users/hadley/Documents/web/httr/revdep/checks/dynamichazard/new/dynamichazard.Rcheck/dynamichazard’

```
### CRAN

```
* installing *source* package ‘dynamichazard’ ...
** package ‘dynamichazard’ successfully unpacked and MD5 sums checked
** libs
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/hadley/Documents/web/httr/revdep/library/dynamichazard/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/dynamichazard/RcppArmadillo/include" -I/usr/local/include    -fopenmp -fPIC  -Wall -g -O2 -c RcppExports.cpp -o RcppExports.o
clang: error: unsupported option '-fopenmp'
make: *** [RcppExports.o] Error 1
ERROR: compilation failed for package ‘dynamichazard’
* removing ‘/Users/hadley/Documents/web/httr/revdep/checks/dynamichazard/old/dynamichazard.Rcheck/dynamichazard’

```
# ecoengine

Version: 1.10.0

## In both

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'dplyr::rbind_all' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# edpclient

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 53 SKIPPED: 1 FAILED: 15
      1. Failure: source lints (@test_lint.R#7) 
      2. Error: populations can be listed (@test_population.R#3) 
      3. Error: population object utilities work (@test_population.R#12) 
      4. Error: population model object utilities work (@test_population.R#21) 
      5. Error: population models on a population can be listed (@test_population.R#33) 
      6. Error: basic edp_session operations work (@test_session.R#3) 
      7. Error: we can work with population models (@test_session.R#14) 
      8. Error: we can select from yaxcatpeople (@test_session.R#27) 
      9. Error: we can simulate from yaxcatpeople (@test_session.R#54) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# elastic

Version: 0.7.8

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        examples   4.6Mb
    ```

# elasticsearchr

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 25 SKIPPED: 0 FAILED: 16
      1. Error: %index% correctly indexes a large (>10mb single chunk) data frame (@test-api.R#172) 
      2. Error: %create% can create an index with a custom mapping (@test-api.R#199) 
      3. Error: %delete% can delete all documents from an index (@test-api.R#218) 
      4. Error: %delete% can delete all documents from a type (@test-api.R#238) 
      5. Error: %delete% can delete selected documents from a type (@test-api.R#261) 
      6. Error: we can query using the %search% operator and return all documents (@test-api.R#286) 
      7. Error: we can query using the %search% operator on a subset of all documents (@test-api.R#308) 
      8. Error: we can aggregate using the %search% operator (@test-api.R#331) 
      9. Error: we can query + sort using the %search% operator (@test-api.R#353) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# elevatr

Version: 0.1.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: gzfile(file, "rb")
      
      3. Error: proj_expand works (@test-internal.R#22) ------------------------------
      cannot open the connection
      1: readRDS("key_file.rds") at testthat/test-internal.R:22
      2: gzfile(file, "rb")
      
      testthat results ================================================================
      OK: 11 SKIPPED: 0 FAILED: 3
      1. Error: get_elev_point returns correctly (@test-get_elev_point.R#15) 
      2. Error: get_elev_raster returns correctly (@test-get_elev_raster.R#14) 
      3. Error: proj_expand works (@test-internal.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 37-39 (introduction_to_elevatr.Rmd) 
    Error: processing vignette 'introduction_to_elevatr.Rmd' failed with diagnostics:
    cannot open the connection
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘prettyunits’ ‘ratelimitr’ ‘rgdal’
      All declared Imports should be used.
    ```

# ENCODExplorer

Version: 2.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 73.6Mb
      sub-directories of 1Mb or more:
        data     23.9Mb
        doc       1.5Mb
        extdata  48.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘biosample_type’
    step6_control: no visible binding for global variable ‘controls’
    step6_date_released: no visible binding for global variable
      ‘date_released’
    step6_status: no visible binding for global variable ‘status’
    step6_target: no visible binding for global variable ‘target’
    step7: no visible binding for global variable ‘organism’
    step8: no visible binding for global variable ‘investigated_as’
    step8: no visible binding for global variable ‘target’
    step9: no visible binding for global variable ‘organism’
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

# europepmc

Version: 0.1.4

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    18 records found. Returning 18
    Warning: 'jsonlite::rbind.pages' is deprecated.
    Use 'rbind_pages' instead.
    See help("Deprecated")
    10 records found. Returning 10
    Warning: 'jsonlite::rbind.pages' is deprecated.
    Use 'rbind_pages' instead.
    See help("Deprecated")
    17 records found. Returning 17
    Warning: 'jsonlite::rbind.pages' is deprecated.
    Use 'rbind_pages' instead.
    See help("Deprecated")
    Retrieving page 1
    Warning: 'jsonlite::rbind.pages' is deprecated.
    Use 'rbind_pages' instead.
    See help("Deprecated")
    pandoc: Could not fetch https://europepmc.org/wicket/resource/uk.bl.ukpmc.web.pages.faq.Help/images/EuropePMCContent-ver-4BB17F003F8F38DF2D3BBE48AB5896C6.png
    TlsException (HandshakeFailed (Error_Protocol ("expecting server hello, got alert : [(AlertLevel_Fatal,HandshakeFailure)]",True,HandshakeFailure)))
    Error: processing vignette 'introducing-europepmc.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

# eurostat

Version: 3.1.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    trying URL 'http://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?sort=1&file=data%2Ften00081.tsv.gz'
    Content type 'application/octet-stream;charset=UTF-8' length 13546 bytes (13 KB)
    ==================================================
    downloaded 13 KB
    
    Table ten00081 cached at /tmp/Rtmpcc5pdU/eurostat/ten00081_date_code_TF.rds
    trying URL 'http://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?sort=1&file=data%2Ftgs00026.tsv.gz'
    Content type 'application/octet-stream;charset=UTF-8' length 6193 bytes
    ==================================================
    downloaded 6193 bytes
    
    Quitting from lines 310-336 (eurostat_tutorial.Rmd) 
    Error: processing vignette 'eurostat_tutorial.Rmd' failed with diagnostics:
    Evaluation error: 'breaks' are not unique.
    Execution halted
    ```

# EventStudy

Version: 0.32

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc   5.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘curl’ ‘stringr’
      All declared Imports should be used.
    ```

# ExperimentHubData

Version: 1.2.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    makeExperimentHubMetadata : <anonymous>: no visible binding for global
      variable ‘Coordinate_1_based’
    makeExperimentHubMetadata : <anonymous>: no visible binding for global
      variable ‘DataProvider’
    makeExperimentHubMetadata : <anonymous>: no visible binding for global
      variable ‘Maintainer’
    makeExperimentHubMetadata : <anonymous>: no visible binding for global
      variable ‘RDataClass’
    makeExperimentHubMetadata : <anonymous>: no visible binding for global
      variable ‘RDataDateAdded’
    makeExperimentHubMetadata : <anonymous>: no visible binding for global
      variable ‘RDataPath’
    makeExperimentHubMetadata : <anonymous>: no visible binding for global
      variable ‘DispatchClass’
    makeExperimentHubMetadata : <anonymous>: no visible binding for global
      variable ‘PreparerClass’
    Undefined global functions or variables:
      BiocVersion Coordinate_1_based DataProvider Description DispatchClass
      Genome Maintainer PreparerClass RDataClass RDataDateAdded RDataPath
      SourceType SourceUrl SourceVersion Species TaxonomyId Title
      selectSome
    ```

# fauxpas

Version: 0.1.0

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

# finch

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      2. Error: dwca_get - works with a url - read=TRUE (@test-dwca_get.R#61) --------
      argument is of length zero
      1: dwca_read(url, read = TRUE) at testthat/test-dwca_get.R:61
      2: parse_dwca(x)
      3: data_paths(ff)
      4: read_xml(grep("meta.xml", x, value = TRUE))
      5: read_xml.character(grep("meta.xml", x, value = TRUE))
      
      testthat results ================================================================
      OK: 37 SKIPPED: 0 FAILED: 2
      1. Error: dwca_get - works with a url - read=FALSE (@test-dwca_get.R#39) 
      2. Error: dwca_get - works with a url - read=TRUE (@test-dwca_get.R#61) 
      
      Error: testthat unit tests failed
      Execution halted
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

# foghorn

Version: 0.4.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 49 SKIPPED: 0 FAILED: 10
      1.  Failure: output of summary cran results (@test-foghorn.R#176) 
      2.  Failure: output of summary cran results (@test-foghorn.R#178) 
      3.  Failure: output of summary cran results (@test-foghorn.R#189) 
      4.  Failure: output of summary cran results (@test-foghorn.R#201) 
      5.  Failure: output of summary cran results (@test-foghorn.R#213) 
      6.  Failure: output of summary cran results (@test-foghorn.R#226) 
      7.  Failure: output of summary cran results (@test-foghorn.R#233) 
      8.  Failure: output of summary cran results (@test-foghorn.R#239) 
      9.  Failure: output of show cran results (@test-foghorn.R#264) 
      10. Failure: output of show cran results (@test-foghorn.R#266) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ftDK

Version: 1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 39 marked UTF-8 strings
    ```

# GA4GHclient

Version: 1.0.0

## In both

*   R CMD check timed out
    

# gender

Version: 0.5.1

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

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6. Failure: legacy cases file manifest contains supplied file_ids (@test_legacy.R#89) 
      all(files_legacy_ids %in% cres$id) isn't true.
      
      
      testthat results ================================================================
      OK: 37 SKIPPED: 0 FAILED: 6
      1. Error: manifest cases (@test_data.R#7) 
      2. Failure: legacy file ids found (@test_legacy.R#42) 
      3. Failure: legacy manifest matches legacy ids (@test_legacy.R#53) 
      4. Failure: legacy case ids found (@test_legacy.R#70) 
      5. Failure: legacy case ids in default archive, also (@test_legacy.R#78) 
      6. Failure: legacy cases file manifest contains supplied file_ids (@test_legacy.R#89) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    default_fields.character: no visible binding for global variable
      ‘defaults’
    Undefined global functions or variables:
      defaults
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'as.data.frame.GDCResults':
      ‘as.data.frame.GDCResults’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# geoknife

Version: 1.5.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
          url
      
      1. Failure: error on url (@test-geoknife_utils.R#15) ---------------------------
      error$message does not match "Couldn't resolve host name".
      Actual value: "Could not resolve host: bad.url.html"
      
      
      XPath error : Undefined namespace prefix
      XPath error : Invalid expression
      testthat results ================================================================
      OK: 181 SKIPPED: 0 FAILED: 1
      1. Failure: error on url (@test-geoknife_utils.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# geoparser

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2. Error: no problems if no results (@test_query.R#26) -------------------------
      HTTP failure: 401
      1: geoparser_q(text_input = "no placename here") at testthat/test_query.R:26
      2: lapply(text_input, total, key = key)
      3: FUN(X[[i]], ...)
      4: geoparser_check(temp)
      5: stop("HTTP failure: ", status, call. = FALSE)
      
      testthat results ================================================================
      OK: 3 SKIPPED: 0 FAILED: 2
      1. Error: query returns a list of data.frames (@test_query.R#4) 
      2. Error: no problems if no results (@test_query.R#26) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 34-37 (geoparser.Rmd) 
    Error: processing vignette 'geoparser.Rmd' failed with diagnostics:
    HTTP failure: 401
    Execution halted
    ```

# GEOquery

Version: 2.42.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
           testShortGSE 
      
         test_SingleSampleGSE.R 
           testSingleSampleGSE 
      
         test_SuppFileSupport.R 
           testSuppFileSupport 
      
         test_getGPLFALSE.R 
           testCaseGSEgetGPLFALSE 
      
      
      Error in BiocGenerics:::testPackage("GEOquery") : 
        unit tests failed for package GEOquery
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.9Mb
      sub-directories of 1Mb or more:
        extdata  12.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘limma’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Package in Depends field not imported from: ‘Biobase’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    
    See section ‘Good practice’ in '?.onAttach'.
    
    GDS2MA: no visible binding for global variable ‘MA’
    fastTabRead: no visible global function definition for ‘read.table’
    fastTabRead: no visible global function definition for ‘read.delim’
    getAndParseGSEMatrices: no visible global function definition for
      ‘download.file’
    getDirListing: no visible global function definition for ‘read.table’
    getGEOSuppFiles: no visible global function definition for
      ‘download.file’
    getGEOfile: no visible global function definition for ‘download.file’
    getGSEDataTables : <anonymous>: no visible global function definition
      for ‘read.delim’
    parseGSEMatrix: no visible global function definition for ‘read.table’
    parseGSEMatrix: no visible global function definition for ‘read.delim’
    Undefined global functions or variables:
      MA download.file read.delim read.table
    Consider adding
      importFrom("utils", "download.file", "read.delim", "read.table")
    to your NAMESPACE file.
    ```

# gistr

Version: 0.4.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      9: withVisible(function_list[[k]](value))
      10: function_list[[k]](value)
      11: commits(., page = 454590788)
      12: gist_GET(sprintf("%s/gists/%s/commits", ghbase(), gist$id), gist_auth(), ghead(), 
             args, ...)
      13: process(response)
      14: stopstatus(x)
      15: stop(res$message, "\n", errs, call. = FALSE)
      
      testthat results ================================================================
      OK: 82 SKIPPED: 0 FAILED: 1
      1. Error: config options work (@test-commits.R#20) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# gmum.r

Version: 0.2.1

## In both

*   checking whether package ‘gmum.r’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/web/httr/revdep/checks/gmum.r/new/gmum.r.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gmum.r’ ...
** package ‘gmum.r’ successfully unpacked and MD5 sums checked
** libs
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/libsvm_runner.cpp -o svm/libsvm_runner.o
In file included from svm/libsvm_runner.cpp:18:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
svm/libsvm_runner.cpp:397:9: warning: unused variable 'print_func' [-Wunused-variable]
        void (*print_func)(const char*) = NULL; // default printing to stdout
               ^
In file included from svm/libsvm_runner.cpp:18:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm_client.cpp -o svm/svm_client.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svmlight_runner.cpp -o svm/svmlight_runner.o
In file included from svm/svmlight_runner.cpp:20:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
svm/svmlight_runner.cpp:915:9: warning: variable 'll' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    if (!use_gmumr) {
        ^~~~~~~~~~
svm/svmlight_runner.cpp:924:5: note: uninitialized use occurs here
    ll+=2;
    ^~
svm/svmlight_runner.cpp:915:5: note: remove the 'if' if its condition is always true
    if (!use_gmumr) {
    ^~~~~~~~~~~~~~~~
svm/svmlight_runner.cpp:907:27: note: initialize the variable 'll' to silence this warning
    long max_words_doc, ll;
                          ^
                           = 0
In file included from svm/svmlight_runner.cpp:20:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm_wrapper_module.cpp -o svm/svm_wrapper_module.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/two_e_svm_pre.cpp -o svm/two_e_svm_pre.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm_basic.cpp -o svm/svm_basic.o
In file included from svm/svm_basic.cpp:3:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
svm/svm_basic.cpp:7:49: warning: field 'nSV' will be initialized after field 'libsvm_class_weights' [-Wreorder]
SVMConfiguration::SVMConfiguration(): label(0), nSV(0),  libsvm_class_weights(0) {
                                                ^
In file included from svm/svm_basic.cpp:3:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm.cpp -o svm/svm.o
In file included from svm/svm.cpp:15:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
svm/svm.cpp:2706:24: warning: unused variable 'sv_coef' [-Wunused-variable]
        const double * const *sv_coef = model->sv_coef;
                              ^
In file included from svm/svm.cpp:15:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm_utils.cpp -o svm/svm_utils.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/two_e_svm_post.cpp -o svm/two_e_svm_post.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/validator_runner.cpp -o svm/validator_runner.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/assignment.cpp -o cec/assignment.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cec.cpp -o cec/cec.o
In file included from cec/cec.cpp:2:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
cec/cec.cpp:10:9: warning: 'M_E' macro redefined [-Wmacro-redefined]
#define M_E 2.71828182845904523536
        ^
/usr/include/math.h:698:9: note: previous definition is here
#define M_E         2.71828182845904523536028747135266250   /* e              */
        ^
cec/cec.cpp:11:9: warning: 'M_PI' macro redefined [-Wmacro-redefined]
#define M_PI 3.14159265358979323846
        ^
/usr/include/math.h:703:9: note: previous definition is here
#define M_PI        3.14159265358979323846264338327950288   /* pi             */
        ^
In file included from cec/cec.cpp:2:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
7 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/centroids_assignment.cpp -o cec/centroids_assignment.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cluster_custom_function.cpp -o cec/cluster_custom_function.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/kmeanspp_assignment.cpp -o cec/kmeanspp_assignment.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cec_configuration.cpp -o cec/cec_configuration.o
In file included from cec/cec_configuration.cpp:8:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from cec/cec_configuration.cpp:8:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
5 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cec_module.cpp -o cec/cec_module.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cluster.cpp -o cec/cluster.o
cec/cluster.cpp:5:9: warning: 'M_E' macro redefined [-Wmacro-redefined]
#define M_E 2.71828182845904523536
        ^
/usr/include/math.h:698:9: note: previous definition is here
#define M_E         2.71828182845904523536028747135266250   /* e              */
        ^
cec/cluster.cpp:6:9: warning: 'M_PI' macro redefined [-Wmacro-redefined]
#define M_PI 3.14159265358979323846
        ^
/usr/include/math.h:703:9: note: previous definition is here
#define M_PI        3.14159265358979323846264338327950288   /* pi             */
        ^
2 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/hartigan.cpp -o cec/hartigan.o
In file included from cec/hartigan.cpp:3:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from cec/hartigan.cpp:3:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
5 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/random_assignment.cpp -o cec/random_assignment.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c utils/threading.cpp -o utils/threading.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c utils/tinythread.cpp -o utils/tinythread.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c utils/utils.cpp -o utils/utils.o
In file included from utils/utils.cpp:4:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from utils/utils.cpp:4:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
5 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c gng/gng_algorithm.cpp -o gng/gng_algorithm.o
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:14:
../inst/include/gng/gng_lazy_error_heap.h:67:4: warning: field 'm_buffer_size' will be initialized after base 'super' (aka 'Heap<gmum::ErrorNode>') [-Wreorder]
                        m_buffer_size(0), super() {
                        ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:15:
In file included from ../inst/include/gng/uniform_grid.h:173:
../inst/include/gng/uniform_grid.hpp:215:6: warning: unused variable 'size' [-Wunused-variable]
        int size = SIZE(m_grid);
            ^
gng/gng_algorithm.cpp:85:12: warning: field 'g_db' will be initialized after field 'c' [-Wreorder]
                m_g(*g), g_db(db), c(0), s(0), m_max_nodes(max_nodes), m_max_age(
                         ^
gng/gng_algorithm.cpp:85:22: warning: field 'c' will be initialized after field 's' [-Wreorder]
                m_g(*g), g_db(db), c(0), s(0), m_max_nodes(max_nodes), m_max_age(
                                   ^
gng/gng_algorithm.cpp:85:28: warning: field 's' will be initialized after field 'm_max_nodes' [-Wreorder]
                m_g(*g), g_db(db), c(0), s(0), m_max_nodes(max_nodes), m_max_age(
                                         ^
gng/gng_algorithm.cpp:85:34: warning: field 'm_max_nodes' will be initialized after field 'm_max_age' [-Wreorder]
                m_g(*g), g_db(db), c(0), s(0), m_max_nodes(max_nodes), m_max_age(
                                               ^
gng/gng_algorithm.cpp:86:31: warning: field 'm_betha' will be initialized after field 'm_lambda' [-Wreorder]
                                max_age), m_alpha(alpha), m_betha(betha), m_lambda(lambda), m_eps_w(
                                                          ^
gng/gng_algorithm.cpp:88:11: warning: field 'errorHeap' will be initialized after field 'dim' [-Wreorder]
                                1.5), errorHeap(), dim(dim), m_toggle_uniformgrid(
                                      ^
gng/gng_algorithm.cpp:88:24: warning: field 'dim' will be initialized after field 'm_toggle_uniformgrid' [-Wreorder]
                                1.5), errorHeap(), dim(dim), m_toggle_uniformgrid(
                                                   ^
gng/gng_algorithm.cpp:90:30: warning: field 'm_utility_option' will be initialized after field 'm_mean_error' [-Wreorder]
                                lazyheap_optimization),  m_utility_option(
                                                         ^
gng/gng_algorithm.cpp:91:42: warning: field 'm_utility_k' will be initialized after field 'max_iter' [-Wreorder]
                                utility_option), m_mean_error(1000), m_utility_k(utility_k), 
                                                                     ^
gng/gng_algorithm.cpp:92:37: warning: field 'm_logger' will be initialized after field 'm_iteration' [-Wreorder]
                max_iter(max_iter), m_logger(
                                    ^
gng/gng_algorithm.cpp:374:7: warning: unused variable 'BYPASS' [-Wunused-variable]
        bool BYPASS = false;
             ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:15:
In file included from ../inst/include/gng/uniform_grid.h:173:
../inst/include/gng/uniform_grid.hpp:350:18: warning: field 'gng_dim' will be initialized after field 'm_density_threshold' [-Wreorder]
                m_dist_fnc(0), gng_dim(gng_dim), m_density_threshold(
                               ^
gng/gng_algorithm.cpp:103:12: note: in instantiation of member function 'gmum::UniformGrid<std::__1::vector<std::__1::list<int, std::__1::allocator<int> >, std::__1::allocator<std::__1::list<int, std::__1::allocator<int> > > >, std::__1::list<int, std::__1::allocator<int> >, int>::UniformGrid' requested here
                ug = new UniformGrid<std::vector<Node>, Node, int>(boundingbox_origin,
                         ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: 'static' function '__double_rnd' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static double __double_rnd(double min, double max) {
              ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:511:20: warning: unused function 'writeToGraphML' [-Wunused-function]
static std::string writeToGraphML(GNGGraph &g, string filename) {
                   ^
20 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c gng/gng_configuration.cpp -o gng/gng_configuration.o
In file included from gng/gng_configuration.cpp:1:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from gng/gng_configuration.cpp:1:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
In file included from gng/gng_configuration.cpp:1:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:511:20: warning: unused function 'writeToGraphML' [-Wunused-function]
static std::string writeToGraphML(GNGGraph &g, string filename) {
                   ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c gng/gng_module.cpp -o gng/gng_module.o
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
../inst/include/gng/gng_configuration.h:22:1: warning: 'GNGConfiguration' defined as a struct here but previously declared as a class [-Wmismatched-tags]
struct GNGConfiguration {
^
gng/gng_module.cpp:13:1: note: did you mean struct here?
RCPP_EXPOSED_CLASS(GNGConfiguration)
^
/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include/Rcpp/macros/module.h:70:3: note: expanded from macro 'RCPP_EXPOSED_CLASS'
  class CLASS;                    \
  ^
gng/gng_module.cpp:10:1: note: did you mean struct here?
class GNGConfiguration;
^~~~~
struct
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:14:
../inst/include/gng/gng_lazy_error_heap.h:67:4: warning: field 'm_buffer_size' will be initialized after base 'super' (aka 'Heap<gmum::ErrorNode>') [-Wreorder]
                        m_buffer_size(0), super() {
                        ^
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:15:
In file included from ../inst/include/gng/uniform_grid.h:173:
../inst/include/gng/uniform_grid.hpp:215:6: warning: unused variable 'size' [-Wunused-variable]
        int size = SIZE(m_grid);
            ^
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: 'static' function '__double_rnd' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static double __double_rnd(double min, double max) {
              ^
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:511:20: warning: unused function 'writeToGraphML' [-Wunused-function]
static std::string writeToGraphML(GNGGraph &g, string filename) {
                   ^
9 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c gng/gng_server.cpp -o gng/gng_server.o
In file included from gng/gng_server.cpp:6:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:14:
../inst/include/gng/gng_lazy_error_heap.h:67:4: warning: field 'm_buffer_size' will be initialized after base 'super' (aka 'Heap<gmum::ErrorNode>') [-Wreorder]
                        m_buffer_size(0), super() {
                        ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:15:
In file included from ../inst/include/gng/uniform_grid.h:173:
../inst/include/gng/uniform_grid.hpp:215:6: warning: unused variable 'size' [-Wunused-variable]
        int size = SIZE(m_grid);
            ^
gng/gng_server.cpp:405:9: warning: unused variable 'max' [-Wunused-variable]
                float max = arma::max(diff), min = arma::min(diff);
                      ^
gng/gng_server.cpp:405:32: warning: unused variable 'min' [-Wunused-variable]
                float max = arma::max(diff), min = arma::min(diff);
                                             ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
../inst/include/gng/gng_dataset.h:94:19: warning: field 'store_extra_' will be initialized after field 'dim_' [-Wreorder]
                        mutex_(mutex), store_extra_(store_extra), dim_(dim), access_method_(
                                       ^
gng/gng_server.cpp:88:9: note: in instantiation of member function 'gmum::GNGDatasetSimple<double>::GNGDatasetSimple' requested here
                                new GNGDatasetSimple<double>(&database_mutex,
                                    ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
../inst/include/gng/gng_dataset.h:94:57: warning: field 'access_method_' will be initialized after field 'current_example_' [-Wreorder]
                        mutex_(mutex), store_extra_(store_extra), dim_(dim), access_method_(
                                                                             ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:24:9: warning: field 'maximum_index' will be initialized after field 'mutex' [-Wreorder]
        maximum_index(-1), mutex(mutex), gng_dim(dim), first_free(-1), nodes(0), dist_fnc(
        ^
gng/gng_server.cpp:125:11: note: in instantiation of member function 'gmum::RAMGNGGraph<GNGNode, GNGEdge, tthread::recursive_mutex>::RAMGNGGraph' requested here
                                                new RAMGNGGraph<GNGNode, GNGEdge>(&grow_mutex,
                                                    ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:24:42: warning: field 'gng_dim' will be initialized after field 'first_free' [-Wreorder]
        maximum_index(-1), mutex(mutex), gng_dim(dim), first_free(-1), nodes(0), dist_fnc(
                                         ^
../inst/include/gng/gng_graph.hpp:24:72: warning: field 'nodes' will be initialized after field 'dist_fnc' [-Wreorder]
        maximum_index(-1), mutex(mutex), gng_dim(dim), first_free(-1), nodes(0), dist_fnc(
                                                                       ^
In file included from gng/gng_server.cpp:6:
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
12 warnings generated.
ccache clang -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include   -fPIC  -Wall -g -O2  -c svmlight/svm_common.c -o svmlight/svm_common.o
ccache clang -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include   -fPIC  -Wall -g -O2  -c svmlight/svm_hideo.c -o svmlight/svm_hideo.o
ccache clang -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include   -fPIC  -Wall -g -O2  -c svmlight/svm_learn.c -o svmlight/svm_learn.o
svmlight/svm_learn.c:2800:24: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
      if((unlabeled[i] == 2)) {
          ~~~~~~~~~~~~~^~~~
svmlight/svm_learn.c:2800:24: note: remove extraneous parentheses around the comparison to silence this warning
      if((unlabeled[i] == 2)) {
         ~             ^   ~
svmlight/svm_learn.c:2800:24: note: use '=' to turn this equality comparison into an assignment
      if((unlabeled[i] == 2)) {
                       ^~
                       =
svmlight/svm_learn.c:2806:29: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
      else if((unlabeled[i] == 3)) {
               ~~~~~~~~~~~~~^~~~
svmlight/svm_learn.c:2806:29: note: remove extraneous parentheses around the comparison to silence this warning
      else if((unlabeled[i] == 3)) {
              ~             ^   ~
svmlight/svm_learn.c:2806:29: note: use '=' to turn this equality comparison into an assignment
      else if((unlabeled[i] == 3)) {
                            ^~
                            =
2 warnings generated.
ccache clang++ -Qunused-arguments -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o gmum.r.so svm/libsvm_runner.o svm/svm_client.o svm/svmlight_runner.o svm/svm_wrapper_module.o svm/two_e_svm_pre.o svm/svm_basic.o svm/svm.o svm/svm_utils.o svm/two_e_svm_post.o svm/validator_runner.o cec/assignment.o cec/cec.o cec/centroids_assignment.o cec/cluster_custom_function.o cec/kmeanspp_assignment.o cec/cec_configuration.o cec/cec_module.o cec/cluster.o cec/hartigan.o cec/random_assignment.o utils/threading.o utils/tinythread.o utils/utils.o gng/gng_algorithm.o gng/gng_configuration.o gng/gng_module.o gng/gng_server.o svmlight/svm_common.o svmlight/svm_hideo.o svmlight/svm_learn.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -fopenmp -L/usr/local/lib -F/Library/Frameworks/R.framework/.. -framework R -lpcre -llzma -lbz2 -lz -licucore -lm -liconv -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
clang: error: unsupported option '-fopenmp'
make: *** [gmum.r.so] Error 1
ERROR: compilation failed for package ‘gmum.r’
* removing ‘/Users/hadley/Documents/web/httr/revdep/checks/gmum.r/new/gmum.r.Rcheck/gmum.r’

```
### CRAN

```
* installing *source* package ‘gmum.r’ ...
** package ‘gmum.r’ successfully unpacked and MD5 sums checked
** libs
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/libsvm_runner.cpp -o svm/libsvm_runner.o
In file included from svm/libsvm_runner.cpp:18:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
svm/libsvm_runner.cpp:397:9: warning: unused variable 'print_func' [-Wunused-variable]
        void (*print_func)(const char*) = NULL; // default printing to stdout
               ^
In file included from svm/libsvm_runner.cpp:18:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm_client.cpp -o svm/svm_client.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svmlight_runner.cpp -o svm/svmlight_runner.o
In file included from svm/svmlight_runner.cpp:20:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
svm/svmlight_runner.cpp:915:9: warning: variable 'll' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    if (!use_gmumr) {
        ^~~~~~~~~~
svm/svmlight_runner.cpp:924:5: note: uninitialized use occurs here
    ll+=2;
    ^~
svm/svmlight_runner.cpp:915:5: note: remove the 'if' if its condition is always true
    if (!use_gmumr) {
    ^~~~~~~~~~~~~~~~
svm/svmlight_runner.cpp:907:27: note: initialize the variable 'll' to silence this warning
    long max_words_doc, ll;
                          ^
                           = 0
In file included from svm/svmlight_runner.cpp:20:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm_wrapper_module.cpp -o svm/svm_wrapper_module.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/two_e_svm_pre.cpp -o svm/two_e_svm_pre.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm_basic.cpp -o svm/svm_basic.o
In file included from svm/svm_basic.cpp:3:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
svm/svm_basic.cpp:7:49: warning: field 'nSV' will be initialized after field 'libsvm_class_weights' [-Wreorder]
SVMConfiguration::SVMConfiguration(): label(0), nSV(0),  libsvm_class_weights(0) {
                                                ^
In file included from svm/svm_basic.cpp:3:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm.cpp -o svm/svm.o
In file included from svm/svm.cpp:15:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
svm/svm.cpp:2706:24: warning: unused variable 'sv_coef' [-Wunused-variable]
        const double * const *sv_coef = model->sv_coef;
                              ^
In file included from svm/svm.cpp:15:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/svm_utils.cpp -o svm/svm_utils.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/two_e_svm_post.cpp -o svm/two_e_svm_post.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c svm/validator_runner.cpp -o svm/validator_runner.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/assignment.cpp -o cec/assignment.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cec.cpp -o cec/cec.o
In file included from cec/cec.cpp:2:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
cec/cec.cpp:10:9: warning: 'M_E' macro redefined [-Wmacro-redefined]
#define M_E 2.71828182845904523536
        ^
/usr/include/math.h:698:9: note: previous definition is here
#define M_E         2.71828182845904523536028747135266250   /* e              */
        ^
cec/cec.cpp:11:9: warning: 'M_PI' macro redefined [-Wmacro-redefined]
#define M_PI 3.14159265358979323846
        ^
/usr/include/math.h:703:9: note: previous definition is here
#define M_PI        3.14159265358979323846264338327950288   /* pi             */
        ^
In file included from cec/cec.cpp:2:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
7 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/centroids_assignment.cpp -o cec/centroids_assignment.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cluster_custom_function.cpp -o cec/cluster_custom_function.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/kmeanspp_assignment.cpp -o cec/kmeanspp_assignment.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cec_configuration.cpp -o cec/cec_configuration.o
In file included from cec/cec_configuration.cpp:8:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from cec/cec_configuration.cpp:8:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
5 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cec_module.cpp -o cec/cec_module.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/cluster.cpp -o cec/cluster.o
cec/cluster.cpp:5:9: warning: 'M_E' macro redefined [-Wmacro-redefined]
#define M_E 2.71828182845904523536
        ^
/usr/include/math.h:698:9: note: previous definition is here
#define M_E         2.71828182845904523536028747135266250   /* e              */
        ^
cec/cluster.cpp:6:9: warning: 'M_PI' macro redefined [-Wmacro-redefined]
#define M_PI 3.14159265358979323846
        ^
/usr/include/math.h:703:9: note: previous definition is here
#define M_PI        3.14159265358979323846264338327950288   /* pi             */
        ^
2 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/hartigan.cpp -o cec/hartigan.o
In file included from cec/hartigan.cpp:3:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from cec/hartigan.cpp:3:
In file included from ../inst/include/cec/hartigan.hpp:11:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
5 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c cec/random_assignment.cpp -o cec/random_assignment.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c utils/threading.cpp -o utils/threading.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c utils/tinythread.cpp -o utils/tinythread.o
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c utils/utils.cpp -o utils/utils.o
In file included from utils/utils.cpp:4:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from utils/utils.cpp:4:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
5 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c gng/gng_algorithm.cpp -o gng/gng_algorithm.o
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:14:
../inst/include/gng/gng_lazy_error_heap.h:67:4: warning: field 'm_buffer_size' will be initialized after base 'super' (aka 'Heap<gmum::ErrorNode>') [-Wreorder]
                        m_buffer_size(0), super() {
                        ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:15:
In file included from ../inst/include/gng/uniform_grid.h:173:
../inst/include/gng/uniform_grid.hpp:215:6: warning: unused variable 'size' [-Wunused-variable]
        int size = SIZE(m_grid);
            ^
gng/gng_algorithm.cpp:85:12: warning: field 'g_db' will be initialized after field 'c' [-Wreorder]
                m_g(*g), g_db(db), c(0), s(0), m_max_nodes(max_nodes), m_max_age(
                         ^
gng/gng_algorithm.cpp:85:22: warning: field 'c' will be initialized after field 's' [-Wreorder]
                m_g(*g), g_db(db), c(0), s(0), m_max_nodes(max_nodes), m_max_age(
                                   ^
gng/gng_algorithm.cpp:85:28: warning: field 's' will be initialized after field 'm_max_nodes' [-Wreorder]
                m_g(*g), g_db(db), c(0), s(0), m_max_nodes(max_nodes), m_max_age(
                                         ^
gng/gng_algorithm.cpp:85:34: warning: field 'm_max_nodes' will be initialized after field 'm_max_age' [-Wreorder]
                m_g(*g), g_db(db), c(0), s(0), m_max_nodes(max_nodes), m_max_age(
                                               ^
gng/gng_algorithm.cpp:86:31: warning: field 'm_betha' will be initialized after field 'm_lambda' [-Wreorder]
                                max_age), m_alpha(alpha), m_betha(betha), m_lambda(lambda), m_eps_w(
                                                          ^
gng/gng_algorithm.cpp:88:11: warning: field 'errorHeap' will be initialized after field 'dim' [-Wreorder]
                                1.5), errorHeap(), dim(dim), m_toggle_uniformgrid(
                                      ^
gng/gng_algorithm.cpp:88:24: warning: field 'dim' will be initialized after field 'm_toggle_uniformgrid' [-Wreorder]
                                1.5), errorHeap(), dim(dim), m_toggle_uniformgrid(
                                                   ^
gng/gng_algorithm.cpp:90:30: warning: field 'm_utility_option' will be initialized after field 'm_mean_error' [-Wreorder]
                                lazyheap_optimization),  m_utility_option(
                                                         ^
gng/gng_algorithm.cpp:91:42: warning: field 'm_utility_k' will be initialized after field 'max_iter' [-Wreorder]
                                utility_option), m_mean_error(1000), m_utility_k(utility_k), 
                                                                     ^
gng/gng_algorithm.cpp:92:37: warning: field 'm_logger' will be initialized after field 'm_iteration' [-Wreorder]
                max_iter(max_iter), m_logger(
                                    ^
gng/gng_algorithm.cpp:374:7: warning: unused variable 'BYPASS' [-Wunused-variable]
        bool BYPASS = false;
             ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:15:
In file included from ../inst/include/gng/uniform_grid.h:173:
../inst/include/gng/uniform_grid.hpp:350:18: warning: field 'gng_dim' will be initialized after field 'm_density_threshold' [-Wreorder]
                m_dist_fnc(0), gng_dim(gng_dim), m_density_threshold(
                               ^
gng/gng_algorithm.cpp:103:12: note: in instantiation of member function 'gmum::UniformGrid<std::__1::vector<std::__1::list<int, std::__1::allocator<int> >, std::__1::allocator<std::__1::list<int, std::__1::allocator<int> > > >, std::__1::list<int, std::__1::allocator<int> >, int>::UniformGrid' requested here
                ug = new UniformGrid<std::vector<Node>, Node, int>(boundingbox_origin,
                         ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: 'static' function '__double_rnd' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static double __double_rnd(double min, double max) {
              ^
In file included from gng/gng_algorithm.cpp:13:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:511:20: warning: unused function 'writeToGraphML' [-Wunused-function]
static std::string writeToGraphML(GNGGraph &g, string filename) {
                   ^
20 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c gng/gng_configuration.cpp -o gng/gng_configuration.o
In file included from gng/gng_configuration.cpp:1:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from gng/gng_configuration.cpp:1:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: unused function '__double_rnd' [-Wunused-function]
static double __double_rnd(double min, double max) {
              ^
In file included from gng/gng_configuration.cpp:1:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:511:20: warning: unused function 'writeToGraphML' [-Wunused-function]
static std::string writeToGraphML(GNGGraph &g, string filename) {
                   ^
6 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c gng/gng_module.cpp -o gng/gng_module.o
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
../inst/include/gng/gng_configuration.h:22:1: warning: 'GNGConfiguration' defined as a struct here but previously declared as a class [-Wmismatched-tags]
struct GNGConfiguration {
^
gng/gng_module.cpp:13:1: note: did you mean struct here?
RCPP_EXPOSED_CLASS(GNGConfiguration)
^
/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include/Rcpp/macros/module.h:70:3: note: expanded from macro 'RCPP_EXPOSED_CLASS'
  class CLASS;                    \
  ^
gng/gng_module.cpp:10:1: note: did you mean struct here?
class GNGConfiguration;
^~~~~
struct
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:14:
../inst/include/gng/gng_lazy_error_heap.h:67:4: warning: field 'm_buffer_size' will be initialized after base 'super' (aka 'Heap<gmum::ErrorNode>') [-Wreorder]
                        m_buffer_size(0), super() {
                        ^
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:15:
In file included from ../inst/include/gng/uniform_grid.h:173:
../inst/include/gng/uniform_grid.hpp:215:6: warning: unused variable 'size' [-Wunused-variable]
        int size = SIZE(m_grid);
            ^
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:17:
../inst/include/utils/utils.h:107:12: warning: unused function '__seed' [-Wunused-function]
static int __seed(int seed) {
           ^
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:131:15: warning: 'static' function '__double_rnd' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static double __double_rnd(double min, double max) {
              ^
In file included from gng/gng_module.cpp:18:
In file included from ../inst/include/gng/gng.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:511:20: warning: unused function 'writeToGraphML' [-Wunused-function]
static std::string writeToGraphML(GNGGraph &g, string filename) {
                   ^
9 warnings generated.
ccache clang++ -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include  --std=c++0x -fPIC  -Wall -g -O2  -c gng/gng_server.cpp -o gng/gng_server.o
In file included from gng/gng_server.cpp:6:
../inst/include/utils/utils.h:51:9: warning: 'DBG' macro redefined [-Wmacro-redefined]
#define DBG(verbosity, level, text)
        ^
../inst/include/utils/logger.h:29:13: note: previous definition is here
    #define DBG(logger, level, text)
            ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:14:
../inst/include/gng/gng_lazy_error_heap.h:67:4: warning: field 'm_buffer_size' will be initialized after base 'super' (aka 'Heap<gmum::ErrorNode>') [-Wreorder]
                        m_buffer_size(0), super() {
                        ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:15:
In file included from ../inst/include/gng/uniform_grid.h:173:
../inst/include/gng/uniform_grid.hpp:215:6: warning: unused variable 'size' [-Wunused-variable]
        int size = SIZE(m_grid);
            ^
gng/gng_server.cpp:405:9: warning: unused variable 'max' [-Wunused-variable]
                float max = arma::max(diff), min = arma::min(diff);
                      ^
gng/gng_server.cpp:405:32: warning: unused variable 'min' [-Wunused-variable]
                float max = arma::max(diff), min = arma::min(diff);
                                             ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
../inst/include/gng/gng_dataset.h:94:19: warning: field 'store_extra_' will be initialized after field 'dim_' [-Wreorder]
                        mutex_(mutex), store_extra_(store_extra), dim_(dim), access_method_(
                                       ^
gng/gng_server.cpp:88:9: note: in instantiation of member function 'gmum::GNGDatasetSimple<double>::GNGDatasetSimple' requested here
                                new GNGDatasetSimple<double>(&database_mutex,
                                    ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
../inst/include/gng/gng_dataset.h:94:57: warning: field 'access_method_' will be initialized after field 'current_example_' [-Wreorder]
                        mutex_(mutex), store_extra_(store_extra), dim_(dim), access_method_(
                                                                             ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:24:9: warning: field 'maximum_index' will be initialized after field 'mutex' [-Wreorder]
        maximum_index(-1), mutex(mutex), gng_dim(dim), first_free(-1), nodes(0), dist_fnc(
        ^
gng/gng_server.cpp:125:11: note: in instantiation of member function 'gmum::RAMGNGGraph<GNGNode, GNGEdge, tthread::recursive_mutex>::RAMGNGGraph' requested here
                                                new RAMGNGGraph<GNGNode, GNGEdge>(&grow_mutex,
                                                    ^
In file included from gng/gng_server.cpp:8:
In file included from ../inst/include/gng/gng_server.h:11:
In file included from ../inst/include/gng/gng_algorithm.h:12:
In file included from ../inst/include/gng/gng_dataset.h:15:
In file included from ../inst/include/gng/gng_configuration.h:18:
In file included from ../inst/include/gng/gng_graph.h:163:
../inst/include/gng/gng_graph.hpp:24:42: warning: field 'gng_dim' will be initialized after field 'first_free' [-Wreorder]
        maximum_index(-1), mutex(mutex), gng_dim(dim), first_free(-1), nodes(0), dist_fnc(
                                         ^
../inst/include/gng/gng_graph.hpp:24:72: warning: field 'nodes' will be initialized after field 'dist_fnc' [-Wreorder]
        maximum_index(-1), mutex(mutex), gng_dim(dim), first_free(-1), nodes(0), dist_fnc(
                                                                       ^
In file included from gng/gng_server.cpp:6:
../inst/include/utils/utils.h:123:12: warning: unused function '__rnd' [-Wunused-function]
static int __rnd(int min, int max) {
           ^
../inst/include/utils/utils.h:127:12: warning: unused function '__int_rnd' [-Wunused-function]
static int __int_rnd(int min, int max) {
           ^
12 warnings generated.
ccache clang -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include   -fPIC  -Wall -g -O2  -c svmlight/svm_common.c -o svmlight/svm_common.o
ccache clang -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include   -fPIC  -Wall -g -O2  -c svmlight/svm_hideo.c -o svmlight/svm_hideo.o
ccache clang -Qunused-arguments  -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -DNDEBUG_GMUM -DRCPP_INTERFACE -DARMA_64BIT_WORD -DBOOST_DISABLE_ASSERTS  -I ../inst/include/svmlight -I ../inst/include/utils -I ../inst/include  -I ../inst/include/cec -I ../inst/include/gng -I ../inst/include/svm -pthread -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/Rcpp/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/RcppArmadillo/include" -I"/Users/hadley/Documents/web/httr/revdep/library/gmum.r/BH/include" -I/usr/local/include   -fPIC  -Wall -g -O2  -c svmlight/svm_learn.c -o svmlight/svm_learn.o
svmlight/svm_learn.c:2800:24: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
      if((unlabeled[i] == 2)) {
          ~~~~~~~~~~~~~^~~~
svmlight/svm_learn.c:2800:24: note: remove extraneous parentheses around the comparison to silence this warning
      if((unlabeled[i] == 2)) {
         ~             ^   ~
svmlight/svm_learn.c:2800:24: note: use '=' to turn this equality comparison into an assignment
      if((unlabeled[i] == 2)) {
                       ^~
                       =
svmlight/svm_learn.c:2806:29: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
      else if((unlabeled[i] == 3)) {
               ~~~~~~~~~~~~~^~~~
svmlight/svm_learn.c:2806:29: note: remove extraneous parentheses around the comparison to silence this warning
      else if((unlabeled[i] == 3)) {
              ~             ^   ~
svmlight/svm_learn.c:2806:29: note: use '=' to turn this equality comparison into an assignment
      else if((unlabeled[i] == 3)) {
                            ^~
                            =
2 warnings generated.
ccache clang++ -Qunused-arguments -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o gmum.r.so svm/libsvm_runner.o svm/svm_client.o svm/svmlight_runner.o svm/svm_wrapper_module.o svm/two_e_svm_pre.o svm/svm_basic.o svm/svm.o svm/svm_utils.o svm/two_e_svm_post.o svm/validator_runner.o cec/assignment.o cec/cec.o cec/centroids_assignment.o cec/cluster_custom_function.o cec/kmeanspp_assignment.o cec/cec_configuration.o cec/cec_module.o cec/cluster.o cec/hartigan.o cec/random_assignment.o utils/threading.o utils/tinythread.o utils/utils.o gng/gng_algorithm.o gng/gng_configuration.o gng/gng_module.o gng/gng_server.o svmlight/svm_common.o svmlight/svm_hideo.o svmlight/svm_learn.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -fopenmp -L/usr/local/lib -F/Library/Frameworks/R.framework/.. -framework R -lpcre -llzma -lbz2 -lz -licucore -lm -liconv -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
clang: error: unsupported option '-fopenmp'
make: *** [gmum.r.so] Error 1
ERROR: compilation failed for package ‘gmum.r’
* removing ‘/Users/hadley/Documents/web/httr/revdep/checks/gmum.r/old/gmum.r.Rcheck/gmum.r’

```
# googleAuthR

Version: 0.5.1

## Newly broken

*   R CMD check timed out
    

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

# googleCloudStorageR

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 36 SKIPPED: 0 FAILED: 36
      1. Error: We can login (@test.R#11) 
      2. Error: We can list buckets (@test.R#25) 
      3. Error: We can get a bucket (@test.R#32) 
      4. Error: We can create a bucket (@test.R#41) 
      5. Error: We can upload to the new bucket (@test.R#50) 
      6. Error: We can delete upload to the new bucket (@test.R#59) 
      7. Error: We can make a bucket with lifecycle and versioning set (@test.R#72) 
      8. Error: We can upload a file (@test.R#92) 
      9. Error: We can upload a data.frame (@test.R#100) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# GoogleGenomics

Version: 1.8.0

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

# googlesheets

Version: 0.2.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(googlesheets)
      > 
      > if (identical(tolower(Sys.getenv("NOT_CRAN")), "true")) {
      +   test_check("googlesheets")
      + }
      Error: Cannot read token from alleged .rds file:
      googlesheets_token.rds
      testthat results ================================================================
      OK: 2 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 37-41 (basic-usage.Rmd) 
    Error: processing vignette 'basic-usage.Rmd' failed with diagnostics:
    Cannot read token from alleged .rds file:
    ../tests/testthat/googlesheets_token.rds
    Execution halted
    ```

# hansard

Version: 0.5.0

## In both

*   R CMD check timed out
    

# HIBPwned

Version: 0.1.6

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(HIBPwned)
      > 
      > test_check("HIBPwned")
      1. Failure: account_breaches works for a single account (@test-account_breaches.R#14) 
      ncol(res[[acct]]) is not strictly more than 1. Difference: 0
      
      
      testthat results ================================================================
      OK: 128 SKIPPED: 0 FAILED: 1
      1. Failure: account_breaches works for a single account (@test-account_breaches.R#14) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ratelimitr’
      All declared Imports should be used.
    ```

# highcharter

Version: 0.5.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘highcharter-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: hcboxplot
    > ### Title: Shortcut to make a boxplot
    > ### Aliases: hcboxplot
    > 
    > ### ** Examples
    > 
    > hcboxplot(x = iris$Sepal.Length, var = iris$Species, color = "red")
    Error in mutate_impl(.data, dots) : 
      Column `data` must be length 1 (the group size), not 5
    Calls: hcboxplot ... transmute.default -> mutate -> mutate.tbl_df -> mutate_impl -> .Call
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.4Mb
      sub-directories of 1Mb or more:
        doc          13.7Mb
        htmlwidgets   1.8Mb
    ```

# httpcache

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘jsonlite’
      All declared Imports should be used.
    ```

# httping

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      7: withVisible(function_list[[k]](value))
      8: function_list[[k]](value)
      9: ping(., config = timeout(1))
      10: verb(as.url(url)[[1]], ...)
      11: request_perform(req, hu$handle$handle)
      12: request_fetch(req$output, req$url, handle)
      13: request_fetch.write_memory(req$output, req$url, handle)
      14: curl::curl_fetch_memory(url, handle = handle)
      
      testthat results ================================================================
      OK: 42 SKIPPED: 0 FAILED: 1
      1. Error: ping works (@test-ping.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# influxdbr

Version: 0.12.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 10
      1.  Error: connection (@test_query.R#12) 
      2.  Error: single query no chunking (@test_query.R#24) 
      3.  Error: multiple query no chunking (@test_query.R#65) 
      4.  Error: single query with chunking (@test_query.R#84) 
      5.  Error: multiple query with chunking (@test_query.R#101) 
      6.  Error: multiple query with chunking and xts result (@test_query.R#118) 
      7.  Error: connection (@test_schema_exploration.R#12) 
      8.  Error: show commands (@test_schema_exploration.R#25) 
      9.  Error: connection (@test_write.R#12) 
      10. Error: write xts with NA (@test_write.R#34) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# internetarchive

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(internetarchive)
      > 
      > test_check("internetarchive")
      1. Failure: ia_metadata() returns a data frame (@test-files-download.R#32) -----
      `meta` not equal to reference from `hecker_meta.rds`.
      Different number of rows
      
      
      testthat results ================================================================
      OK: 21 SKIPPED: 0 FAILED: 1
      1. Failure: ia_metadata() returns a data frame (@test-files-download.R#32) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# issueReporter

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test.R’ failed.
    Last 13 lines of output:
      output file: tint.knit.md
      
      /usr/local/bin/pandoc +RTS -K512m -RTS tint.utf8.md --to latex --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash --output /private/tmp/RtmpPKB4JY/ir15cf16eff5012.pdf --template /Users/hadley/Documents/web/httr/revdep/library/issueReporter/tint/rmarkdown/templates/pdf/resources/tintPdf-template.tex --highlight-style pygments --latex-engine /Library/TeX/texbin/pdflatex --variable 'documentclass:tufte-handout' 
      ! Undefined control sequence.
      \maketitle ...p \thispagestyle {plain}\tuftebreak 
                                                        \@afterindentfalse \@after...
      l.206 \maketitle
      
      pandoc: Error producing PDF from TeX source
      Error: pandoc document conversion failed with error 43
      In addition: Warning message:
      In block_exec(params) : failed to tidy R code in chunk <setup>
      reason: Error in loadNamespace(name) : there is no package called 'formatR'
      
      Execution halted
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

# junr

Version: 0.1.1

## In both

*   R CMD check timed out
    

# KEGGREST

Version: 1.16.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘BiocGenerics:::testPackage’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .get.tmp.url: no visible global function definition for ‘download.file’
    Undefined global functions or variables:
      download.file
    Consider adding
      importFrom("utils", "download.file")
    to your NAMESPACE file.
    ```

# kokudosuuchi

Version: 0.2.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 47 marked UTF-8 strings
    ```

# Luminescence

Version: 0.7.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Content type 'application/octet-stream' length 3014 bytes
      ==================================================
      downloaded 3014 bytes
      
      
      [read_BIN2R()]
      	 >> /tmp/RtmpgXkobK/read_BIN2R_FILE47da3724a26b
      	 >> 2 records have been read successfully!
      
      testthat results ================================================================
      OK: 488 SKIPPED: 0 FAILED: 1
      1. Error: Full check of analyse_baSAR function (@test_analyse_baSAR.R#19) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# markmyassignment

Version: 0.6.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# metavizr

Version: 1.0.2

## In both

*   R CMD check timed out
    

# miRLAB

Version: 1.6.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    Validation: no visible global function definition for ‘read.csv’
    ValidationT: no visible global function definition for ‘read.csv’
    Zscore: no visible global function definition for ‘read.csv’
    Zscore: no visible global function definition for ‘median’
    convert: no visible global function definition for ‘read.csv’
    convert: no visible global function definition for ‘write.table’
    readHeader: no visible global function definition for ‘read.csv’
    urlReadTable: no visible global function definition for ‘read.table’
    Undefined global functions or variables:
      boxplot cancor cor cov data dev.off median new p.adjust par phyper
      png read.csv read.table rnorm write.csv write.table
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "boxplot", "par")
      importFrom("methods", "new")
      importFrom("stats", "cancor", "cor", "cov", "median", "p.adjust",
                 "phyper", "rnorm")
      importFrom("utils", "data", "read.csv", "read.table", "write.csv",
                 "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# mnis

Version: 0.2.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat-a.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(mnis)
      > 
      > test_check("mnis", filter= "a")
      1. Failure: mnis_additional returns expected format (@test_additional.R#80) ----
      `xi` has length 338, not length 285.
      
      
      testthat results ================================================================
      OK: 98 SKIPPED: 0 FAILED: 1
      1. Failure: mnis_additional returns expected format (@test_additional.R#80) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# MODIStsp

Version: 1.3.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gWidgetsRGtk2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# monkeylearn

Version: 0.1.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             out$push(condition)
             invokeRestart("muffleMessage")
         })
      4: monkeylearn_extract(request = c("  ", "I do not know what the horse is doing in the house"))
      5: monkeylearn_check(output)
      6: stop("HTTP failure: ", req$status_code, "\n", content(req)$detail, call. = FALSE)
      
      testthat results ================================================================
      OK: 4 SKIPPED: 0 FAILED: 3
      1. Error: monkeylearn_parse returns a data.frame with a data.frame as attribute (@test_output.R#7) 
      2. Error: No error if no results from the extractor call (@test_output.R#55) 
      3. Error: Blank texts are handled properly (@test_text_size.R#10) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# mregions

Version: 0.1.4

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      Loading required package: mregions
      1. Error: mr_names works for fao data source (@test-mr_names.R#22) -------------
      Region not found or no results found, try another search
      1: mr_names("MarineRegions:fao") at testthat/test-mr_names.R:22
      2: getter("http://geo.vliz.be/geoserver/MarineRegions/wfs", args, format = "text/xml; subtype=gml/3.2", 
             ...)
      3: err_handle(tt, format)
      4: stop("Region not found or no results found, try another search", call. = FALSE)
      
      testthat results ================================================================
      OK: 53 SKIPPED: 0 FAILED: 1
      1. Error: mr_names works for fao data source (@test-mr_names.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘leaflet’
    ```

# mscstexta4r

Version: 0.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > # quick notes:
      > #   put all your tests in tests/testthat folder
      > #   each test file should start with test and end in .R
      > #   since we use secret API keys, don't run the tests on CRAN
      > 
      > library("testthat")
      > 
      > if (identical(tolower(Sys.getenv("NOT_CRAN")), "true")) {
      +   library("mscstexta4r")
      +   test_check("mscstexta4r")
      + }
      Error: mscstexta4r: could not load config info from Sys env nor from file
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

# mscsweblm4r

Version: 0.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > # quick notes:
      > #   put all your tests in tests/testthat folder
      > #   each test file should start with test and end in .R
      > #   since we use secret API keys, don't run the tests on CRAN
      > 
      > library("testthat")
      > 
      > if (identical(tolower(Sys.getenv("NOT_CRAN")), "true")) {
      +   library("mscsweblm4r")
      +   test_check("mscsweblm4r")
      + }
      Error: mscsweblm4r: could not load config info from Sys env nor from file
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

# mygene

Version: 1.12.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    package 'methods' is used but not declared
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    .df2DF: no visible binding for global variable ‘as’
    .unnest.df : <anonymous>: no visible global function definition for
      ‘is’
    .unnest.df : <anonymous>: no visible global function definition for
      ‘setNames’
    MyGene: no visible global function definition for ‘new’
    index.tx.id: no visible global function definition for
      ‘installed.packages’
    validMyGeneObject: no visible global function definition for ‘slot’
    .request.get,MyGene: no visible global function definition for
      ‘capture.output’
    .request.post,MyGene: no visible global function definition for
      ‘capture.output’
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

Version: 1.6.0

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
    .getIndels: no visible binding for global variable ‘ALT’
    .unnest.df : <anonymous>: no visible global function definition for
      ‘is’
    .unnest.df : <anonymous>: no visible global function definition for
      ‘setNames’
    MyVariant: no visible global function definition for ‘new’
    formatHgvs: no visible global function definition for
      ‘seqlevelsStyle<-’
    validMyVariantObject: no visible global function definition for ‘slot’
    .request.get,MyVariant: no visible global function definition for
      ‘capture.output’
    .request.post,MyVariant: no visible global function definition for
      ‘capture.output’
    Undefined global functions or variables:
      ALT REF as capture.output is new seqlevelsStyle<- setNames slot
    Consider adding
      importFrom("methods", "as", "is", "new", "slot")
      importFrom("stats", "setNames")
      importFrom("utils", "capture.output")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
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

# opencage

Version: 0.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: `_f`(placename = placename, key = key, bounds = bounds, countrycode = countrycode, 
             language = language, limit = limit, min_confidence = min_confidence, no_annotations = no_annotations, 
             no_dedupe = no_dedupe, no_record = no_record, abbrv = abbrv)
      4: opencage_check(temp)
      5: stop("HTTP failure: ", req$status_code, "\n", message, call. = FALSE)
      
      testthat results ================================================================
      OK: 23 SKIPPED: 0 FAILED: 4
      1. Error: opencage_parse returns what it should for both functions (@test-opencage_parse.R#6) 
      2. Error: opencage_parse returns what it should for both functions with several parameters (@test-opencage_parse.R#40) 
      3. Error: opencage_parse deals well with resuls being NULL (@test-opencage_parse.R#72) 
      4. Error: the bounds argument is well taken into account (@test-opencage_parse.R#86) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 41-47 (opencage.Rmd) 
    Error: processing vignette 'opencage.Rmd' failed with diagnostics:
    HTTP failure: 403
    Invalid or missing api key (forbidden)
    Execution halted
    ```

# openwindfarm

Version: 0.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 22-24 (openwindfarm-vignette.Rmd) 
    Error: processing vignette 'openwindfarm-vignette.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

# osmdata

Version: 0.0.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 148 SKIPPED: 0 FAILED: 20
      1. Failure: sfc-point (@test-sf-construction.R#80) 
      2. Failure: sf-point (@test-sf-construction.R#85) 
      3. Failure: multiple-points (@test-sf-construction.R#106) 
      4. Failure: sfc-line (@test-sf-construction.R#134) 
      5. Failure: sfc-multiple-lines (@test-sf-construction.R#157) 
      6. Failure: sf-multiple-lines-with-fields (@test-sf-construction.R#177) 
      7. Failure: sf-multiple-lines-with-fields (@test-sf-construction.R#184) 
      8. Failure: sfc-polygon (@test-sf-construction.R#202) 
      9. Failure: sfc-multiple-polygons (@test-sf-construction.R#228) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# osmplotr

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc   5.9Mb
    ```

# packrat

Version: 0.4.8-1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 47 SKIPPED: 1 FAILED: 11
      1. Error: Bundle works when using R's internal tar (@test-bundle.R#14) 
      2. Error: Bundle works when omitting CRAN packages (@test-bundle.R#36) 
      3. Error: init creates project structure and installs dependencies (@test-packrat.R#19) 
      4. Error: restore ignores dirty packages (@test-packrat.R#35) 
      5. Error: restore installs missing packages (@test-packrat.R#48) 
      6. Error: snapshot captures new dependencies (@test-packrat.R#62) 
      7. Error: dependencies in library directories are ignored (@test-packrat.R#89) 
      8. Error: clean removes libraries and sources (@test-packrat.R#103) 
      9. Error: init works with multiple repos (@test-packrat.R#133) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘BiocInstaller’
    ```

# pangaear

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      > library("testthat")
      > test_check("pangaear")
      Loading required package: pangaear
      1. Failure: fails well (@test-oai_functions.R#72) ------------------------------
      error$message does not match "Invalid datestamp".
      Actual value: "OAI-PMH errors: badArgument: from/until invalid: Text '3' could not be parsed at index 0"
      
      
      testthat results ================================================================
      OK: 72 SKIPPED: 0 FAILED: 1
      1. Failure: fails well (@test-oai_functions.R#72) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# parlitools

Version: 0.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Downloading MP data
    Downloading constituency data
    Warning: Column `party_id` joining character vector and factor, coercing into character vector
    Connecting to API
    Retrieving page 1 of 2
    Retrieving page 2 of 2
    Connecting to API
    Retrieving page 1 of 2
    Retrieving page 2 of 2
    pandoc: Could not fetch /Users/hadley/Documents/web/httr/revdep/library/parlitools/leaflet/htmlwidgets/lib/leaflet/#default#VML
    /Users/hadley/Documents/web/httr/revdep/library/parlitools/leaflet/htmlwidgets/lib/leaflet/: openBinaryFile: inappropriate type (is a directory)
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 7 marked UTF-8 strings
    ```

# paxtoolsr

Version: 1.10.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 30.8Mb
      sub-directories of 1Mb or more:
        extdata   5.6Mb
        java     24.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘jsonlite’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    downloadFile: no visible global function definition for ‘URLencode’
    downloadFile: no visible global function definition for ‘read.table’
    downloadFile: no visible global function definition for ‘write.table’
    downloadPc2: no visible global function definition for ‘select.list’
    downloadSignedPC: no visible global function definition for
      ‘read.table’
    getPcRequest: no visible global function definition for ‘URLencode’
    readSifnx: no visible global function definition for ‘read.table’
    splitSifnxByPathway: no visible global function definition for
      ‘txtProgressBar’
    splitSifnxByPathway: no visible global function definition for
      ‘%dopar%’
    splitSifnxByPathway: no visible global function definition for
      ‘setTxtProgressBar’
    Undefined global functions or variables:
      %dopar% URLencode read.table select.list setTxtProgressBar
      txtProgressBar write.table
    Consider adding
      importFrom("utils", "URLencode", "read.table", "select.list",
                 "setTxtProgressBar", "txtProgressBar", "write.table")
    to your NAMESPACE file.
    ```

# prettymapr

Version: 0.2.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      |                                                    |  0%                      
      |========                                            |16.66667% ~0 s remaining  
      |=================                                   |33.33333% ~0 s remaining  
      |==========================                          | 50% ~0 s remaining       
      |==================================                  |66.66667% ~0 s remaining  
      |===========================================         |83.33333% ~0 s remaining  
      |====================================================|100% ~0 s remaining       
      |====================================================|100%                      Completed after 0 s 
      testthat results ================================================================
      OK: 115 SKIPPED: 0 FAILED: 2
      1. Error: invalid pickpoint API key results in correct error message (@test_geocode.R#90) 
      2. Error: non 200 status codes throw warning when quiet = FALSE (@test_geocode.R#125) 
      
      Error: testthat unit tests failed
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

# PSICQUIC

Version: 1.14.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      
      Attaching package: 'plyr'
      
      The following object is masked from 'package:IRanges':
      
          desc
      
      The following object is masked from 'package:S4Vectors':
      
          rename
      
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘httr’ ‘plyr’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .loadRegistry: no visible global function definition for ‘DataFrame’
    .loadRegistry : <anonymous>: no visible global function definition for
      ‘str’
    .retrieveData: no visible global function definition for ‘read.table’
    .retrieveData : <anonymous>: no visible global function definition for
      ‘str’
    .translate.uniprotkb: no visible binding for global variable ‘id’
    detectionMethods: no visible global function definition for ‘browseURL’
    interactionTypes: no visible global function definition for ‘browseURL’
    speciesIDs: no visible global function definition for ‘browseURL’
    Undefined global functions or variables:
      DataFrame browseURL id read.table str
    Consider adding
      importFrom("utils", "browseURL", "read.table", "str")
    to your NAMESPACE file.
    ```

# pvsR

Version: 0.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    CandidateBio.getBio : <anonymous>: no visible global function
      definition for ‘na.omit’
    Committee.getCommittee : <anonymous>: no visible global function
      definition for ‘na.omit’
    getAllBios: no visible global function definition for ‘txtProgressBar’
    getAllBios: no visible global function definition for
      ‘setTxtProgressBar’
    getAllLocalOfficials: no visible global function definition for
      ‘txtProgressBar’
    getAllLocalOfficials: no visible global function definition for
      ‘setTxtProgressBar’
    getAllVotes: no visible global function definition for ‘txtProgressBar’
    getAllVotes: no visible global function definition for
      ‘setTxtProgressBar’
    Undefined global functions or variables:
      na.omit setTxtProgressBar txtProgressBar
    Consider adding
      importFrom("stats", "na.omit")
      importFrom("utils", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# pxweb

Version: 0.6.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      Use update_pxweb_apis() to update the api catalogue.
      > test_check("pxweb")
      1. Failure: baseURL 1 (@test-get_pxweb_metadata.R#23) --------------------------
      dim(test_file) not equivalent to test$test_dims.
      1/2 mismatches
      [1] 17 - 16 == 1
      
      
      testthat results ================================================================
      OK: 121 SKIPPED: 10 FAILED: 1
      1. Failure: baseURL 1 (@test-get_pxweb_metadata.R#23) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# qiitr

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 18 SKIPPED: 0 FAILED: 12
      1. Error: qiita_get_comments with comment id works (@test-qiita_get_comments.R#5) 
      2. Error: qiita_get_comments with item id works (@test-qiita_get_comments.R#12) 
      3. Error: qiita_get_items by tag ID (@test-qiita_get_items.R#6) 
      4. Error: qiita_get_items by item ID (@test-qiita_get_items.R#12) 
      5. Error: qiita_get_items by item ID (@test-qiita_get_items.R#19) 
      6. Error: qiita_get_tags with tag ID (@test-qiita_get_tags.R#5) 
      7. Error: qiita_get_tags with multiple tag IDs (@test-qiita_get_tags.R#12) 
      8. Error: qiita_get_tags with user ID (@test-qiita_get_tags.R#19) 
      9. Error: qiita_is_following_tag works. (@test-qiita_get_tags.R#25) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RCy3

Version: 1.6.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘copyCytoscapeNetwork’ ‘renameCytoscapeNetwork’ ‘selectAllEdges’
      ‘selectAllNodes’
    Undocumented S4 methods:
      generic 'copyCytoscapeNetwork' and siglist 'CytoscapeWindowClass'
      generic 'renameCytoscapeNetwork' and siglist 'CytoscapeWindowClass'
      generic 'selectAllEdges' and siglist 'CytoscapeWindowClass'
      generic 'selectAllNodes' and siglist 'CytoscapeWindowClass'
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .BBSOverride: no visible global function definition for ‘as’
    is.classic.graph: no visible global function definition for ‘is’
    is.multiGraph: no visible global function definition for ‘is’
    Undefined global functions or variables:
      as is
    Consider adding
      importFrom("methods", "as", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# rDGIdb

Version: 1.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Querying DGIDB...done!
      Querying DGIDB...done!
      Querying DGIDB...done!
      1. Failure: Query DGIdb works (@test.queryDGIdb.R#22) --------------------------
      nrow(result@resultSummary) not equal to 17.
      1/1 mismatches
      [1] 68 - 17 == 51
      
      
      testthat results ================================================================
      OK: 14 SKIPPED: 0 FAILED: 1
      1. Failure: Query DGIdb works (@test.queryDGIdb.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RDota2

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 19 SKIPPED: 0 FAILED: 28
      1. Failure: function fails if no key has been set (@test_get_event_stats_for_account.R#17) 
      2. Error: function fails if no key has been set (@test_get_event_stats_for_account.R#24) 
      3. Failure: function fails if no key has been set (@test_get_game_items.R#15) 
      4. Error: function fails if no key has been set (@test_get_game_items.R#20) 
      5. Failure: function get heroes works properly (@test_get_heroes.R#16) 
      6. Error: function get heroes works properly (@test_get_heroes.R#21) 
      7. Failure: function get_league_listing works properly (@test_get_league_listing.R#15) 
      8. Error: function get_league_listing works properly (@test_get_league_listing.R#20) 
      9. Failure: function get_live_league_games works properly (@test_get_live_league_games.R#15) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 54-61 (RDota2.Rmd) 
    Error: processing vignette 'RDota2.Rmd' failed with diagnostics:
    The function cannot find an API key. Please register a key by using the RDota2::key_actions function. If you do not have a key you can obtain one by visiting https://steamcommunity.com/dev.
    Execution halted
    ```

# rdpla

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 5 SKIPPED: 0 FAILED: 24
      1. Error: dpla_collections basic functionality works (@test-dpla_collections.R#6) 
      2. Error: dpla_items - pagination works (@test-dpla_collections.R#20) 
      3. Error: dpla_items - fields requests work (@test-dpla_collections.R#35) 
      4. Failure: dpla_items fails well (@test-dpla_collections.R#46) 
      5. Failure: dpla_items fails well (@test-dpla_collections.R#49) 
      6. Error: dpla_collections_ basic functionality works (@test-dpla_collections_.R#6) 
      7. Error: dpla_items - pagination works (@test-dpla_collections_.R#22) 
      8. Error: dpla_items - fields requests work (@test-dpla_collections_.R#37) 
      9. Failure: dpla_items fails well (@test-dpla_collections_.R#48) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rdryad

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      any(grepl("dryad", bb$identifier)) isn't true.
      
      
      testthat results ================================================================
      OK: 64 SKIPPED: 0 FAILED: 7
      1. Error: download_url basic functionality works (@test-download_url.R#6) 
      2. Failure: dr_get_records works (@test-dr_get_records.R#13) 
      3. Failure: dr_get_records works (@test-dr_get_records.R#14) 
      4. Failure: dr_get_records works (@test-dr_get_records.R#16) 
      5. Failure: dr_get_records works (@test-dr_get_records.R#18) 
      6. Failure: dr_get_records works (@test-dr_get_records.R#19) 
      7. Failure: dr_get_records works (@test-dr_get_records.R#21) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# readtext

Version: 0.50

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked Latin-1 string
      Note: found 1 marked UTF-8 string
      Note: found 7 strings marked as "bytes"
    ```

# redcapAPI

Version: 1.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      definition for ‘read.csv’
    exportUsers.redcapApiConnection: no visible global function definition
      for ‘read.csv’
    importRecords.redcapApiConnection : <anonymous>: no visible global
      function definition for ‘capture.output’
    importRecords.redcapApiConnection : <anonymous>: no visible global
      function definition for ‘write.table’
    importRecords.redcapApiConnection: no visible global function
      definition for ‘capture.output’
    importRecords.redcapApiConnection: no visible global function
      definition for ‘write.table’
    validateImport : printLog: no visible global function definition for
      ‘write.table’
    validateImport: no visible binding for global variable ‘tail’
    validateImport: no visible binding for global variable ‘head’
    Undefined global functions or variables:
      capture.output head read.csv tail write.table
    Consider adding
      importFrom("utils", "capture.output", "head", "read.csv", "tail",
                 "write.table")
    to your NAMESPACE file.
    ```

# REDCapR

Version: 0.9.8

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      5: withCallingHandlers(code, message = function(condition) {
             out$push(condition)
             invokeRestart("muffleMessage")
         })
      6: redcap_download_file_oneshot(file_name = full_name, record = record, field = field, 
             redcap_uri = start_clean_result$redcap_project$redcap_uri, token = start_clean_result$redcap_project$token)
      
      testthat results ================================================================
      OK: 553 SKIPPED: 0 FAILED: 3
      1. Failure: NameComesFromREDCap (@test-file-oneshot.R#15) 
      2. Error: NameComesFromREDCap (@test-file-oneshot.R#30) 
      3. Error: FullPathSpecified (@test-file-oneshot.R#81) 
      
      Error: testthat unit tests failed
      Execution halted
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

# rerddap

Version: 0.4.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      
      
      testthat results ================================================================
      OK: 123 SKIPPED: 0 FAILED: 8
      1. Failure: ed_search_adv fails well (@test-ed_search_adv.R#58) 
      2. Failure: ed_search_adv fails well (@test-ed_search_adv.R#59) 
      3. Failure: info fails well (@test-info.R#48) 
      4. Failure: tabledap fields parameter works, and fails correctly (@test-tabledap.R#27) 
      5. Failure: tabledap units parameter works, and fails correctly (@test-tabledap.R#38) 
      6. Failure: tabledap fails well, in addition to above failure tests (@test-tabledap.R#47) 
      7. Failure: tabledap fails well, in addition to above failure tests (@test-tabledap.R#48) 
      8. Failure: tabledap fails well, in addition to above failure tests (@test-tabledap.R#50) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘taxize’
    ```

# rfigshare

Version: 0.3.7

## In both

*   checking R code for possible problems ... NOTE
    ```
    fs_author_ids : <anonymous>: no visible global function definition for
      ‘select.list’
    fs_download : <anonymous>: no visible global function definition for
      ‘download.file’
    Undefined global functions or variables:
      download.file select.list
    Consider adding
      importFrom("utils", "download.file", "select.list")
    to your NAMESPACE file.
    ```

# rfishbase

Version: 2.1.2

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 44 marked UTF-8 strings
    ```

# rfml

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2. Error: MarkLogic database can be cleand up (@test-00-config.R#10) 
      3. Error: Statistics field based methods (@test-method-statistics.R#5) 
      4. Error: Statistics ml.data.frame based methods (@test-method-statistics.R#24) 
      5. Error: ml.arules works (@test-ml.arules.R#5) 
      6. Error: ml.col.def methods (@test-ml.col.def.R#5) 
      7. Error: can create and delete a ml.data.frame based on iris dataset using json format (@test-ml.data.frame.R#5) 
      8. Error: can create and delete a ml.data.frame based on iris dataset using xml format (@test-ml.data.frame.R#15) 
      9. Error: can create a ml.data.frame based on search (@test-ml.data.frame.R#25) 
      1. ...
      
      Error: testthat unit tests failed
      In addition: Warning message:
      In UseMethod("unique") :
        closing unused connection 3 (/Users/hadley/Documents/web/httr/revdep/checks/rfml/new/rfml.Rcheck/rfml/lib/rfmlUtilities.sjs)
      Execution halted
    ```

# RGoogleAnalytics

Version: 0.1.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# rHealthDataGov

Version: 1.0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    .quick_fetch: no visible global function definition for ‘POST’
    .quick_fetch: no visible global function definition for ‘add_headers’
    .quick_fetch: no visible global function definition for
      ‘stop_for_status’
    .quick_fetch: no visible global function definition for ‘content’
    fetch_healthdata: no visible binding for global variable ‘resources’
    fetch_healthdata : <anonymous>: no visible binding for global variable
      ‘filters’
    Undefined global functions or variables:
      POST add_headers content filters resources stop_for_status
    ```

# ritis

Version: 0.5.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: publications(tsn = "Asdfasdfa") at testthat/test-publications.R:41
      2: itis_GET("getPublicationsFromTSN", list(tsn = tsn), wt, ...)
      3: httr::stop_for_status(tt)
      
      testthat results ================================================================
      OK: 126 SKIPPED: 0 FAILED: 6
      1. Failure: hierarchy_down basic functionality works (@test-hierarchy.R#11) 
      2. Failure: hierarchy_down basic functionality works (@test-hierarchy.R#12) 
      3. Error: hierarchy functions fail well (@test-hierarchy.R#47) 
      4. Error: jurisdiction functions fail well (@test-jurisdiction.R#46) 
      5. Error: kingdom functions fail well (@test-kingdoms.R#38) 
      6. Error: publications fails well (@test-publications.R#41) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rnaturalearth

Version: 0.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rnaturalearthhires’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 7 marked Latin-1 strings
    ```

# RNeXML

Version: 2.0.7

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘rrdf’ ‘Sxslt’
    ```

# rnoaa

Version: 0.7.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 163 SKIPPED: 1 FAILED: 10
      1.  Error: check_response returns an error (@test-check_response.r#7) 
      2.  Error: check_response returns the correct error messages (@test-check_response.r#26) 
      3.  Error: homr works (@test-homr.R#9) 
      4.  Error: ncdc returns the correct ... (@test-ncdc.r#8) 
      5.  Error: ncdc_datacats returns the correct ... (@test-ncdc_datacats.r#7) 
      6.  Error: ncdc_datasets returns the correct class (@test-ncdc_datasets.r#7) 
      7.  Error: ncdc_datatypes returns the correct class (@test-ncdc_datatypes.r#7) 
      8.  Error: ncdc_locs returns the correct class (@test-ncdc_locs.r#7) 
      9.  Error: ncdc_locs_cats returns the correct ... (@test-ncdc_locs_cats.r#7) 
      10. Error: ncdc_stations returns the correct... (@test-ncdc_stations.r#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rnpn

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      bb$latitude inherits from `numeric` not `character`.
      
      
      testthat results ================================================================
      OK: 20 SKIPPED: 0 FAILED: 7
      1. Failure: npn_indsatstations works well (@test-npn_indsatstations.R#9) 
      2. Failure: npn_indspatstations works well (@test-npn_indspatstations.R#9) 
      3. Error: npn_obsspbyday works well (@test-npn_obsspbyday.R#6) 
      4. Error: when no match, returns empty data.frame (@test-npn_obsspbyday.R#20) 
      5. Failure: npn_stationsbystate works well (@test-npn_stationsbystate.R#11) 
      6. Failure: npn_stationswithspp works well (@test-npn_stationswithspp.R#10) 
      7. Failure: npn_stationswithspp works well (@test-npn_stationswithspp.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rols

Version: 2.4.0

## In both

*   R CMD check timed out
    

# rorcid

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      grepl("G", bb) isn't true.
      
      
      2. Failure: orcid fails well (@test-orcid.R#60) --------------------------------
      error$message does not match "500 - For input string: \"adsf\"".
      Actual value: "400 - The start parameter for API users without credentials must be an integer between 0 and 10,000"
      
      
      testthat results ================================================================
      OK: 100 SKIPPED: 0 FAILED: 2
      1. Failure: identifiers works with output from orcid() call (@test-identifiers.R#51) 
      2. Failure: orcid fails well (@test-orcid.R#60) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rotl

Version: 3.0.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 444 SKIPPED: 0 FAILED: 16
      1. Failure: correct data is being returned when asked to lookup by taxon name (@test-match_names.R#123) 
      2. Failure: correct data is being returned when asked to lookup by ott_id (@test-match_names.R#129) 
      3. Failure: correct data is being returned when asked to lookup by row number (@test-match_names.R#135) 
      4. Failure: correct data is being returned when asked to lookup by taxon name (with missing data) (@test-match_names.R#143) 
      5. Failure: correct data is being returned when asked to lookup by ott_id (with missing data) (@test-match_names.R#150) 
      6. Failure: correct data is being returned when asked to lookup by row number (with missing data) (@test-match_names.R#156) 
      7. Error: correct synonyms are being returned when asked to look up by ott id (@test-match_names.R#210) 
      8. Error: correct synonyms are being returned when asked to look up by ott id (@test-match_names.R#245) 
      9. Failure: flags with no arguments (@test-match_names.R#333) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rplos

Version: 0.6.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: searchplos(q = "*:*", fl = "id", fq = "cross_published_journal_key:PLoSONE", start = 0, 
             limit = 15) at testthat/test-searchplos.R:8
      2: check_response(tt)
      3: stop(sprintf("(%s) - %s", x$status_code, jsonlite::fromJSON(utf8cont(x), FALSE)$error$msg), 
             call. = FALSE)
      
      testthat results ================================================================
      OK: 224 SKIPPED: 0 FAILED: 4
      1. Error: journalnamekey returns the correct value (@test-journalnamekey.R#7) 
      2. Error: journalnamekey returns the correct class (@test-journalnamekey.R#13) 
      3. Error: journalnamekey returns the correct length vector (@test-journalnamekey.R#19) 
      4. Error: searchplos returns the correct (@test-searchplos.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘tm’
    ```

# RSauceLabs

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 38 SKIPPED: 0 FAILED: 26
      1. Failure: canGetRealTimeJobActivity (@test-acc_usage_methods_tests.R#6) 
      2. Failure: canGetUserActivity (@test-acc_usage_methods_tests.R#11) 
      3. Error: canGetAccountUsage (@test-acc_usage_methods_tests.R#17) 
      4. Failure: canGetUser (@test-account_methods_tests.R#9) 
      5. Failure: checkCanCreateSubAccount (@test-account_methods_tests.R#26) 
      6. Failure: canGetUserConcurrency (@test-account_methods_tests.R#33) 
      7. Failure: canGetSubUserConcurrency (@test-account_methods_tests.R#39) 
      8. Failure: canGetSubUserConcurrency (@test-account_methods_tests.R#40) 
      9. Failure: canGetListOfSubAccounts (@test-account_methods_tests.R#46) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RSelenium

Version: 1.7.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(RSelenium)
      > 
      > if(Sys.getenv("NOT_CRAN") == "true"){
      +   test_check("RSelenium")
      + }
      Error in checkError(res) : 
        Undefined error in httr call. httr output: Failed to connect to localhost port 4444: Connection refused
      Calls: test_check ... eval -> initFun -> <Anonymous> -> queryRD -> checkError
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch https://dl.dropboxusercontent.com/u/38391057/RSelenium/basics/RProject.png
    StatusCodeException (Status {statusCode = 404, statusMessage = "Not Found"}) [("Server","nginx"),("Date","Wed, 09 Aug 2017 00:29:42 GMT"),("Content-Type","text/html"),("Transfer-Encoding","chunked"),("Connection","keep-alive"),("Vary","Accept-Encoding"),("X-Dropbox-Request-Id","67d38be3572980502eb5e7b1818a9609"),("X-Robots-Tag","noindex, nofollow, noimageindex"),("Content-Encoding","gzip"),("X-Response-Body-Start","<!DOCTYPE html>\n<html>\n<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n<title>Dropbox - 404</title>\n<link href=\"https://cfl.dropboxstatic.com/static/css/error.css\" rel=\"stylesheet\" type=\"text/css\"/>\n<link rel=\"shortcut icon\" href=\"https://cfl.dropboxstatic.com/static/images/favicon.ico\"/>\n\n</head>\n<body>\n<div class=\"figure\">\n<img src=\"https://cfl.dropboxstatic.com/static/images/publicfoldersunset.svg\" alt=\"Error: 404\"/>\n</div>\n<div id=\"errorbox\">\n<div class=\"public-folder-404\"> <h1 class=\"error_message\">File not found</h1> <br> <div class=\"message_body\"> Sorry, that file doesn&rsquo;t live here anymore. It might have been moved or made private. </div> <br> <a class=\"c-btn c-btn--primary public-folder-link\" href=\"https://www.dropbox.com\">Learn about Dropbox</a> </div>\n</div>\n<section class=\"footer-row\"><footer id=\"homepage-footer\" class=\"twelve-column dropbox-footer clearfix\"><nav><ul class=\"o-nav\"><li class=\"o-nav__header\">Dropbox</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/install\">Desktop app</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/mobile\">Mobile apps</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/plans?trigger=homepagefoot\">Plans</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/security\">Security</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Company</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/about\">About us</a></li><li class=\"o-nav__item\"><a href=\"https://bit.ly/dbxdotcomapps\">Jobs</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/news\">Press</a></li><li class=\"o-nav__item\"><a href=\"https://blogs.dropbox.com/dropbox\">Blog</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Support</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/help\">Help Center</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/contact\">Contact us</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/terms/cookies\">Cookies</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/privacy\">Privacy &amp; terms</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Community</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/developers\">Developers</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/referrals\">Referrals</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropboxforum.com\">Forum</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Connect</li><li class=\"o-nav__item\"><a href=\"https://twitter.com/dropbox\">Twitter</a></li><li class=\"o-nav__item\"><a href=\"https://www.facebook.com/Dropbox\">Facebook</a></li><li class=\"o-nav__item\"><a href=\"https://plus.google.com/+Dropbox/posts\">Google+</a></li><li class=\"o-nav__item\"><a href=\"https://www.youtube.com/user/dropbox\">YouTube</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Products</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/pro\">Plus</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/business\">Business</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/enterprise\">Enterprise</a></li></ul></nav><div class=\"react-locale-selector-wrapper\"><div id=\"component1937679262106323703\"><div class=\"react-stub\"></div></div></div></footer></section>\n</body>\n</html>\n"),("X-Request-URL","GET https://dl.dropboxusercontent.com:443/u/38391057/RSelenium/basics/RProject.png")] (CJ {expose = []})
    Error: processing vignette 'RSelenium-basics.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

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

# RSiteCatalyst

Version: 1.4.13

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat-build.R’ failed.
    Last 13 lines of output:
      1: SCAuth(Sys.getenv("USER", ""), Sys.getenv("SECRET", "")) at testthat/test-buildclassificationvaluesegment.R:6
      2: stop("Authentication failed due to errors")
      
      2. Error: Validate BuildRealTimeReportStructure using legacy credentials (@test-buildrealtimereportstructure.R#6) 
      Authentication failed due to errors
      1: SCAuth(Sys.getenv("USER", ""), Sys.getenv("SECRET", "")) at testthat/test-buildrealtimereportstructure.R:6
      2: stop("Authentication failed due to errors")
      
      testthat results ================================================================
      OK: 4 SKIPPED: 0 FAILED: 2
      1. Error: Validate BuildClassificationValueSegment using legacy credentials (@test-buildclassificationvaluesegment.R#6) 
      2. Error: Validate BuildRealTimeReportStructure using legacy credentials (@test-buildrealtimereportstructure.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rsnps

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      3: withCallingHandlers(code, warning = function(condition) {
             out$push(condition)
             invokeRestart("muffleWarning")
         })
      4: ld_search(c("rs2836443", "rs121909001"), quiet = TRUE)
      5: split_to_df(tmp, sep = "\t", fixed = TRUE)
      6: stop("non-equal lengths for each entry of x post-splitting")
      
      testthat results ================================================================
      OK: 53 SKIPPED: 0 FAILED: 2
      1. Error: ld_search returns the correct data (@test-LDSearch.R#6) 
      2. Error: ld_search fails well - one bad snp + other good ones (@test-LDSearch.R#31) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RSocrata

Version: 1.7.3-2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      
      2. Failure: add a row to a dataset (@test-all.R#488) ---------------------------
      y value not equal to as.numeric(df_out_last_row$y).
      1/1 mismatches
      [1] 527 - -354 == 881
      
      
      testthat results ================================================================
      OK: 155 SKIPPED: 0 FAILED: 2
      1. Failure: add a row to a dataset (@test-all.R#487) 
      2. Failure: add a row to a dataset (@test-all.R#488) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rsunlight

Version: 0.4.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 8 SKIPPED: 0 FAILED: 30
      1. Error: returns the correct (@test-amendments.R#6) 
      2. Error: vectorizing works (@test-amendments.R#29) 
      3. Error: paging works (@test-amendments.R#37) 
      4. Error: fails well (@test-amendments.R#47) 
      5. Error: cg_bills returns the correct (@test-cg_bills.R#6) 
      6. Error: cg_bills vectorizing works (@test-cg_bills.R#25) 
      7. Error: cg_bills pagination works (@test-cg_bills.R#35) 
      8. Failure: cg_bills curl options work (@test-cg_bills.R#44) 
      9. Failure: cg_bills fails well (@test-cg_bills.R#50) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘ggplot2’
    ```

# rtimes

Version: 0.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      6: Filter(Negate(is.null), x)
      7: unlist(lapply(x, f))
      8: lapply(x, f)
      9: check_key(key)
      10: stop("need an API key for ", y, call. = FALSE)
      
      testthat results ================================================================
      OK: 2 SKIPPED: 0 FAILED: 4
      1. Error: returns the correct stuff (@test-as_search.R#8) 
      2. Error: returns the correct stuff (@test-geo_search.R#8) 
      3. Failure: fails well (@test-geo_search.R#48) 
      4. Error: fails well (@test-geo_search.R#50) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rtweet

Version: 0.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Error: system_token functions (@test_tokens.R#6) ----------------------------
      Not a valid access token.
      1: search_tweets("a OR b OR c OR d OR e", max_id = NULL, type = "recent", include_rts = TRUE) at testthat/test_tokens.R:6
      2: check_token(token, "search/tweets")
      3: fetch_tokens(token, query)
      4: rate_limit(token = tokens, query)
      5: check_token(token, query = NULL)
      6: stop("Not a valid access token.", call. = FALSE)
      
      testthat results ================================================================
      OK: 123 SKIPPED: 0 FAILED: 1
      1. Error: system_token functions (@test_tokens.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rvertnet

Version: 0.5.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 95 SKIPPED: 0 FAILED: 10
      1.  Failure: searchbyterm works correctly (@test-searchbyterm.R#15) 
      2.  Failure: searchbyterm works correctly (@test-searchbyterm.R#20) 
      3.  Failure: searchbyterm works correctly (@test-searchbyterm.R#26) 
      4.  Failure: searchbyterm works correctly (@test-searchbyterm.R#29) 
      5.  Failure: searchbyterm - state param works when using boolean's with > 1 state name (@test-searchbyterm.R#49) 
      6.  Failure: searchbyterm multi-year param input works (@test-searchbyterm.R#78) 
      7.  Failure: searchbyterm multi-year param input works (@test-searchbyterm.R#79) 
      8.  Failure: spatialsearch works correctly (@test-spatialsearch.R#13) 
      9.  Failure: vert_id works (@test-vert_id.R#12) 
      10. Failure: vert_id works (@test-vert_id.R#28) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rWBclimate

Version: 0.1.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    check_ISO_code: no visible binding for global variable ‘NoAm_country’
    check_ISO_code: no visible binding for global variable ‘SoAm_country’
    check_ISO_code: no visible binding for global variable ‘Oceana_country’
    check_ISO_code: no visible binding for global variable ‘Africa_country’
    check_ISO_code: no visible binding for global variable ‘Asia_country’
    check_ISO_code: no visible binding for global variable ‘Eur_country’
    climate_map: no visible binding for global variable ‘data’
    date_correct: no visible global function definition for ‘tail’
    Undefined global functions or variables:
      Africa_country Asia_country Eur_country NoAm_country Oceana_country
      SoAm_country data tail
    Consider adding
      importFrom("utils", "data", "tail")
    to your NAMESPACE file.
    ```

# seleniumPipes

Version: 0.3.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      The following objects are masked from 'package:testthat':
      
          equals, is_less_than, not
      
      Loading required package: whisker
      > if(Sys.getenv("NOT_CRAN") == "true"){
      +   test_check("seleniumPipes")
      + }
      Error in curl::curl_fetch_memory(url, handle = handle) : 
        Failed to connect to localhost port 4444: Connection refused
      Calls: test_check ... request_fetch -> request_fetch.write_memory -> <Anonymous> -> .Call
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

# sergeant

Version: 0.5.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: httr::POST(sprintf("%s/query.json", drill_server), encode = "json", body = list(queryType = "SQL", 
             query = query))
      3: request_perform(req, hu$handle$handle)
      4: request_fetch(req$output, req$url, handle)
      5: request_fetch.write_memory(req$output, req$url, handle)
      6: curl::curl_fetch_memory(url, handle = handle)
      
      testthat results ================================================================
      OK: 1 SKIPPED: 0 FAILED: 3
      1. Error: Core dbplyr ops work (@test-sergeant.R#12) 
      2. Failure: REST API works (@test-sergeant.R#25) 
      3. Error: REST API works (@test-sergeant.R#27) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# SigOptR

Version: 0.0.1

## In both

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
    > ### Name: create_experiment
    > ### Title: Create an experiment
    > ### Aliases: create_experiment
    > 
    > ### ** Examples
    > 
    > env <- Sys.getenv("NOT_CRAN")
    > if (!identical(env, "true")) {
    + 0
    + } else {
    + create_experiment(list(
    +   name="R test experiment",
    +   parameters=list(
    +     list(name="x1", type="double", bounds=list(min=0, max=100)),
    +     list(name="x2", type="double", bounds=list(min=0, max=100))
    +   )
    + ))}
    Error: Please set env var SIGOPT_API_TOKEN to your SigOpt API token
    Execution halted
    ```

# smapr

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 8 SKIPPED: 0 FAILED: 18
      1. Error: invalid output directories cause errors (@test-download_smap.R#5) 
      2. Error: non-existent directories are created (@test-download_smap.R#11) 
      3. Error: the downloaded data is of the data frame class (@test-download_smap.R#21) 
      4. Error: Two SPL4CMDL data files are downloaded (h5 and xml) (@test-download_smap.R#28) 
      5. Error: setting overwrite = FALSE prevents data from being overwritten (@test-download_smap.R#50) 
      6. Error: setting overwrite = TRUE ensures data overwrite (@test-download_smap.R#72) 
      7. Error: invalid datasets cause errors (@test-extract_smap.R#5) 
      8. Error: extract_smap produces a RasterStack (@test-extract_smap.R#14) 
      9. Error: -9999 is used fill value when a _FillValue doesn't exist (@test-extract_smap.R#24) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rgdal’ ‘utils’
      All declared Imports should be used.
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

# solrium

Version: 0.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      
      testthat results ================================================================
      OK: 196 SKIPPED: 0 FAILED: 9
      1. Error: core_create works (@test-core_create.R#6) 
      2. Error: ping works against (@test-ping.R#7) 
      3. Error: ping gives raw data correctly (@test-ping.R#20) 
      4. Error: ping fails well (@test-ping.R#31) 
      5. Error: schema works against (@test-schema.R#7) 
      6. Error: schema fails well (@test-schema.R#32) 
      7. Error: solr_connect to local Solr server works (@test-solr_connect.R#19) 
      8. Error: solr_connect works with a proxy (@test-solr_connect.R#33) 
      9. Error: solr_mlt works (@test-solr_mlt.r#9) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘XML’
    ```

# SpaDES

Version: 1.3.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      sh: subl -w: command not found
      sh: subl -w: command not found
      sh: subl -w: command not found
      sh: subl -w: command not found
      sh: subl -w: command not found
      sh: subl -w: command not found
      sh: subl -w: command not found
      testthat results ================================================================
      OK: 955 SKIPPED: 15 FAILED: 1
      1. Failure: downloadModule downloads and unzips a single module (@test-downloadModule.R#26) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      In fun(libname, pkgname) : couldn't connect to display ""
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘fastshp’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rstudioapi’
      All declared Imports should be used.
    ```

# sparklyr

Version: 0.6.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             }
             else {
                 msg <- core_read_spark_log_error(sc)
                 stop(msg, call. = FALSE)
             }
         })
      26: force(code)
      27: stop(msg, call. = FALSE)
      
      testthat results ================================================================
      OK: 357 SKIPPED: 2 FAILED: 1
      1. Error: 'spark_apply' works over empty partitions (@test-spark-apply.R#104) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# SpidermiR

Version: 1.6.3

## In both

*   R CMD check timed out
    

*   checking R code for possible problems ... NOTE
    ```
    .SpidermiRvisualize_gene: possible error in simpleNetwork(NetworkData,
      linkColour = "gray", textColour = "black", zoom = TRUE): unused
      argument (textColour = "black")
    SpidermiRvisualize_plot_target: no visible binding for global variable
      ‘miRNAs’
    SpidermiRvisualize_plot_target: no visible binding for global variable
      ‘mRNA_target’
    Undefined global functions or variables:
      mRNA_target miRNAs
    ```

# statsgrokse

Version: 0.1.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error in curl::curl_fetch_memory(url, handle = handle) : 
        Timeout was reached: Connection timed out after 10007 milliseconds
      4. Failure: normal usage (@test_usage.R#15) ------------------------------------
      all(dim(tmp) > 0) isn't true.
      
      
      testthat results ================================================================
      OK: 57 SKIPPED: 0 FAILED: 4
      1. Failure: normal usage (@test_usage.R#6) 
      2. Failure: normal usage (@test_usage.R#9) 
      3. Failure: normal usage (@test_usage.R#12) 
      4. Failure: normal usage (@test_usage.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# stplanr

Version: 0.1.9

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch /Users/hadley/Documents/web/httr/revdep/library/stplanr/leaflet/htmlwidgets/lib/leaflet/#default#VML
    /Users/hadley/Documents/web/httr/revdep/library/stplanr/leaflet/htmlwidgets/lib/leaflet/: openBinaryFile: inappropriate type (is a directory)
    Error: processing vignette 'introducing-stplanr.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

# taxize

Version: 0.8.9

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 643 SKIPPED: 0 FAILED: 10
      1.  Failure: col_search returns the correct value, dimensions, and classes (@test-bold_search.R#12) 
      2.  Failure: col_search returns the correct value, dimensions, and classes (@test-bold_search.R#15) 
      3.  Failure: col_search returns the correct value, dimensions, and classes (@test-bold_search.R#16) 
      4.  Failure: col_search returns the correct value, dimensions, and classes (@test-bold_search.R#17) 
      5.  Error: iucn_id returns the correct class (@test-iucn_id.R#7) 
      6.  Error: iucn_id fails well (@test-iucn_id.R#24) 
      7.  Error: iucn_summary returns the correct value (@test-iucn_summary.R#7) 
      8.  Error: iucn_summary gives expected result for lots of names (@test-iucn_summary.R#22) 
      9.  Error: iucn_summary and iucn_summary_id fail well (@test-iucn_summary.R#59) 
      10. Error: bold_ping returns the correct value (@test-ping.R#41) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# TCGAbiolinks

Version: 2.4.6

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 65.9Mb
      sub-directories of 1Mb or more:
        R      1.1Mb
        data   6.4Mb
        doc   58.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘limmamakeContrasts’
    TCGAanalyze_DEA_Affy: no visible global function definition for
      ‘limmacontrasts.fit’
    TCGAanalyze_analyseGRN: no visible global function definition for
      ‘knnmi.cross’
    TCGAanalyze_networkInference: no visible global function definition for
      ‘c3net’
    TCGAanalyze_networkInference: no visible global function definition for
      ‘minet’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dNetInduce’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dNetPipeline’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dCommSignif’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘visNet’
    TCGAvisualize_oncoprint: no visible binding for global variable ‘value’
    Undefined global functions or variables:
      c3net dCommSignif dNetInduce dNetPipeline knnmi.cross
      limmacontrasts.fit limmamakeContrasts minet portions value visNet
    ```

# threewords

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      5. Failure: Errors are correctly thrown (@test_threewords.R#43) ----------------
      from_position(...) did not throw an error.
      
      
      testthat results ================================================================
      OK: 10 SKIPPED: 0 FAILED: 5
      1. Failure: Individual word trios can be resolved to positions (@test_threewords.R#11) 
      2. Failure: Individual positions can be resolved to word trios (@test_threewords.R#19) 
      3. Failure: Multiple word trios can be resolved to positions (@test_threewords.R#29) 
      4. Failure: Multiple coordinate sets can be resolved to positions (@test_threewords.R#38) 
      5. Failure: Errors are correctly thrown (@test_threewords.R#43) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# tidyquant

Version: 0.5.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘broom’ ‘curl’ ‘devtools’ ‘rvest’ ‘timeSeries’ ‘tseries’ ‘zoo’
      All declared Imports should be used.
    ```

# TMDb

Version: 1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    search_collection: no visible global function definition for
      ‘URLencode’
    search_company: no visible global function definition for ‘URLencode’
    search_keyword: no visible global function definition for ‘URLencode’
    search_list: no visible global function definition for ‘URLencode’
    search_movie: no visible global function definition for ‘URLencode’
    search_multi: no visible global function definition for ‘URLencode’
    search_person: no visible global function definition for ‘URLencode’
    search_tv: no visible global function definition for ‘URLencode’
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
    Undefined global functions or variables:
      URLencode
    Consider adding
      importFrom("utils", "URLencode")
    to your NAMESPACE file.
    ```

# tuber

Version: 0.9.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      tests/testthat/test-url.r:79:22: style: Only use double-quotes.
         url <- modify_url('http://google.com?a=1', query = list(b = 2))
                           ^~~~~~~~~~~~~~~~~~~~~~~
      tests/testthat/test-url.r:85:27: warning: Do not use absolute paths.
        expect_equal(url$path, "/tmp/foobar")
                                ^~~~
      
      
      testthat results ================================================================
      OK: 4 SKIPPED: 0 FAILED: 1
      1. Failure: Package Style (@test-pkg-style.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# tumblR

Version: 1.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    http.connection: no visible global function definition for ‘setNames’
    Undefined global functions or variables:
      setNames
    Consider adding
      importFrom("stats", "setNames")
    to your NAMESPACE file.
    ```

# twilio

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3. Error: tw_send_message() can send messages (@test_tw_send_message.R#11) -----
      Please set environmental variable TWILIO_SID.
      1: tw_send_message("2127872000", "+15005550006", "Half a pound of whitefish salad please.") at testthat/test_tw_send_message.R:11
      2: paste("2010-04-01", "Accounts", get_sid(), "Messages.json", sep = "/")
      3: get_sid()
      4: stop("Please set environmental variable TWILIO_SID.", call. = FALSE)
      
      testthat results ================================================================
      OK: 4 SKIPPED: 0 FAILED: 3
      1. Error: tw_get_message_media() can retrieve a photo (@test_tw_get_message_media.R#6) 
      2. Error: Test that tw_get_messages_list() will retrieve messages (@test_tw_get_messages_list.R#6) 
      3. Error: tw_send_message() can send messages (@test_tw_send_message.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ungeneanno

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Loading required package: httr
      Loading required package: XML
      > 
      > test_check("ungeneanno")
      1. Failure: Gets from NCBI gene database (@test-NIHConnections.R#25) -----------
      `g` not equal to reference from `ncbi_test_gene.rds`.
      Attributes: < Component "nih_summary": 1 string mismatch >
      
      
      testthat results ================================================================
      OK: 19 SKIPPED: 0 FAILED: 1
      1. Failure: Gets from NCBI gene database (@test-NIHConnections.R#25) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# uptasticsearch

Version: 0.0.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: devtools::check at testthat/test-repo_characteristics.R:38
      2: getExportedValue(pkg, name)
      3: asNamespace(ns)
      4: getNamespace(ns)
      5: tryCatch(loadNamespace(name), error = function(e) stop(e))
      6: tryCatchList(expr, classes, parentenv, handlers)
      7: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      8: value[[3L]](cond)
      
      testthat results ================================================================
      OK: 226 SKIPPED: 0 FAILED: 1
      1. Error: R CMD check should not return any unexpected errors, warnings, or notes (@test-repo_characteristics.R#38) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# viridis

Version: 0.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Attaching package: 'raster'
    
    The following object is masked from 'package:colorspace':
    
        RGB
    
    Loading required package: lattice
    Loading required package: latticeExtra
    Loading required package: RColorBrewer
    
    Attaching package: 'latticeExtra'
    
    The following object is masked from 'package:ggplot2':
    
        layer
    
    Quitting from lines 204-213 (intro-to-viridis.Rmd) 
    Error: processing vignette 'intro-to-viridis.Rmd' failed with diagnostics:
    Cannot create RasterLayer object from this file; perhaps you need to install rgdal first
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# virustotal

Version: 0.2.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      tests/testthat/test-url.r:79:22: style: Only use double-quotes.
         url <- modify_url('http://google.com?a=1', query = list(b = 2))
                           ^~~~~~~~~~~~~~~~~~~~~~~
      tests/testthat/test-url.r:85:27: warning: Do not use absolute paths.
        expect_equal(url$path, "/tmp/foobar")
                                ^~~~
      
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 2
      1. Error: can decrypt secrets and data structures verified (@test-data-structures.R#16) 
      2. Failure: Package Style (@test-pkg-style.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# wbstats

Version: 0.1.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1371 marked UTF-8 strings
    ```

# WikidataR

Version: 1.3.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘WikidataR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_geo_entity
    > ### Title: Retrieve geographic information from Wikidata
    > ### Aliases: get_geo_entity
    > 
    > ### ** Examples
    > 
    > # All entities
    > sf_locations <- get_geo_entity("Q62")
    Error in sparql_query(query) : Internal Server Error (HTTP 500).
    Calls: get_geo_entity ... clean_geo -> do.call -> lapply -> sparql_query -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             wd_id <- gsub(x = item$item$value, pattern = "http://www.wikidata.org/entity/", 
                 replacement = "", fixed = TRUE)
             return(data.frame(item = wd_id, name = ifelse(item$name$value == wd_id, NA, item$name$value), 
                 latitutde = as.numeric(point[1]), longitude = as.numeric(point[2]), stringsAsFactors = FALSE))
         })
      5: sparql_query(query)
      6: httr::stop_for_status(result)
      
      testthat results ================================================================
      OK: 21 SKIPPED: 0 FAILED: 2
      1. Error: Simple entity-based geo lookups work (@test_geo.R#5) 
      2. Error: Language-variant entity-based geo lookups work (@test_geo.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

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

Version: 1.1.10

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2. Failure: setting cache file (@test_caching_gathering.R#39) ------------------
      all(dim(wp_get_cache()) > 0) isn't true.
      
      
      Error in curl::curl_fetch_memory(url, handle = handle) : 
        Timeout was reached: Connection timed out after 10005 milliseconds
      Error in curl::curl_fetch_memory(url, handle = handle) : 
        Timeout was reached: Connection timed out after 10006 milliseconds
      testthat results ================================================================
      OK: 66 SKIPPED: 0 FAILED: 2
      1. Failure: normal usage (@test_caching_gathering.R#27) 
      2. Failure: setting cache file (@test_caching_gathering.R#39) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Timeout was reached: Connection timed out after 10006 milliseconds
    http://stats.grok.se/json/en/201510/Main_page
    
    data from server was: Error in curl::curl_fetch_memory(url, handle = handle) : 
      Timeout was reached: Connection timed out after 10006 milliseconds
    
    
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Timeout was reached: Connection timed out after 10001 milliseconds
    http://stats.grok.se/json/en/201511/Main_page
    
    data from server was: Error in curl::curl_fetch_memory(url, handle = handle) : 
      Timeout was reached: Connection timed out after 10001 milliseconds
    
    
    Quitting from lines 108-112 (using-wikipediatrend.Rmd) 
    Error: processing vignette 'using-wikipediatrend.Rmd' failed with diagnostics:
    need finite 'xlim' values
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘AnomalyDetection’ ‘BreakoutDetection’
    ```

# xml2

Version: 1.1.1

## In both

*   checking compiled code ... NOTE
    ```
    File ‘xml2/libs/xml2.so’:
      Found non-API calls to R: ‘R_GetConnection’, ‘R_WriteConnection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# xtractomatic

Version: 3.3.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    date	lon	lat	lowLon	higLon	lowLat	higLat
    4/23/2003	203.899	19.664	203.899	203.899	19.664	19.664
    4/24/2003	204.151	19.821	203.912597	204.389403	18.78051934	20.86148066
    4/30/2003	203.919	20.351	203.6793669	204.1586331	18.79728188	21.90471812
    5/1/2003	204.229	20.305	203.9943343	204.4636657	18.90440013	21.70559987
    Quitting from lines 1044-1046 (Usingxtractomatic.Rmd) 
    Error: processing vignette 'Usingxtractomatic.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

