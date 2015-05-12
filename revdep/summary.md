# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.2.0 (2015-04-16) |
|system   |x86_64, darwin13.4.0         |
|ui       |RStudio (0.99.435)           |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |

## Packages

|package   |*  |version  |date       |source                           |
|:---------|:--|:--------|:----------|:--------------------------------|
|base64enc |   |0.1-2    |2014-06-26 |CRAN (R 3.2.0)                   |
|curl      |   |0.5.9001 |2015-05-12 |Github (jeroenooms/curl@0911193) |
|digest    |   |0.6.8    |2014-12-31 |CRAN (R 3.2.0)                   |
|httpuv    |   |1.3.2    |2014-10-23 |CRAN (R 3.2.0)                   |
|jpeg      |   |0.1-8    |2014-01-23 |CRAN (R 3.2.0)                   |
|jsonlite  |   |0.9.16   |2015-04-11 |CRAN (R 3.2.0)                   |
|knitr     |   |1.10.5   |2015-05-06 |CRAN (R 3.2.0)                   |
|mime      |   |0.3      |2015-03-29 |CRAN (R 3.2.0)                   |
|PKI       |   |0.1-1    |2013-02-20 |CRAN (R 3.2.0)                   |
|png       |   |0.1-7    |2013-12-03 |CRAN (R 3.2.0)                   |
|R6        |   |2.0.1    |2014-10-29 |CRAN (R 3.2.0)                   |
|stringr   |   |1.0.0    |2015-04-30 |CRAN (R 3.2.0)                   |
|testthat  |*  |0.9.1    |2014-10-01 |CRAN (R 3.2.0)                   |
|XML       |   |3.98-1.1 |2013-06-20 |CRAN (R 3.2.0)                   |

# Check results
98 checked out of 98 dependencies 

## aemo (0.1.0)
Maintainer: Imanuel Costigan <i.costigan@me.com>

__OK__

## alm (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/alm/issues

__OK__

## AntWeb (0.7)
Maintainer: 'Karthik Ram' <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/AntWeb/issues

__OK__

## archivist (1.3)
Maintainer: Przemyslaw Biecek <przemyslaw.biecek@gmail.com>  
Bug reports: https://github.com/pbiecek/archivist/issues

__OK__

## aRxiv (0.5.8)
Maintainer: Karl Broman <kbroman@biostat.wisc.edu>  
Bug reports: https://github.com/ropensci/aRxiv/issues

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library(testthat)
  > 
  > test_check("aRxiv")
  Loading required package: aRxiv
  arxiv_errors : ...
  arxiv_search in batches : 1
  cleaning the records : Error in arxiv_count(query) : arXiv error: incorrect id format for NA
  Calls: test_check ... all.equal.numeric -> attr.all.equal -> mode -> omit_attr -> arxiv_count
  Execution halted
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 66-68 (aRxiv.Rmd) 
Error: processing vignette 'aRxiv.Rmd' failed with diagnostics:
arXiv error: incorrect id format for NA
Execution halted

```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## atsd (1.0.8441)
Maintainer: Mikhail Zvagelsky <mikhail.zvagelsky@axibase.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘pander’
```
```
DONE
Status: 1 NOTE
```

## bigrquery (0.1.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>

```
checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘R6’
  All declared Imports should be used.
```
```
DONE
Status: 1 NOTE
```

## bold (0.2.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/bold/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘sangerseqR’
```
```
DONE
Status: 1 NOTE
```

## boxr (0.2.5)
Maintainer: Brendan Rocks <rocks.brendan@gmail.com>  
Bug reports: https://github.com/brendan-R/boxr/issues

__OK__

## chromer (0.1)
Maintainer: Matthew Pennell <mwpennell@gmail.com>  
Bug reports: http://www.github.com/ropensci/chromer/issues/new

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## couchDB (1.3.0)
Maintainer: Aleksander Dietrichson <sasha@xrrch.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## cranlogs (2.0.0)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/metacran/cranlogs/issues

__OK__

## crunch (1.1.1)
Maintainer: Neal Richardson <neal@crunch.io>  
Bug reports: https://github.com/Crunch-io/rcrunch/issues

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Variable grouping and order setting : ...................................S..
  Variable summaries : .........................
  Variable types : ...
  Variables : ..............................
  Weights : 
  
  
  1. Failure(@test-auth.R#15): getToken can retrieve a token ---------------------
  class(test.token) is not identical to "config". Differences: 
  1 string mismatch
  
  Error: Test failures
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## ddeploy (1.0.2)
Maintainer: Niall McGearailt <niall@dukeanalytics.com>

__OK__

## devtools (1.8.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: http://github.com/hadley/devtools/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘BiocInstaller’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘testthat’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
Found the following calls to attach():
File ‘devtools/R/package-env.r’:
  attach(NULL, name = pkg_env_name(pkg))
File ‘devtools/R/shims.r’:
  attach(e, name = "devtools_shims", warn.conflicts = FALSE)
See section ‘Good practice’ in ‘?attach’.
```
```
DONE
Status: 3 NOTEs
```

## ecoengine (1.9.1)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/ecoengine/issues

__OK__

## elastic (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/elastic/issues

__OK__

## enigma (0.1.1)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/enigma/issues

__OK__

## fbRanks (2.0)
Maintainer: E Holmes <eeholmes@u.washington.edu>

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘RCurl’ ‘RJSONIO’ ‘XML’ ‘glmnet’ ‘httr’ ‘speedglm’ ‘tcltk’ ‘xtable’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
print.fbRanks: no visible global function definition for ‘xtable’
rank.teams: no visible global function definition for ‘speedglm’
rank.teams: no visible global function definition for ‘sparseMatrix’
rank.teams: no visible binding for global variable ‘glmnet’
scrape.custom1: no visible global function definition for ‘htmlParse’
scrape.custom1: no visible global function definition for ‘getNodeSet’
scrape.custom1: no visible global function definition for ‘xmlValue’
scrape.custom2: no visible global function definition for
  ‘readHTMLTable’
scrape.custom3: no visible global function definition for
  ‘readHTMLTable’
scrape.custom4: no visible global function definition for
  ‘readHTMLTable’
scrape.demosphere: no visible global function definition for
  ‘readHTMLTable’
scrape.demosphere : getthelink: no visible global function definition
  for ‘xmlChildren’
scrape.demosphere : getthelink: no visible global function definition
  for ‘xmlAttrs’
scrape.demosphere: no visible global function definition for ‘getURL’
scrape.demosphere: no visible global function definition for
  ‘htmlParse’
scrape.demosphere.main : getthelink: no visible global function
  definition for ‘xmlChildren’
scrape.demosphere.main : getthelink: no visible global function
  definition for ‘xmlAttrs’
scrape.demosphere.main : getthelink: no visible global function
  definition for ‘xmlValue’
scrape.demosphere.main : getthelink3: no visible global function
  definition for ‘xmlChildren’
scrape.demosphere.main : getthelink3: no visible global function
  definition for ‘xmlAttrs’
scrape.demosphere.main : getthelink3: no visible global function
  definition for ‘xmlValue’
scrape.demosphere.main: no visible global function definition for
  ‘readHTMLTable’
scrape.gotsport: no visible global function definition for
  ‘readHTMLTable’
scrape.gotsport.main : getthelink: no visible global function
  definition for ‘xmlChildren’
scrape.gotsport.main : getthelink: no visible global function
  definition for ‘xmlAttrs’
scrape.gotsport.main : getthelink: no visible global function
  definition for ‘xmlValue’
scrape.gotsport.main: no visible global function definition for ‘GET’
scrape.gotsport.main: no visible global function definition for
  ‘user_agent’
scrape.gotsport.main: no visible global function definition for
  ‘htmlParse’
scrape.gotsport.main: no visible global function definition for
  ‘text_content’
scrape.gotsport.main: no visible global function definition for
  ‘readHTMLTable’
scrape.json1: no visible global function definition for ‘getURL’
scrape.json1: no visible global function definition for ‘fromJSON’
scrape.korrio: no visible global function definition for ‘GET’
scrape.korrio: no visible global function definition for ‘user_agent’
scrape.korrio: no visible global function definition for
  ‘readHTMLTable’
scrape.korrio: no visible global function definition for ‘text_content’
scrape.korrio: no visible global function definition for ‘htmlParse’
scrape.korrio: no visible global function definition for ‘getNodeSet’
scrape.korrio: no visible binding for global variable ‘xmlValue’
scrape.korrio: no visible global function definition for ‘xmlAttrs’
scrape.korrio: no visible global function definition for ‘content’
scrape.korrio: no visible global function definition for ‘xmlValue’
scrape.scoreboard: no visible global function definition for
  ‘readHTMLTable’
scrape.sportaffinity: no visible global function definition for
  ‘readHTMLTable’
scrape.sportaffinity: no visible global function definition for
  ‘htmlParse’
scrape.sportaffinity: no visible global function definition for
  ‘getNodeSet’
scrape.sportaffinity: no visible binding for global variable ‘xmlValue’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘GET’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘user_agent’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘htmlParse’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘text_content’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘getNodeSet’
scrape.sportaffinity.brackets : <anonymous>: no visible global function
  definition for ‘xmlValue’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘xmlAttrs’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘xmlValue’
scrape.sportaffinity.main : getthelink3: no visible global function
  definition for ‘xmlChildren’
scrape.sportaffinity.main : getthelink3: no visible global function
  definition for ‘xmlValue’
scrape.sportaffinity.main : getthelink3: no visible global function
  definition for ‘xmlAttrs’
scrape.sportaffinity.main: no visible global function definition for
  ‘readHTMLTable’
scrape.usclub: no visible global function definition for
  ‘readHTMLTable’
team.name.select : gogetem: no visible global function definition for
  ‘tclvalue<-’
team.name.select : gogetem: no visible global function definition for
  ‘tkcurselection’
team.name.select : clearteam: no visible global function definition for
  ‘tclvalue<-’
team.name.select : clearteam: no visible global function definition for
  ‘tkselection.clear’
team.name.select : showteam: no visible global function definition for
  ‘tclvalue<-’
team.name.select : showteam: no visible global function definition for
  ‘tkcurselection’
team.name.select : showteam: no visible global function definition for
  ‘tclvalue’
team.name.select : enterteam: no visible global function definition for
  ‘tclvalue<-’
team.name.select : enterteam: no visible global function definition for
  ‘tclvalue’
team.name.select : updateteam: no visible global function definition
  for ‘tclvalue<-’
team.name.select : updateteam: no visible global function definition
  for ‘tkcurselection’
team.name.select : updateteam: no visible global function definition
  for ‘tclvalue’
team.name.select : showlist: no visible global function definition for
  ‘tclvalue<-’
team.name.select : showlist: no visible global function definition for
  ‘tclvalue’
team.name.select : searchteam: no visible global function definition
  for ‘tclvalue<-’
team.name.select : searchteam: no visible global function definition
  for ‘tclvalue’
team.name.select : skipteam: no visible global function definition for
  ‘tclvalue<-’
team.name.select: no visible global function definition for
  ‘tktoplevel’
team.name.select: no visible global function definition for
  ‘tkwm.title’
team.name.select: no visible global function definition for ‘tkframe’
team.name.select: no visible global function definition for ‘tclVar’
team.name.select: no visible global function definition for ‘tclObj<-’
team.name.select: no visible global function definition for ‘tklistbox’
team.name.select: no visible global function definition for ‘tkpack’
team.name.select: no visible global function definition for
  ‘tkradiobutton’
team.name.select: no visible global function definition for ‘tklabel’
team.name.select: no visible global function definition for ‘tkentry’
team.name.select: no visible global function definition for ‘tkbutton’
team.name.select: no visible global function definition for ‘tkgrid’
team.name.select: no visible global function definition for
  ‘tclvalue<-’
team.name.select : <anonymous>: no visible global function definition
  for ‘tkdestroy’
team.name.select: no visible global function definition for
  ‘tkwait.window’
```
```
DONE
Status: 2 NOTEs
```

## fitbitScraper (0.1.2)
Maintainer: Cory Nissen <corynissen@gmail.com>

__OK__

## GAR (1.0)
Maintainer: Andrew Geisler <andrew.geisler@gmail.com>  
Bug reports: https://github.com/andrewgeisler/GAR/issues

__OK__

## gender (0.4.3)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/gender/issues

__OK__

## genderizeR (1.1.0)
Maintainer: Kamil Wais <kamil.wais@gmail.com>  
Bug reports: https://github.com/kalimu/genderizeR

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  6: condition(object)
  7: evaluate_promise(expr, print = TRUE)
  8: with_sink(temp, withCallingHandlers(withVisible(code), warning = wHandler, message = mHandler))
  9: withCallingHandlers(withVisible(code), warning = wHandler, message = mHandler)
  10: withVisible(code)
  11: genderizeAPI("Kamil", apikey = "test")
  12: httr::GET("https://api.genderize.io", query = query, httr::config(ssl.verifypeer = ssl.verifypeer))
  13: request_perform(req, hu$handle$handle) at /Users/hadley/Documents/web/httr/R/http-get.r:67
  14: curl::handle_setopt(handle, .list = req$options) at /Users/hadley/Documents/web/httr/R/request.R:119
  15: stop("Unknown options.") at /private/tmp/RtmpRrn4aZ/devtoolse6b2242dabf0/jeroenooms-curl-0911193/R/handle.R:49
  
  Error: Test failures
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## geocodeHERE (0.1.2)
Maintainer: Cory Nissen <corynissen@gmail.com>

__OK__

## geojsonio (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>

__OK__

## gistr (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/gistr/issues

__OK__

## gmailr (0.6.0)
Maintainer: Jim Hester <james.f.hester@gmail.com>  
Bug reports: https://github.com/jimhester/gmailr/issues

__OK__

## hoardeR (0.0-2)
Maintainer: Daniel Fischer <daniel.fischer@mtt.fi>

__OK__

## imguR (1.0.0)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  plot.imgur_gallery_image
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 2 NOTEs
```

## indicoio (0.3)
Maintainer: Madison May <madison@indico.io>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## internetarchive (0.1.2)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/internetarchive/issues

__OK__

## knitcitations (1.0.5)
Maintainer: Carl Boettiger <cboettig@gmail.com>

__OK__

## leafletR (0.3-2)
Maintainer: Christian Graul <christian.graul@gmail.com>

__OK__

## manifestoR (0.9-12)
Maintainer: Jirka Lewandowski <jirka.lewandowski@wzb.eu>  
Bug reports: https://github.com/ManifestoProject/manifestoR/issues

__OK__

## miniCRAN (0.2.4)
Maintainer: Andrie de
 Vries <andrie@revolutionanalytics.com>  
Bug reports: https://github.com/RevolutionAnalytics/miniCRAN/issues

__OK__

## nat (1.6.4)
Maintainer: Greg Jefferis <jefferis@gmail.com>  
Bug reports: https://github.com/jefferis/nat/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘Rvcg’
```
```
DONE
Status: 1 NOTE
```

## ngramr (1.4.5)
Maintainer: Sean Carmody <seancarmody@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## opencpu (1.4.6)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: https://github.com/jeroenooms/opencpu/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘RAppArmor’ ‘RProtoBuf’ ‘pander’
```
```
DONE
Status: 1 NOTE
```

## packrat (0.4.3)
Maintainer: Kevin Ushey <kevin@rstudio.com>  
Bug reports: https://github.com/rstudio/packrat/issues

```
checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘BiocInstaller’
```
```
DONE
Status: 1 NOTE
```

## pdfetch (0.1.6)
Maintainer: Abiel Reinhart <abielr@gmail.com>

__OK__

## pollstR (1.2.0)
Maintainer: Jeffrey B. Arnold <jeffrey.arnold@gmail.com>  
Bug reports: https://github.com/rOpenGov/pollstR/issues

__OK__

## primerTree (1.0.1)
Maintainer: Jim Hester <james.f.hester@gmail.com>

__OK__

## pushoverr (0.1.4)
Maintainer: Brian Connelly <bdc@bconnelly.net>  
Bug reports: https://github.com/briandconnelly/pushoverr/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## pvsR (0.3)
Maintainer: Ulrich Matter <ulrich.matter@unibas.ch>

__OK__

## pxweb (0.5.5)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>  
Bug reports: https://github.com/rOpenGov/pxweb/issues

```
checking tests ... ERROR
Running the tests in ‘tests/testthat_multiple.R’ failed.
Last 13 lines of output:
  {
      for (i in 1:(api_config$calls_per_period + 10)) {
          topnode <- pxweb::get_pxweb_metadata(baseURL = test)
      }
  } threw an error
  http://api.scb.se/OV0104/v1/doris/sv
  
  Error: Test failures
  In addition: Warning message:
  'str_join' is deprecated.
  Use 'str_c' instead.
  See help("Deprecated") 
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## Quandl (2.6.0)
Maintainer: Raymond McTaggart <raymond@quandl.com>  
Bug reports: https://github.com/quandl/R-package/issues

__OK__

## randNames (0.2)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/karthik/randNames/issues

__OK__

## rbhl (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbhl/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## rbison (0.4.5)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbison/issues

__OK__

## rclinicaltrials (1.4.1)
Maintainer: Michael C Sachs <sachsmc@gmail.com>

__OK__

## Rcolombos (1.5.2)
Maintainer: Paolo Sonego <paolo.sonego@fmach.it>

__OK__

## rcrossref (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rcrossref/issues

__OK__

## rdrop2 (0.6)
Maintainer: Karthik Ram <karthik.ram@gmail.com>

__OK__

## rebird (0.1.1)
Maintainer: Rafael Maia <rm72@zips.uakron.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## redcapAPI (1.3)
Maintainer: Stephen Lane <stephen.lane@barwonhealth.org.au>  
Bug reports: https://github.com/nutterb/redcapAPI/issues

__OK__

## REDCapR (0.7-1)
Maintainer: Will Beasley <wibeasley@hotmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RODBC’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘RODBC’ ‘testthat’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  13: httr::url_success(url = pathDeleteTestRecord, config = config_options)
  14: successful(HEAD(...)) at /Users/hadley/Documents/web/httr/R/response-status.r:175
  15: status_code(x) at /Users/hadley/Documents/web/httr/R/response-status.r:177
  16: HEAD(...) at /Users/hadley/Documents/web/httr/R/response-status.r:5
  17: request_build("HEAD", hu$url, config, ..., config(nobody = TRUE)) at /Users/hadley/Documents/web/httr/R/http-head.r:27
  18: Reduce(request_combine, extra, init = request()) at /Users/hadley/Documents/web/httr/R/request.R:59
  19: f(init, x[[i]])
  20: stopifnot(is.request(x), is.request(y)) at /Users/hadley/Documents/web/httr/R/request.R:71
  21: stop(sprintf(ngettext(length(r), "%s is not TRUE", "%s are not all TRUE"), ch), call. = FALSE, 
         domain = NA)
  
  Error: Test failures
  Execution halted
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 41-44 (BasicREDCapROperations.Rmd) 
Error: processing vignette 'BasicREDCapROperations.Rmd' failed with diagnostics:
is.request(y) is not TRUE
Execution halted

```
```
DONE
Status: 1 ERROR, 3 NOTEs
```

## rentrez (0.4.1)
Maintainer: David Winter <david.winter@gmail.com>

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  WebEnv : ....
  
  
  1. Failure(@test_fetch.r#32): Functions to fetch records & summaries work ------
  length(strsplit(coi, ">")[[1]]) not equal to 30
  Mean relative difference: 0.9666667
  
  2. Failure(@test_query.r#30): Query building functions work --------------------
  nrecs not equal to 2
  Mean relative difference: 0.5
  
  Error: Test failures
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## repmis (0.4.2)
Maintainer: Christopher Gandrud <christopher.gandrud@gmail.com>  
Bug reports: https://github.com/christophergandrud/repmis/issues

__OK__

## rerddap (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/rerddap/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘ncdf4’
```
```
DONE
Status: 1 NOTE
```

## Rfacebook (0.5)
Maintainer: Pablo Barbera <pablo.barbera@nyu.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## rfigshare (0.3.6)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/rfigshare/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 78-81 (README.Rmd) 
Error: processing vignette 'README.Rmd' failed with diagnostics:
file.exists(path) is not TRUE
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## rfisheries (0.1)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: http://www.github.com/ropensci/rfisheries/issues/new

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking R code for possible problems ... NOTE
fish_plot: no visible binding for global variable ‘species_code_data’
fish_plot: no visible binding for global variable ‘country_code_data’
```
```
DONE
Status: 2 NOTEs
```

## rfoaas (0.1.3)
Maintainer: Dirk Eddelbuettel <edd@debian.org>

__OK__

## RGA (0.2.1)
Maintainer: Artem Klevtsov <a.a.klevtsov@gmail.com>  
Bug reports: https://bitbucket.org/unikum/rga/issues

__OK__

## rgauges (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rgauges/issues

__OK__

## rgbif (0.8.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rgbif/issues

__OK__

## RGoogleAnalytics (0.1.1)
Maintainer: Kushan Shah <kushan@tatvic.com>  
Bug reports: https://github.com/Tatvic/RGoogleAnalytics/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## rHealthDataGov (1.0.1)
Maintainer: Erin LeDell <ledell@berkeley.edu>

```
checking R code for possible problems ... NOTE
.quick_fetch: no visible global function definition for ‘POST’
.quick_fetch: no visible global function definition for ‘add_headers’
.quick_fetch: no visible global function definition for
  ‘stop_for_status’
.quick_fetch: no visible global function definition for ‘content’
fetch_healthdata: no visible binding for global variable ‘resources’
fetch_healthdata : <anonymous>: no visible binding for global variable
  ‘filters’
```
```
DONE
Status: 1 NOTE
```

## rinat (0.1.4)
Maintainer: Edmund Hart <edmund.m.hart@gmail.com>

__OK__

## Rlinkedin (0.1)
Maintainer: Michael Piccirilli <michael.r.piccirilli@gmail.com>

__OK__

## Rmonkey (0.2.11)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/leeper/Rmonkey/issues

__OK__

## rnbn (1.0.3)
Maintainer: Tom August <tomaug@ceh.ac.uk>  
Bug reports: https://github.com/ropensci/rnbn/issues

__OK__

## RNeXML (2.0.2)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/RNeXML/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘rrdf’ ‘phytools’ ‘Sxslt’
```
```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
   NeXML generated by RNeXML using schema version: 0.9 
   size: 21.7 Kb 
  
  parsing : ...
  publish : 
  rdf : Loading required package: Sxslt
  Loading required package: Sxslt
  
  serializing : ..
  simmap : Error in library(phytools) : there is no package called 'phytools'
  Calls: test_check ... .test_file -> sys.source2 -> eval -> eval -> library
  In addition: There were 41 warnings (use warnings() to see them)
  Execution halted
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

Retrieving data for taxon 'Trochiliformes'


Retrieving data for taxon 'Musophagiformes'


Retrieving data for taxon 'Strigiformes'


Retrieving data for taxon 'Columbiformes'


Retrieving data for taxon 'Gruiformes'


Retrieving data for taxon 'Ciconiiformes'


Retrieving data for taxon 'Passeriformes'

Quitting from lines 148-150 (simmap.Rmd) 
Error: processing vignette 'simmap.Rmd' failed with diagnostics:
there is no package called 'phytools'
Execution halted

```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## rnoaa (0.3.3)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/rnoaa/issues

__OK__

## rplos (0.4.7)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rplos/issues

__OK__

## RPublica (0.1.2)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/rOpenGov/RPublica/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## RSiteCatalyst (1.4.3)
Maintainer: Randy Zwitch <rzwitch+rsitecatalyst@gmail.com>  
Bug reports: https://github.com/randyzwitch/RSiteCatalyst

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  4: expect_output(SCAuth(Sys.getenv("USER", ""), Sys.getenv("SECRET", "")), "Authentication Succeeded.") at test-scauth.R:6
  5: expect_that(object, prints_text(regexp, ...), info = info, label = label)
  6: condition(object)
  7: evaluate_promise(expr, print = TRUE)
  8: with_sink(temp, withCallingHandlers(withVisible(code), warning = wHandler, message = mHandler))
  9: withCallingHandlers(withVisible(code), warning = wHandler, message = mHandler)
  10: withVisible(code)
  11: SCAuth(Sys.getenv("USER", ""), Sys.getenv("SECRET", ""))
  12: stop("Authentication failed due to errors")
  
  Error: Test failures
  In addition: There were 50 or more warnings (use warnings() to see the first 50)
  Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## rsnps (0.1.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rsnps/issues

__OK__

## RSocrata (1.6.0-12)
Maintainer: "Tom Schenk Jr." <developers@cityofchicago.org>  
Bug reports: https://github.com/Chicago/RSocrata/issues

```
checking whether package ‘RSocrata’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘curl::handle_reset’ when loading ‘RSocrata’
See ‘/private/tmp/RtmpRrn4aZ/check_crane6b25e22298a/RSocrata.Rcheck/00install.out’ for details.
```
```
DONE
Status: 1 WARNING
```

## rsunlight (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/rsunlight/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘rCharts’
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 2 NOTEs
```

## rvertnet (0.2.2)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rvertnet/issues

__OK__

## rvest (0.2.0)
Maintainer: Hadley Wickham <h.wickham@gmail.com>

__OK__

## rWBclimate (0.1.3)
Maintainer: Edmund Hart <edmund.m.hart@gmail.com>  
Bug reports: http://github.com/ropensci/rWBclimate/issues

```
checking R code for possible problems ... NOTE
check_ISO_code: no visible binding for global variable ‘NoAm_country’
check_ISO_code: no visible binding for global variable ‘SoAm_country’
check_ISO_code: no visible binding for global variable ‘Oceana_country’
check_ISO_code: no visible binding for global variable ‘Africa_country’
check_ISO_code: no visible binding for global variable ‘Asia_country’
check_ISO_code: no visible binding for global variable ‘Eur_country’
```
```
DONE
Status: 1 NOTE
```

## slackr (1.2)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/slackr/issues

__OK__

## SmarterPoland (1.5)
Maintainer: Przemyslaw Biecek <przemyslaw.biecek@gmail.com>

```
checking data for non-ASCII characters ... NOTE
  Note: found 1122 marked UTF-8 strings
```
```
DONE
Status: 1 NOTE
```

## SocialMediaMineR (0.1)
Maintainer: Marco Toledo Bastos <marco@toledobastos.com>

__OK__

## solr (0.1.4)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/solr/issues

__OK__

## spareserver (1.0.0)
Maintainer: "Gabor Csardi" <csardi.gabor@gmail.com>  
Bug reports: https://github.com/metacran/spareserver/issues

__OK__

## spocc (0.2.4)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/spocc/issues

__OK__

## swirl (2.2.21)
Maintainer: Nick Carchedi <nick.carchedi@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## SWMPr (2.0.0)
Maintainer: Marcus W. Beck <mbafs2012@gmail.com>  
Bug reports: https://github.com/fawda123/SWMPr/issues

__OK__

## taxize (0.5.2)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/taxize/issues

__OK__

## translateR (1.0)
Maintainer: Christopher Lucas <clucas@fas.harvard.edu>

__OK__

## tumblR (1.1)
Maintainer: Andrea Capozio <andreacapozio@gmail.com>

__OK__

## twitteR (1.1.8)
Maintainer: Jeff Gentry <geoffjentry@gmail.com>

__OK__

## WaterML (1.0.0)
Maintainer: Jiri Kadlec <jirikadlec2@gmail.com>

__OK__

## WikipediR (1.1.0)
Maintainer: Oliver Keyes <okeyes@wikimedia.org>  
Bug reports: https://github.com/Ironholds/WikipediR/issues

__OK__

## yhatr (0.13.4)
Maintainer: Greg Lamp <greg@yhathq.com>

__OK__

