# GenomicDataCommons

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/GenomicDataCommons
* URL: https://bioconductor.org/packages/GenomicDataCommons, http://github.com/Bioconductor/GenomicDataCommons
* BugReports: https://github.com/Bioconductor/GenomicDataCommons/issues/new
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 103

Run `revdep_details(,"GenomicDataCommons")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > # get some example file uuids
    > uuids <- files() %>%
    +     filter(~ access == 'open' & file_size < 100000) %>%
    +     results(size = 3) %>%
    +     ids()
    > 
    > # and get the data, placing it into the gdc_cache() directory
    > fpaths <- gdcdata(uuids, use_cached=TRUE)
    Error in .gdc_file_rename(destfile, to, overwrite) : 
      failed to rename downloaded file:
    
      from: '/Users/hadley/Library/Caches/GenomicDataCommons/6ddb4f98-ed8c-41f2-bf2c-2cf2c29cabc6/.partial_download'
      to: '/Users/hadley/Library/Caches/GenomicDataCommons/6ddb4f98-ed8c-41f2-bf2c-2cf2c29cabc6/nationwidechildrens.org_biospecimen.TCGA-2G-AAHI.xml'
      reason:
        cannot rename file
        '/Users/hadley/Library/Caches/GenomicDataCommons/6ddb4f98-ed8c-41f2-bf2c-2cf2c29cabc6/.partial_download'
        to
        '/Users/hadley/Library/Caches/GenomicDataCommons/6ddb4f98-ed8c-41f2-bf2c-2cf2c29cabc6/nationwidechildrens.org_biospecimen.TCGA-2G-AAHI.xml',
        reason 'No such file or directory'
    Calls: gdcdata -> mapply -> <Anonymous> -> .gdc_file_rename
    Execution halted
    ```

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

# rhymer

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/rhymer
* URL: https://landesbergn.github.io/rhymer/index.html, http://github.com/landesbergn/rhymer
* BugReports: https://github.com/landesbergn/rhymer/issues
* Date/Publication: 2017-12-19 14:44:27 UTC
* Number of recursive dependencies: 31

Run `revdep_details(,"rhymer")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘rhymer-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_rhyme
    > ### Title: Get data for rhyming words.
    > ### Aliases: get_rhyme
    > 
    > ### ** Examples
    > 
    > get_rhyme("test")
    Error: API did not return json
    Execution halted
    ```

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [31m──[39m [31m1. Error: return_content returns correct type (@test_rhymer.R#88) [39m [31m──────────────────[39m
      API did not return json
      1: expect_is(get_content("words?rel_rhy=test", return_type = "rand"), "character") at testthat/test_rhymer.R:88
      2: quasi_label(enquo(object), label, arg = "object")
      3: eval_bare(get_expr(quo), get_env(quo))
      4: get_content("words?rel_rhy=test", return_type = "rand")
      5: datamuse_api(full_path, limit) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rhymer/old/rhymer.Rcheck/00_pkg_src/rhymer/R/rhymer.R:79
      6: stop("API did not return json", call. = FALSE) at /Users/hadley/Documents/r-lib/httr/revdep/checks.noindex/rhymer/old/rhymer.Rcheck/00_pkg_src/rhymer/R/rhymer.R:27
      
      ══ testthat results  ═══════════════════════════════════════════════════════════════════
      [ OK: 31 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: return_content returns correct type (@test_rhymer.R#88) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

