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
239 packages

## abbyyR (0.4.0)
Maintainer: Gaurav Sood <gsood07@gmail.com>  
Bug reports: http://github.com/soodoku/abbyyR/issues

0 errors | 0 warnings | 1 note 

```
checking installed package size ... NOTE
  installed size is  5.9Mb
  sub-directories of 1Mb or more:
    doc       2.2Mb
    extdata   3.6Mb
```

## aemo (0.1.0)
Maintainer: Imanuel Costigan <i.costigan@me.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
collate_aemo_data: no visible binding for global variable ‘read.csv’
get_aemo_data: no visible binding for global variable ‘download.file’
Undefined global functions or variables:
  download.file read.csv
Consider adding
  importFrom("utils", "download.file", "read.csv")
to your NAMESPACE file.
```

## alm (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/alm/issues

0 errors | 0 warnings | 2 notes

```
checking R code for possible problems ... NOTE
alm_events : parse_events: no visible global function definition for
  ‘setNames’
alm_ids : getalm: no visible global function definition for ‘is’
alm_plot: no visible global function definition for ‘na.omit’
Undefined global functions or variables:
  is na.omit setNames
Consider adding
  importFrom("methods", "is")
  importFrom("stats", "na.omit", "setNames")
to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
contains 'methods').

checking files in ‘vignettes’ ... NOTE
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```

## analogsea (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/sckott/analogsea/issues

0 errors | 0 warnings | 0 notes

## AntWeb (0.7)
Maintainer: 'Karthik Ram' <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/AntWeb/issues

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
aw_map: no visible global function definition for ‘browseURL’
Undefined global functions or variables:
  browseURL
Consider adding
  importFrom("utils", "browseURL")
to your NAMESPACE file.
```

## archivist.github (0.1.1)
Maintainer: Marcin Kosinski <m.p.kosinski@gmail.com>  
Bug reports: https://github.com/MarcinKosinski/archivist.github/issues

0 errors | 0 warnings | 0 notes

## archivist (2.0.4)
Maintainer: Przemyslaw Biecek <przemyslaw.biecek@gmail.com>  
Bug reports: https://github.com/pbiecek/archivist/issues

0 errors | 0 warnings | 0 notes

## aRxiv (0.5.10)
Maintainer: Karl Broman <kbroman@biostat.wisc.edu>  
Bug reports: https://github.com/ropensci/aRxiv/issues

0 errors | 0 warnings | 0 notes

## atsd (1.0.8441)
Maintainer: Mikhail Zvagelsky <mikhail.zvagelsky@axibase.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
parse_response: no visible global function definition for ‘read.csv’
Undefined global functions or variables:
  read.csv
Consider adding
  importFrom("utils", "read.csv")
to your NAMESPACE file.
```

## aws.alexa (0.1.2)
Maintainer: Gaurav Sood <gsood07@gmail.com>

0 errors | 0 warnings | 0 notes

## backblazer (0.1.0)
Maintainer: Phill Clarke <phill@starkingdom.co.uk>  
Bug reports: http://www.github.com/phillc73/backblazer/issues

0 errors | 0 warnings | 0 notes

## benchmarkme (0.2.3)
Maintainer: Colin Gillespie <csgillespie@gmail.com>  
Bug reports: https://github.com/csgillespie/benchmarkme/issues

0 errors | 0 warnings | 0 notes

## bigrquery (0.2.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>

0 errors | 0 warnings | 0 notes

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

## bold (0.3.5)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/bold/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘sangerseqR’
```

## boxr (0.3.2)
Maintainer: Brendan Rocks <rocks.brendan@gmail.com>  
Bug reports: https://github.com/brendan-R/boxr/issues

0 errors | 0 warnings | 0 notes

## brranching (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/brranching/issues

0 errors | 0 warnings | 0 notes

## cdcfluview (0.4.0)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/cdcfluview/issues

0 errors | 0 warnings | 0 notes

## censusr (0.0.2)
Maintainer: Greg Macfarlane <gregmacfarlane@gmail.com>

0 errors | 0 warnings | 0 notes

## chillR (0.62)
Maintainer: Eike Luedeling <eike@eikeluedeling.com>

0 errors | 0 warnings | 0 notes

## chromer (0.1)
Maintainer: Matthew Pennell <mwpennell@gmail.com>  
Bug reports: http://www.github.com/ropensci/chromer/issues/new

0 errors | 0 warnings | 2 notes

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.

checking R code for possible problems ... NOTE
parse_counts: no visible global function definition for ‘na.omit’
Undefined global functions or variables:
  na.omit
Consider adding
  importFrom("stats", "na.omit")
to your NAMESPACE file.
```

## ckanr (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/ckanr/issues

0 errors | 0 warnings | 0 notes

## CopulaDTA (0.0.3)
Maintainer: Victoria N Nyaga <victoria.nyaga@outlook.com>

0 errors | 0 warnings | 0 notes

## couchDB (1.3.0)
Maintainer: Aleksander Dietrichson <sasha@xrrch.com>

0 errors | 0 warnings | 1 note 

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```

## covr (2.0.1)
Maintainer: Jim Hester <james.f.hester@gmail.com>  
Bug reports: https://github.com/jimhester/covr/issues

0 errors | 0 warnings | 1 note 

```
checking dependencies in R code ... NOTE
There are ::: calls to the package's namespace in its code. A package
  almost never needs to use ::: for its own objects:
  ‘count’
```

## cranlogs (2.1.0)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/metacran/cranlogs/issues

0 errors | 0 warnings | 0 notes

## crunch (1.9.4)
Maintainer: Neal Richardson <neal@crunch.io>  
Bug reports: https://github.com/Crunch-io/rcrunch/issues

0 errors | 0 warnings | 0 notes

## curlconverter (0.7.0)
Maintainer: Bob Rudis <bob@rudis.net>

0 errors | 0 warnings | 0 notes

## dataonderivatives (0.2.1)
Maintainer: Imanuel Costigan <i.costigan@me.com>  
Bug reports: https://github.com/imanuelcostigan/dataonderivatives/issues

0 errors | 0 warnings | 0 notes

## dataone (2.0.0)
Maintainer: Matthew B. Jones <jones@nceas.ucsb.edu>  
Bug reports: https://github.com/DataONEorg/rdataone/issues

0 errors | 0 warnings | 0 notes

## dataRetrieval (2.5.5)
Maintainer: Laura DeCicco <ldecicco@usgs.gov>  
Bug reports: https://github.com/USGS-R/dataRetrieval/issues

0 errors | 0 warnings | 0 notes

## datarobot (2.2.32)
Maintainer: David Chudzicki <api-maintainer@datarobot.com>

0 errors | 0 warnings | 0 notes

## ddeploy (1.0.4)
Maintainer: Niall McGearailt <niall@dukeanalytics.com>

0 errors | 0 warnings | 0 notes

## devtools (1.11.1)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/devtools/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘BiocInstaller’
```

## diezeit (0.1-0)
Maintainer: Christian Graul <christian.graul@gmail.com>

0 errors | 0 warnings | 0 notes

## discgolf (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/sckott/discgolf/issues

0 errors | 0 warnings | 0 notes

## distcomp (0.25.4)
Maintainer: Balasubramanian Narasimhan <naras@stat.Stanford.EDU>

0 errors | 0 warnings | 0 notes

## dpmr (0.1.9)
Maintainer: Christopher Gandrud <christopher.gandrud@gmail.com>  
Bug reports: https://github.com/christophergandrud/dpmr/issues

0 errors | 0 warnings | 0 notes

## ecb (0.2)
Maintainer: Eric Persson <expersso5@gmail.com>

0 errors | 0 warnings | 0 notes

## ecoengine (1.10.0)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/ecoengine/issues

0 errors | 0 warnings | 0 notes

## elastic (0.6.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/elastic/issues

0 errors | 0 warnings | 0 notes

## enigma (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/enigma/issues

0 errors | 0 warnings | 0 notes

## estatapi (0.2)
Maintainer: Hiroaki Yutani <yutani.ini@gmail.com>

0 errors | 0 warnings | 0 notes

## eurostat (1.2.21)
Maintainer: Lahti Leo <louhos@googlegroups.com>  
Bug reports: https://github.com/ropengov/eurostat/issues

0 errors | 0 warnings | 0 notes

## fbRanks (2.0)
Maintainer: E Holmes <eeholmes@u.washington.edu>

0 errors | 0 warnings | 2 notes

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘RCurl’ ‘RJSONIO’ ‘XML’ ‘glmnet’ ‘httr’ ‘speedglm’ ‘tcltk’ ‘xtable’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.

checking R code for possible problems ... NOTE
coef.fbRanks: no visible global function definition for ‘coef’
construct.team.file: no visible global function definition for
  ‘read.csv’
construct.team.file: no visible global function definition for
  ‘write.table’
create.fbRanks.dataframes: no visible global function definition for
  ‘read.csv’
detect.normality.outliers: no visible global function definition for
  ‘median’
... 220 lines ...
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

## federalregister (0.2.0)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/rOpenGov/federalregister/issues

0 errors | 0 warnings | 0 notes

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

## fitcoach (1.0)
Maintainer: Niraj Juneja <njuneja@gmail.com>

0 errors | 0 warnings | 0 notes

## flora (0.2.7)
Maintainer: Gustavo Carvalho <gustavo.bio@gmail.com>  
Bug reports: http://www.github.com/gustavobio/flora/issues

0 errors | 0 warnings | 0 notes

## fulltext (0.1.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/fulltext/issues

0 errors | 0 warnings | 0 notes

## GAR (1.1)
Maintainer: Andrew Geisler <andrew.geisler@gmail.com>  
Bug reports: https://github.com/andrewgeisler/GAR/issues

0 errors | 0 warnings | 0 notes

## gender (0.5.1)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/gender/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘genderdata’
```

## genderizeR (2.0.0)
Maintainer: Kamil Wais <kamil.wais@gmail.com>  
Bug reports: https://github.com/kalimu/genderizeR

0 errors | 0 warnings | 1 note 

```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘sortinghat’
```

## geocodeHERE (0.1.3)
Maintainer: Cory Nissen <corynissen@gmail.com>

0 errors | 0 warnings | 0 notes

## geojsonio (0.1.8)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/geojsonio/issues

0 errors | 0 warnings | 0 notes

## geoknife (1.3.0)
Maintainer: Jordan Read <jread@usgs.gov>  
Bug reports: https://github.com/USGS-R/geoknife/issues

0 errors | 0 warnings | 0 notes

## gistr (0.3.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/gistr/issues

0 errors | 0 warnings | 0 notes

## gitlabr (0.6.4)
Maintainer: Jirka Lewandowski <jirka.lewandowski@wzb.eu>  
Bug reports: 
        http://gitlab.points-of-interest.cc/points-of-interest/gitlabr/
        issues/

0 errors | 0 warnings | 0 notes

## gmailr (0.7.1)
Maintainer: Jim Hester <james.f.hester@gmail.com>  
Bug reports: https://github.com/jimhester/gmailr/issues

0 errors | 0 warnings | 0 notes

## gmum.r (0.2.1)
Maintainer: Stanislaw Jastrzebski <staszek.jastrzebski@gmail.com>  
Bug reports: https://github.com/gmum/gmum.r/issues

0 errors | 0 warnings | 0 notes

## googleAuthR (0.3.0)
Maintainer: Mark Edmondson <m@sunholo.com>  
Bug reports: https://github.com/MarkEdmondson1234/googleAuthR/issues

0 errors | 0 warnings | 0 notes

## googleformr (0.0.3)
Maintainer: Steve Simpson <steven.troy.simpson@gmail.com>

0 errors | 0 warnings | 0 notes

## googlesheets (0.2.0)
Maintainer: Jennifer Bryan <jenny@stat.ubc.ca>  
Bug reports: https://github.com/jennybc/googlesheets/issues

0 errors | 0 warnings | 0 notes

## gsheet (0.3.0)
Maintainer: Max Conway <conway.max1@gmail.com>  
Bug reports: https://github.com/maxconway/gsheet/issues

0 errors | 0 warnings | 0 notes

## hdr (0.1)
Maintainer: Eric Persson <expersso5@gmail.com>  
Bug reports: https://github.com/expersso/hdr

0 errors | 0 warnings | 0 notes

## HIBPwned (0.1.0.0)
Maintainer: Steph Locke <stephanie.g.locke@gmail.com>  
Bug reports: https://github.com/censornet/HIBPwned/issues

0 errors | 0 warnings | 0 notes

## hkex.api (0.1)
Maintainer: Kimman Lui <cskmlui@comp.polyu.edu.hk>

0 errors | 0 warnings | 0 notes

## hoardeR (0.1)
Maintainer: Daniel Fischer <daniel.fischer@luke.fi>

0 errors | 0 warnings | 0 notes

## htmltab (0.7.0)
Maintainer: Christian Rubba <christian.rubba@gmail.com>  
Bug reports: https://github.com/crubba/htmltab/issues

0 errors | 0 warnings | 0 notes

## httpcache (0.1.4)
Maintainer: Neal Richardson <neal.p.richardson@gmail.com>  
Bug reports: https://github.com/nealrichardson/httpcache/issues

0 errors | 0 warnings | 0 notes

## httping (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/sckott/httping/issues

0 errors | 0 warnings | 0 notes

## idbr (0.1.2)
Maintainer: Kyle Walker <kyle.walker@tcu.edu>

0 errors | 0 warnings | 0 notes

## imguR (1.0.3)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/leeper/imguR/issues

0 errors | 0 warnings | 0 notes

## instaR (0.2.2)
Maintainer: Pablo Barbera <pablo.barbera@nyu.edu>  
Bug reports: https://github.com/pablobarbera/instaR/issues

0 errors | 0 warnings | 0 notes

## internetarchive (0.1.5)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/internetarchive/issues

0 errors | 0 warnings | 0 notes

## jsonlite (0.9.21)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: http://github.com/jeroenooms/jsonlite/issues

0 errors | 0 warnings | 0 notes

## junr (0.1.1)
Maintainer: Frans van Dunné <frans@ixpantia.com>  
Bug reports: https://github.com/fvd/junr/issues

0 errors | 0 warnings | 0 notes

## knitcitations (1.0.7)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/cboettig/knitcitations/issues

0 errors | 0 warnings | 0 notes

## leafletR (0.4-0)
Maintainer: Christian Graul <christian.graul@gmail.com>

0 errors | 0 warnings | 0 notes

## LightningR (1.0.2)
Maintainer: Kolodziejski Kamil <kolodziejski.kamil@hotmail.com>  
Bug reports: https://github.com/Ermlab/lightining-rstat/issues

0 errors | 0 warnings | 0 notes

## lintr (1.0.0)
Maintainer: Jim Hester <james.f.hester@gmail.com>  
Bug reports: https://github.com/jimhester/lintr/issues

0 errors | 0 warnings | 0 notes

## longurl (0.1.1)
Maintainer: Bob Rudis <bob@rudis.net>

0 errors | 0 warnings | 0 notes

## lucr (0.1.1)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/ironholds/lucr/issues

0 errors | 0 warnings | 0 notes

## lumendb (0.2.0)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/leeper/lumendb/issues

0 errors | 0 warnings | 0 notes

## Luminescence (0.6.0)
Maintainer: Sebastian Kreutzer <sebastian.kreutzer@u-bordeaux-montaigne.fr>

0 errors | 0 warnings | 0 notes

## machina (0.1.4)
Maintainer: Norton Tim <tnorton@machi.na>

0 errors | 0 warnings | 0 notes

## manifestoR (1.2)
Maintainer: Jirka Lewandowski <jirka.lewandowski@wzb.eu>  
Bug reports: https://github.com/ManifestoProject/manifestoR/issues

0 errors | 0 warnings | 0 notes

## mapr (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/mapr/issues

0 errors | 0 warnings | 0 notes

## markmyassignment (0.6.0)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>

0 errors | 0 warnings | 0 notes

## miniCRAN (0.2.5)
Maintainer: Andrie de
 Vries <adevries@microsoft.com>  
Bug reports: https://github.com/RevolutionAnalytics/miniCRAN/issues

0 errors | 0 warnings | 0 notes

## move (2.0.0)
Maintainer: Bart Kranstauber <bart.kranstauber@ieu.uzh.ch>  
Bug reports: https://gitlab.com/bartk/move/issues

0 errors | 0 warnings | 0 notes

## mscsweblm4r (0.1.1)
Maintainer: Phil Ferriere <pferriere@hotmail.com>  
Bug reports: http://www.github.com/philferriere/mscsweblm4r/issues

0 errors | 0 warnings | 0 notes

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

## neotoma (1.5.1)
Maintainer: Simon J. Goring <goring@wisc.edu>  
Bug reports: https://github.com/ropensci/neotoma/issues

0 errors | 0 warnings | 0 notes

## oai (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/sckott/oai/issues

0 errors | 0 warnings | 0 notes

## OECD (0.2.2)
Maintainer: Eric Persson <expersso5@gmail.com>  
Bug reports: https://www.github.com/expersso/OECD/issues

0 errors | 0 warnings | 0 notes

## opencage (0.1.0)
Maintainer: Maëlle Salmon <maelle.salmon@yahoo.se>  
Bug reports: http://github.com/ropenscilabs/opencage/issues

0 errors | 0 warnings | 0 notes

## opencpu (1.6.1)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: https://github.com/jeroenooms/opencpu/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RAppArmor’
```

## ores (0.1.0)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/Ironholds/ores/issues

0 errors | 0 warnings | 0 notes

## originr (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropenscilabs/originr/issues

0 errors | 0 warnings | 0 notes

## osmplotr (0.2.1)
Maintainer: Mark Padgham <mark.padgham@email.com>  
Bug reports: https://github.com/ropenscilabs/osmplotr/issues

0 errors | 0 warnings | 0 notes

## packagetrackr (0.1.1)
Maintainer: Jirka Lewandowski <jirka.lewandowski@wzb.eu>  
Bug reports: 
        http://gitlab.points-of-interest.cc/points-of-interest/packagetrackr/issues

0 errors | 0 warnings | 0 notes

## packrat (0.4.7-1)
Maintainer: Kevin Ushey <kevin@rstudio.com>  
Bug reports: https://github.com/rstudio/packrat/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘BiocInstaller’
```

## pageviews (0.2.0)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/ironholds/pageviews

0 errors | 0 warnings | 0 notes

## pangaear (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/pangaear/issues

0 errors | 0 warnings | 0 notes

## pdfetch (0.1.7)
Maintainer: Abiel Reinhart <abielr@gmail.com>

0 errors | 0 warnings | 0 notes

## pdftables (0.1)
Maintainer: Eric Persson <expersso5@gmail.com>  
Bug reports: https://www.github.com/expersso/pdftables/issues

0 errors | 0 warnings | 0 notes

## pinnacle.API (1.90)
Maintainer: Marco Blume <marco.blume@pinnaclesports.com>

0 errors | 0 warnings | 0 notes

## pkgcopier (0.0.1)
Maintainer: Hao Zhu <haozhu233@gmail.com>  
Bug reports: https://github.com/haozhu233/pkgcopier/issues

0 errors | 0 warnings | 0 notes

## plotly (3.6.0)
Maintainer: Carson Sievert <cpsievert1@gmail.com>  
Bug reports: https://github.com/ropensci/plotly/issues

0 errors | 0 warnings | 0 notes

## pollstR (1.3.0)
Maintainer: Jeffrey B. Arnold <jeffrey.arnold@gmail.com>  
Bug reports: https://github.com/rOpenGov/pollstR/issues

0 errors | 0 warnings | 0 notes

## primerTree (1.0.3)
Maintainer: Jim Hester <james.f.hester@gmail.com>

0 errors | 0 warnings | 0 notes

## prism (0.0.7)
Maintainer: Hart Edmund <Edmund.m.hart@gmail.com>  
Bug reports: http://github.com/ropensci/prism/issues

0 errors | 0 warnings | 0 notes

## pushoverr (0.1.4)
Maintainer: Brian Connelly <bdc@bconnelly.net>  
Bug reports: https://github.com/briandconnelly/pushoverr/issues

0 errors | 0 warnings | 1 note 

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```

## pvsR (0.3)
Maintainer: Ulrich Matter <ulrich.matter@unibas.ch>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
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

## pxweb (0.6.3)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>  
Bug reports: https://github.com/rOpenGov/pxweb/issues

0 errors | 0 warnings | 0 notes

## Quandl (2.8.0)
Maintainer: Raymond McTaggart <ray@quandl.com>  
Bug reports: https://github.com/quandl/quandl-r/issues

0 errors | 0 warnings | 0 notes

## quickmapr (0.1.1)
Maintainer: Jeffrey W. Hollister <hollister.jeff@epa.gov>  
Bug reports: https://github.com/jhollist/quickmapr/issues

0 errors | 0 warnings | 0 notes

## randNames (0.2.2)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/karthik/randNames/issues

0 errors | 0 warnings | 0 notes

## rbhl (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbhl/issues

0 errors | 0 warnings | 0 notes

## rbison (0.4.8)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbison/issues

0 errors | 0 warnings | 0 notes

## Rcereal (1.1.2)
Maintainer: Wush Wu <wush978@gmail.com>

0 errors | 0 warnings | 0 notes

## rclinicaltrials (1.4.1)
Maintainer: Michael C Sachs <sachsmc@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
clinicaltrials_download: no visible global function definition for
  ‘unzip’
Undefined global functions or variables:
  unzip
Consider adding
  importFrom("utils", "unzip")
to your NAMESPACE file.
```

## Rcolombos (2.0.2)
Maintainer: Paolo Sonego <paolo.sonego@fmach.it>

0 errors | 0 warnings | 0 notes

## RCriteo (1.0.1)
Maintainer: Johannes Burkhardt <johannes.burkhardt@gmail.com>  
Bug reports: https://github.com/jburkhardt/RCriteo/issues

0 errors | 0 warnings | 0 notes

## rcrossref (0.5.2)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rcrossref/issues

0 errors | 0 warnings | 0 notes

## rdian (0.1.1)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/ironholds/rdian

0 errors | 0 warnings | 0 notes

## rdnb (0.1-0)
Maintainer: Christian Graul <christian.graul@gmail.com>

0 errors | 0 warnings | 0 notes

## rdrop2 (0.7.0)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/karthik/rdrop2/issues

0 errors | 0 warnings | 0 notes

## rdryad (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rdryad/issues

0 errors | 0 warnings | 0 notes

## rebird (0.3.0)
Maintainer: Sebastian Pardo <sebpardo@gmail.com>  
Bug reports: http://github.com/ropensci/rebird/issues

0 errors | 0 warnings | 0 notes

## rechonest (1.2)
Maintainer: Mukul Chaware <mukul.chaware13@gmail.com>

0 errors | 0 warnings | 0 notes

## redcapAPI (1.3)
Maintainer: Stephen Lane <stephen.lane@barwonhealth.org.au>  
Bug reports: https://github.com/nutterb/redcapAPI/issues

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
allocationTable_offline: no visible global function definition for
  ‘read.csv’
exportArms.redcapApiConnection: no visible global function definition
  for ‘read.csv’
exportEvents.redcapApiConnection: no visible global function definition
  for ‘read.csv’
exportInstruments.redcapApiConnection: no visible global function
  definition for ‘read.csv’
exportMappings.redcapApiConnection: no visible global function
... 21 lines ...
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

## RefManageR (0.10.13)
Maintainer: Mathew W. McLean <mathew.w.mclean@gmail.com>  
Bug reports: https://github.com/mwmclean/RefManageR/issues

0 errors | 0 warnings | 1 note 

```
checking foreign function calls ... NOTE
Foreign function call to a different package:
  .External("do_read_bib", ..., PACKAGE = "bibtex")
See chapter ‘System and foreign language interfaces’ in the ‘Writing R
Extensions’ manual.
```

## rentrez (1.0.2)
Maintainer: David Winter <david.winter@gmail.com>

0 errors | 0 warnings | 0 notes

## repmis (0.5)
Maintainer: Christopher Gandrud <christopher.gandrud@gmail.com>  
Bug reports: https://github.com/christophergandrud/repmis/issues

0 errors | 0 warnings | 0 notes

## request (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/sckott/request/issues

0 errors | 0 warnings | 0 notes

## rerddap (0.3.4)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/rerddap/issues

0 errors | 0 warnings | 0 notes

## Rfacebook (0.6.3)
Maintainer: Pablo Barbera <pablo.barbera@nyu.edu>  
Bug reports: https://github.com/pablobarbera/Rfacebook/issues

0 errors | 0 warnings | 0 notes

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

## rfigshare (0.3.7)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/rfigshare/issues

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
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

## rfishbase (2.1.0)
Maintainer: Carl Boettiger <cboettig@ropensci.org>  
Bug reports: https://github.com/ropensci/rfishbase/issues

0 errors | 0 warnings | 0 notes

## rfisheries (0.2)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: http://www.github.com/ropensci/rfisheries/issues/new

0 errors | 0 warnings | 0 notes

## rfml (0.1.0)
Maintainer: Mats Stellwall <mats.stellwall@gmail.com>  
Bug reports: https://github.com/mstellwa/rfml/issues

0 errors | 0 warnings | 0 notes

## rfoaas (0.1.9)
Maintainer: Dirk Eddelbuettel <edd@debian.org>

0 errors | 0 warnings | 0 notes

## RForcecom (0.9)
Maintainer: Takekatsu Hiramura <thira@plavox.info>  
Bug reports: https://github.com/hiratake55/RForcecom/issues

0 errors | 0 warnings | 0 notes

## RGA (0.4.2)
Maintainer: Artem Klevtsov <a.a.klevtsov@gmail.com>  
Bug reports: https://github.com/artemklevtsov/RGA/issues

0 errors | 0 warnings | 0 notes

## rgbif (0.9.3)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rgbif/issues

0 errors | 0 warnings | 0 notes

## rgeolocate (0.7.0)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/ironholds/rgeolocate/issues

0 errors | 0 warnings | 0 notes

## rgho (0.0.1)
Maintainer: Antoine Filipovic-Pierucci <pierucci@gmail.com>  
Bug reports: https://github.com/pierucci/rgho/issues

0 errors | 0 warnings | 0 notes

## RGoogleAnalytics (0.1.1)
Maintainer: Kushan Shah <kushan@tatvic.com>  
Bug reports: https://github.com/Tatvic/RGoogleAnalytics/issues

0 errors | 0 warnings | 1 note 

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```

## RGoogleAnalyticsPremium (0.1.1)
Maintainer: Jalpa Joshi Dave <jalpa@tatvic.com>

0 errors | 0 warnings | 0 notes

## rHealthDataGov (1.0.1)
Maintainer: Erin LeDell <ledell@berkeley.edu>

0 errors | 0 warnings | 1 note 

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
Undefined global functions or variables:
  POST add_headers content filters resources stop_for_status
```

## ridigbio (0.3.3)
Maintainer: Matthew Collins <mcollins@acis.ufl.edu>  
Bug reports: https://github.com/iDigBio/ridigbio/issues

0 errors | 0 warnings | 0 notes

## riem (0.1.0)
Maintainer: Maëlle Salmon <maelle.salmon@yahoo.se>  
Bug reports: http://github.com/ropenscilabs/riem/issues

0 errors | 0 warnings | 1 note 

```
checking DESCRIPTION meta-information ... NOTE
Authors@R field gives persons with no valid roles:
  Brooke Anderson [rev] (Brooke Anderson reviewed the package for rOpenSci, see https://github.com/ropensci/onboarding/issues/39.)
```

## rinat (0.1.4)
Maintainer: Edmund Hart <edmund.m.hart@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
get_inat_obs: no visible global function definition for ‘read.csv’
get_inat_obs_project: no visible global function definition for
  ‘read.csv’
get_inat_obs_user: no visible global function definition for ‘read.csv’
inat_handle: no visible binding for global variable ‘data’
Undefined global functions or variables:
  data read.csv
Consider adding
  importFrom("utils", "data", "read.csv")
to your NAMESPACE file.
```

## Rlinkedin (0.1)
Maintainer: Michael Piccirilli <michael.r.piccirilli@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
getCompany: no visible global function definition for ‘URLencode’
searchCompanies: no visible global function definition for ‘URLencode’
searchJobs: no visible global function definition for ‘URLencode’
searchPeople: no visible global function definition for ‘URLencode’
submitGroupPost: no visible global function definition for ‘as’
submitShare: no visible global function definition for ‘as’
Undefined global functions or variables:
  URLencode as
Consider adding
  importFrom("methods", "as")
  importFrom("utils", "URLencode")
to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
contains 'methods').
```

## Rmonkey (0.3.1)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/cloudyr/Rmonkey/issues

0 errors | 0 warnings | 0 notes

## rnbn (1.0.3)
Maintainer: Tom August <tomaug@ceh.ac.uk>  
Bug reports: https://github.com/ropensci/rnbn/issues

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
getOccurrences: no visible global function definition for ‘na.omit’
Undefined global functions or variables:
  na.omit
Consider adding
  importFrom("stats", "na.omit")
to your NAMESPACE file.
```

## RNeo4j (1.6.4)
Maintainer: Nicole White <nicole@neo4j.com>  
Bug reports: https://github.com/nicolewhite/RNeo4j/issues

0 errors | 0 warnings | 0 notes

## RNeXML (2.0.6)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/RNeXML/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘rrdf’ ‘Sxslt’
```

## rnoaa (0.5.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/rnoaa/issues

0 errors | 0 warnings | 0 notes

## rnpn (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>

0 errors | 0 warnings | 0 notes

## robotstxt (0.3.2)
Maintainer: Peter Meissner <retep.meissner@gmail.com>  
Bug reports: https://github.com/ropenscilabs/robotstxt/issues

0 errors | 0 warnings | 0 notes

## rollbar (0.1.0)
Maintainer: Andrew Kane <andrew@chartkick.com>

0 errors | 0 warnings | 0 notes

## ROpenFIGI (0.2.8)
Maintainer: Ruokun Huang <hruokun.2008@gmail.com>

0 errors | 0 warnings | 0 notes

## ROpenWeatherMap (1.1)
Maintainer: Mukul Chaware <mukul.chaware13@gmail.com>

0 errors | 0 warnings | 0 notes

## ROptimizely (0.2.0)
Maintainer: Keerthi Chandra <kckeerthi@gmail.com>  
Bug reports: https://github.com/kanaku/ROptimizely

0 errors | 0 warnings | 0 notes

## rorcid (0.2.2)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rorcid/issues

0 errors | 0 warnings | 0 notes

## rosetteApi (1.0)
Maintainer: Sam Hausmann <shausmann@basistech.com>  
Bug reports: https://developer.rosette.com/support-ticket

0 errors | 0 warnings | 0 notes

## rotl (3.0.0)
Maintainer: Francois Michonneau <francois.michonneau@gmail.com>  
Bug reports: https://github.com/ropensci/rotl/issues

0 errors | 0 warnings | 0 notes

## rplos (0.5.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rplos/issues

0 errors | 0 warnings | 0 notes

## RPresto (1.2.1)
Maintainer: Onur Ismail Filiz <onur@fb.com>  
Bug reports: https://github.com/prestodb/RPresto/issues

0 errors | 0 warnings | 0 notes

## RPublica (0.1.3)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/rOpenGov/RPublica/issues

0 errors | 0 warnings | 0 notes

## rredlist (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropenscilabs/rredlist/issues

0 errors | 0 warnings | 0 notes

## rrefine (1.0)
Maintainer: VP Nagraj <vpnagraj@virginia.edu>

0 errors | 0 warnings | 0 notes

## rscopus (0.1.2)
Maintainer: John Muschelli <muschellij2@gmail.com>  
Bug reports: https://github.com/muschellij2/rscopus/issues

0 errors | 0 warnings | 0 notes

## RSiteCatalyst (1.4.8)
Maintainer: Randy Zwitch <rzwitch+rsitecatalyst@gmail.com>  
Bug reports: https://github.com/randyzwitch/RSiteCatalyst

0 errors | 0 warnings | 0 notes

## rsnps (0.1.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rsnps/issues

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
fetch_genotypes: no visible global function definition for
  ‘download.file’
fetch_genotypes: no visible global function definition for ‘read.table’
read_users: no visible global function definition for ‘read.table’
Undefined global functions or variables:
  download.file read.table
Consider adding
  importFrom("utils", "download.file", "read.table")
to your NAMESPACE file.
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

## rstatscn (1.0.2)
Maintainer: Xuehui YANG <jianghang@bagualu.net>  
Bug reports: https://github.com/jiang-hang/rstatscn/issues

0 errors | 0 warnings | 0 notes

## rsunlight (0.4.2)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/rsunlight/issues

0 errors | 0 warnings | 0 notes

## rtimes (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/rtimes/issues

0 errors | 0 warnings | 0 notes

## rusda (1.0.8)
Maintainer: Franz-Sebastian Krah <f.krah@mailbox.org>

0 errors | 0 warnings | 0 notes

## rvertnet (0.4.4)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rvertnet/issues

0 errors | 0 warnings | 0 notes

## rvest (0.3.1)
Maintainer: Hadley Wickham <hadley@rstudio.com>

0 errors | 0 warnings | 0 notes

## rWBclimate (0.1.3)
Maintainer: Edmund Hart <edmund.m.hart@gmail.com>  
Bug reports: http://github.com/ropensci/rWBclimate/issues

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
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

## rwunderground (0.1.0)
Maintainer: Alex Shum <alex@ALShum.com>  
Bug reports: https://github.com/alshum/rwunderground/issues

0 errors | 0 warnings | 0 notes

## RYandexTranslate (1.0)
Maintainer: Mukul Chaware <mukul.chaware13@gmail.com>

0 errors | 0 warnings | 0 notes

## RZabbix (0.1.0)
Maintainer: Marcin Kosinski <m.p.kosinski@gmail.com>  
Bug reports: https://github.com/MarcinKosinski/RZabbix/issues

0 errors | 0 warnings | 0 notes

## scholar (0.1.4)
Maintainer: James Keirstead <james.keirstead@gmail.com>  
Bug reports: https://github.com/jkeirstead/scholar/issues

0 errors | 0 warnings | 0 notes

## slackr (1.4.1)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/slackr/issues

0 errors | 0 warnings | 0 notes

## SmarterPoland (1.7)
Maintainer: Przemyslaw Biecek <przemyslaw.biecek@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking installed package size ... NOTE
  installed size is  8.2Mb
  sub-directories of 1Mb or more:
    data   8.1Mb
```

## SocialMediaLab (0.22.0)
Maintainer: Timothy Graham <timothy.graham3@uq.net.au>

0 errors | 0 warnings | 0 notes

## SocialMediaMineR (0.3)
Maintainer: Marco T. Bastos <marco@toledobastos.com>

0 errors | 0 warnings | 0 notes

## soilDB (1.8)
Maintainer: D.E. Beaudette <dylan.beaudette@ca.usda.gov>

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RODBC’
```

## solr (0.1.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/solr/issues

0 errors | 0 warnings | 0 notes

## solrium (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/solrium/issues

0 errors | 0 warnings | 0 notes

## SpaDES (1.1.4)
Maintainer: Alex M Chubaty <alexander.chubaty@canada.ca>  
Bug reports: https://github.com/PredictiveEcology/SpaDES/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘fastshp’
```

## spareserver (1.0.1)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/metacran/spareserver/issues

0 errors | 0 warnings | 0 notes

## spocc (0.5.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/spocc/issues

0 errors | 0 warnings | 0 notes

## spoccutils (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/spoccutils/issues

0 errors | 0 warnings | 0 notes

## stmBrowser (1.0)
Maintainer: Margaret E. Roberts <meroberts@ucsd.edu>

0 errors | 0 warnings | 0 notes

## stplanr (0.1.2)
Maintainer: Robin Lovelace <rob00x@gmail.com>  
Bug reports: https://github.com/ropensci/stplanr/issues

0 errors | 0 warnings | 0 notes

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

## stubthat (1.0.0)
Maintainer: Sainath Adapa <adapasainath@gmail.com>  
Bug reports: https://github.com/sainathadapa/stubthat/issues

0 errors | 0 warnings | 0 notes

## swirl (2.4.1)
Maintainer: Sean Kross <sean@seankross.com>

0 errors | 0 warnings | 0 notes

## SWMPr (2.1.5)
Maintainer: Marcus W. Beck <mbafs2012@gmail.com>  
Bug reports: https://github.com/fawda123/SWMPr/issues

0 errors | 0 warnings | 0 notes

## taxize (0.7.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/taxize/issues

0 errors | 0 warnings | 0 notes

## telegram (0.5.0)
Maintainer: Luca Braglia <lbraglia@mailbox.org>  
Bug reports: http://github.com/lbraglia/telegram/issues

0 errors | 0 warnings | 0 notes

## threewords (0.1.0)
Maintainer: Oliver Keyes <ironholds@gmail.com>

0 errors | 0 warnings | 0 notes

## tigris (0.3)
Maintainer: Kyle Walker <kyle.walker@tcu.edu>

0 errors | 0 warnings | 0 notes

## TMDb (1.0)
Maintainer: Andrea Capozio <andreacapozio@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
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

## traits (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/traits/issues

0 errors | 0 warnings | 0 notes

## transcribeR (0.0.0)
Maintainer: Christopher Lucas <clucas@fas.harvard.edu>

0 errors | 0 warnings | 0 notes

## translateR (1.0)
Maintainer: Christopher Lucas <clucas@fas.harvard.edu>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
microsoftTranslate: no visible global function definition for
  ‘URLencode’
Undefined global functions or variables:
  URLencode
Consider adding
  importFrom("utils", "URLencode")
to your NAMESPACE file.
```

## tuber (0.2)
Maintainer: Gaurav Sood <gsood07@gmail.com>  
Bug reports: http://github.com/soodoku/tuber/issues

0 errors | 0 warnings | 0 notes

## tumblR (1.1)
Maintainer: Andrea Capozio <andreacapozio@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
http.connection: no visible global function definition for ‘setNames’
Undefined global functions or variables:
  setNames
Consider adding
  importFrom("stats", "setNames")
to your NAMESPACE file.
```

## twitteR (1.1.9)
Maintainer: Jeff Gentry <geoffjentry@gmail.com>

0 errors | 0 warnings | 0 notes

## urlshorteneR (0.9.2)
Maintainer: John Malc <cincenko@outlook.com>  
Bug reports: https://github.com/dmpe/urlshorteneR/issues

0 errors | 0 warnings | 0 notes

## vegdata (0.8.9)
Maintainer: Florian Jansen <jansen@uni-greifswald.de>

0 errors | 0 warnings | 0 notes

## vembedr (0.1.0)
Maintainer: Ian Lyttle <ian.lyttle@schneider-electric.com>  
Bug reports: https://github.com/ijlyttle/vembedr/issues

0 errors | 0 warnings | 0 notes

## viridis (0.3.4)
Maintainer: Simon Garnier <garnier@njit.edu>  
Bug reports: https://github.com/sjmgarnier/viridis/issues

0 errors | 0 warnings | 0 notes

## virustotal (0.1.0)
Maintainer: Gaurav Sood <gsood07@gmail.com>  
Bug reports: http://github.com/soodoku/virustotal/issues

0 errors | 0 warnings | 0 notes

## WaterML (1.7.1)
Maintainer: Jiri Kadlec <jirikadlec2@gmail.com>

0 errors | 0 warnings | 0 notes

## wbstats (0.1)
Maintainer: Jesse Piburn <piburnjo@ornl.gov>

0 errors | 0 warnings | 0 notes

## webchem (0.1.0.0)
Maintainer: Eduard Szöcs <eduardszoecs@gmail.com>  
Bug reports: https://github.com/ropensci/webchem/issues

0 errors | 0 warnings | 0 notes

## WHO (0.2)
Maintainer: Eric Persson <expersso5@gmail.com>  
Bug reports: https://www.github.com/expersso/WHO/issues

0 errors | 0 warnings | 0 notes

## whoami (1.1.1)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/whoami/issues

0 errors | 0 warnings | 0 notes

## whoapi (0.1.1)
Maintainer: Oliver Keyes <ironholds@gmail.com>

0 errors | 0 warnings | 0 notes

## WikidataR (1.0.1)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/Ironholds/WikidataR/issues

0 errors | 0 warnings | 0 notes

## WikipediaR (1.1)
Maintainer: Avner Bar-Hen <Avner.Bar-Hen@mi.parisdescartes.fr>

0 errors | 0 warnings | 0 notes

## wikipediatrend (1.1.10)
Maintainer: Peter Meissner <retep.meissner@gmail.com>  
Bug reports: https://github.com/petermeissner/wikipediatrend/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘AnomalyDetection’ ‘BreakoutDetection’
```

## WikipediR (1.3.0)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/Ironholds/WikipediR/issues

0 errors | 0 warnings | 0 notes

## WikiSocio (0.7.0)
Maintainer: Leo Joubert <joubert.leo@gmail.com>

0 errors | 0 warnings | 0 notes

## WufooR (0.6.1)
Maintainer: John Malc <cincenko@outlook.com>  
Bug reports: http://github.com/dmpe/wufoor/issues

0 errors | 0 warnings | 0 notes

## yhatr (0.13.10)
Maintainer: Greg Lamp <greg@yhathq.com>

0 errors | 0 warnings | 0 notes

## yummlyr (0.1.1)
Maintainer: Roman Tsegelskyi <roman.tsegelskyi@gmail.com>  
Bug reports: https://github.com/RomanTsegelskyi/yummlyr/issues

0 errors | 0 warnings | 0 notes

