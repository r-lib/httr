# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.1.2 (2014-10-31) |
|system   |x86_64, darwin13.4.0         |
|ui       |RStudio (0.99.85)            |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |

## Packages

|package   |*  |version  |date       |source         |
|:---------|:--|:--------|:----------|:--------------|
|base64enc |*  |0.1-2    |2014-06-26 |CRAN (R 3.1.0) |
|digest    |*  |0.6.4    |2013-12-03 |CRAN (R 3.1.0) |
|httpuv    |*  |1.3.2    |2014-10-23 |CRAN (R 3.1.2) |
|httr      |   |0.5      |2014-09-02 |CRAN (R 3.1.1) |
|jpeg      |*  |0.1-8    |2014-01-23 |CRAN (R 3.1.0) |
|jsonlite  |*  |0.9.14   |2014-12-01 |CRAN (R 3.1.2) |
|knitr     |*  |1.8      |2014-11-11 |CRAN (R 3.1.2) |
|mime      |*  |0.2      |2014-09-26 |CRAN (R 3.1.1) |
|png       |*  |0.1-7    |2013-12-03 |CRAN (R 3.1.0) |
|R6        |*  |2.0.1    |2014-10-29 |CRAN (R 3.1.2) |
|RCurl     |*  |1.95-4.4 |2014-11-29 |CRAN (R 3.1.2) |
|stringr   |*  |0.6.2    |2012-12-06 |CRAN (R 3.1.0) |
|testthat  |   |0.9.1    |2014-10-01 |CRAN (R 3.1.1) |
|XML       |*  |3.98-1.1 |2013-06-20 |CRAN (R 3.1.0) |

# Check results
70 checked out of 71 dependencies 

## aemo (0.1.0)
Maintainer: Imanuel Costigan <i.costigan@me.com>

__OK__

## alm (0.3.1)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/alm/issues

```
checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘rCharts’
```

## AntWeb (0.7)
Maintainer: 'Karthik Ram' <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/AntWeb/issues

__OK__

## archivist (1.2)
Maintainer: Przemyslaw Biecek <przemyslaw.biecek@gmail.com>  
Bug reports: https://github.com/pbiecek/archivist/issues

__OK__

## aRxiv (0.5.5)
Maintainer: Karl Broman <kbroman@biostat.wisc.edu>  
Bug reports: https://github.com/ropensci/aRxiv/issues

__OK__

## bold (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/bold/issues

__OK__

## couchDB (1.3.0)
Maintainer: Aleksander Dietrichson <sasha@xrrch.com>

__OK__

## dataRetrieval (2.0.1)
Maintainer: Laura DeCicco <ldecicco@usgs.gov>

__OK__

## devtools (1.6.1)
Maintainer: Hadley Wickham <hadley@rstudio.com>

```
checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘memoise’
  All declared Imports should be used.
See the information on DESCRIPTION files in the chapter ‘Creating R
packages’ of the ‘Writing R Extensions’ manual.
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

## ecoengine (1.6)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/ecoengine/issues

__OK__

## enigma (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>

__OK__

## fbRanks (2.0)
Maintainer: E Holmes <eeholmes@u.washington.edu>

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

## gender (0.4.2)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/gender/issues

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

__OK__

## indicoio (0.3)
Maintainer: Madison May <madison@indico.io>

__OK__

## jsonlite (0.9.14)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: http://github.com/jeroenooms/jsonlite/issues

__OK__

## knitcitations (1.0.5)
Maintainer: Carl Boettiger <cboettig@gmail.com>

__OK__

## leafletR (0.3-1)
Maintainer: Christian Graul <christian.graul@gmail.com>

__OK__

## miniCRAN (0.1-1)
Maintainer: Andrie de
 Vries <apdevries@gmail.com>  
Bug reports: https://github.com/andrie/miniCRAN/issues

__OK__

## nat (1.5.12)
Maintainer: Greg Jefferis <jefferis@gmail.com>

__OK__

## ngramr (1.4.5)
Maintainer: Sean Carmody <seancarmody@gmail.com>

__OK__

## opencpu (1.4.5)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: http://github.com/jeroenooms/opencpu/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RAppArmor’
```

## pdfetch (0.1.6)
Maintainer: Abiel Reinhart <abielr@gmail.com>

__OK__

## pollstR (1.1.1)
Maintainer: Jeffrey B. Arnold <jeffrey.arnold@gmail.com>  
Bug reports: https://github.com/rOpenGov/pollstR/issues

__OK__

## primerTree (1.0.1)
Maintainer: Jim Hester <james.f.hester@gmail.com>

__OK__

## pushoverr (0.1.4)
Maintainer: Brian Connelly <bdc@bconnelly.net>  
Bug reports: https://github.com/briandconnelly/pushoverr/issues

__OK__

## pvsR (0.3)
Maintainer: Ulrich Matter <ulrich.matter@unibas.ch>

__OK__

## pxweb (0.5.3)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>  
Bug reports: https://github.com/rOpenGov/pxweb/issues

__OK__

## rbhl (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbhl/issues

__OK__

## rbison (0.4.3)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbison/issues

__OK__

## rclinicaltrials (1.4)
Maintainer: Michael C Sachs <sachsmc@gmail.com>

__OK__

## Rcolombos (1.5.0)
Maintainer: Paolo Sonego <paolo.sonego@fmach.it>

__OK__

## rcrossref (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rcrossref/issues

__OK__

## rebird (0.1.1)
Maintainer: Rafael Maia <rm72@zips.uakron.edu>

__OK__

## redcapAPI (1.1)
Maintainer: Benjamin Nutter <nutterb@ccf.org>

__OK__

## REDCapR (0.4-28)
Maintainer: Will Beasley <wibeasley@hotmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RODBC’
```

## rentrez (0.3.1)
Maintainer: David Winter <david.winter@gmail.com>

__OK__

## repmis (0.3)
Maintainer: Christopher Gandrud <christopher.gandrud@gmail.com>  
Bug reports: https://github.com/christophergandrud/repmis/issues

```
checking whether package ‘repmis’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/Rtmp6QoPgk/check_cranf291e0b21f3/repmis.Rcheck/00install.out’ for details.
```

## Rfacebook (0.4)
Maintainer: Pablo Barbera <pablo.barbera@nyu.edu>

__OK__

## rfigshare (0.3.6)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/rfigshare/issues

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > if (packageVersion("testthat") >= "0.7.1.99") {
  +     library(testthat)
  +   test_check("rfigshare")
  + } else {
  +   library(testthat)
  +   test_package("rfigshare")
  + }
  Loading required package: rfigshare
  Error: is.oauth_endpoint(endpoint) is not TRUE
  Execution halted
```

## rfisheries (0.1)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: http://www.github.com/ropensci/rfisheries/issues/new

```
checking R code for possible problems ... NOTE
fish_plot: no visible binding for global variable ‘species_code_data’
fish_plot: no visible binding for global variable ‘country_code_data’
```

## RGA (0.1.3)
Maintainer: Artem Klevtsov <a.a.klevtsov@gmail.com>  
Bug reports: https://bitbucket.org/unikum/rga/issues

__OK__

## rgauges (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rgauges/issues

__OK__

## rgbif (0.7.7)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rgbif/issues

```
checking package dependencies ... ERROR
Package required but not available: ‘rgeos’

See the information on DESCRIPTION files in the chapter ‘Creating R
packages’ of the ‘Writing R Extensions’ manual.
```

## RGoogleAnalytics (0.1.1)
Maintainer: Kushan Shah <kushan@tatvic.com>  
Bug reports: https://github.com/Tatvic/RGoogleAnalytics/issues

__OK__

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

## rinat (0.1.4)
Maintainer: Edmund Hart <edmund.m.hart@gmail.com>

__OK__

## RNeXML (1.1.3)
Maintainer: Carl Boettiger <cboettig@gmail.com>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘rrdf’ ‘Sxslt’
```
```
checking R code for possible problems ... NOTE
get_rdf: no visible global function definition for
  ‘xsltApplyStyleSheet’
nexml_figshare: no visible global function definition for ‘fs_create’
nexml_figshare: no visible global function definition for
  ‘fs_add_authors’
nexml_figshare: no visible global function definition for
  ‘fs_add_categories’
nexml_figshare: no visible global function definition for ‘fs_add_tags’
nexml_figshare: no visible global function definition for ‘fs_upload’
nexml_figshare: no visible global function definition for
  ‘fs_make_private’
nexml_figshare: no visible global function definition for
  ‘fs_make_public’
```

## rnoaa (0.2.0)
Maintainer: Hart Edmund <Edmund.m.hart@gmail.com>  
Bug reports: http://www.github.com/ropensci/rnoaa/issues

```
checking package dependencies ... ERROR
Package required but not available: ‘rgeos’

See the information on DESCRIPTION files in the chapter ‘Creating R
packages’ of the ‘Writing R Extensions’ manual.
```

## rplos (0.4.1)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/rplos/issues

__OK__

## RSiteCatalyst (1.4.2)
Maintainer: Randy Zwitch <rzwitch+rsitecatalyst@gmail.com>  
Bug reports: https://github.com/randyzwitch/RSiteCatalyst

__OK__

## rsnps (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rsnps/issues

__OK__

## RSocrata (1.5)
Maintainer: Hugh J. Devlin <Hugh.Devlin@cityofchicago.org>

```
checking examples ... WARNING
Found the following significant warnings:

  Warning: 'guess_media' is deprecated.
Deprecated functions may be defunct as soon as of the next release of
R.
See ?Deprecated.
```

## rsunlight (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/rsunlight/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘rCharts’
```

## rvertnet (0.0-5)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>

```
checking dependencies in R code ... NOTE
Namespaces in Imports field not imported from:
  ‘RCurl’ ‘RJSONIO’
  All declared Imports should be used.
See the information on DESCRIPTION files in the chapter ‘Creating R
packages’ of the ‘Writing R Extensions’ manual.
```
```
checking R code for possible problems ... NOTE
vertmap: no visible binding for global variable ‘long’
vertmap: no visible binding for global variable ‘lat’
vertmap: no visible binding for global variable ‘group’
vertmap: no visible binding for global variable ‘Longitude’
vertmap: no visible binding for global variable ‘Latitude’
```
```
checking Rd line widths ... NOTE
Rd file 'vertlocations.Rd':
  \examples lines wider than 100 characters:
     vertlocations(p="POLYGON((-93.998292265615 32.615318339629,-92.471192656236 32.606063985828,-92.635987578112 31.235349580893,-90.988038 ... [TRUNCATED]

Rd file 'vertoccurrence.Rd':
  \examples lines wider than 100 characters:
     vertoccurrence(p="POLYGON((-93.998292265615 32.615318339629,-92.471192656236 32.606063985828,-92.635987578112 31.235349580893,-90.98803 ... [TRUNCATED]
     vertoccurrence(t="notropis",num=100, cols="Latitude,Longitude,Family,ScientificName,IndividualCount,Remarks")

Rd file 'vertoccurrencecount.Rd':
  \examples lines wider than 100 characters:
     vertoccurrencecount(p="POLYGON((-93.998292265615 32.615318339629,-92.471192656236 32.606063985828,-92.635987578112 31.235349580893,-90. ... [TRUNCATED]

Rd file 'vertproviders.Rd':
  \examples lines wider than 100 characters:
     vertproviders(p="POLYGON((-93.998292265615 32.615318339629,-92.471192656236 32.606063985828,-92.635987578112 31.235349580893,-90.988038 ... [TRUNCATED]

Rd file 'verttaxa.Rd':
  \examples lines wider than 100 characters:
     verttaxa(p="POLYGON((-93.998292265615 32.615318339629,-92.471192656236 32.606063985828,-92.635987578112 31.235349580893,-90.98803835936 ... [TRUNCATED]

These lines will be truncated in the PDF manual.
```

## rvest (0.1.0)
Maintainer: 'Hadley Wickham' <h.wickham@gmail.com>

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

## slackr (1.2)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/slackr/issues

__OK__

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

## spocc (0.2.2)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/spocc/issues

```
checking package dependencies ... ERROR
Packages required but not available:
  ‘rgbif’ ‘rinat’ ‘rbison’ ‘ecoengine’ ‘rebird’ ‘AntWeb’ ‘rworldmap’
  ‘rgeos’

See the information on DESCRIPTION files in the chapter ‘Creating R
packages’ of the ‘Writing R Extensions’ manual.
```

## swirl (2.2.16)
Maintainer: Nick Carchedi <nick.carchedi@gmail.com>

__OK__

## taxize (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/taxize/issues

__OK__

## translateR (1.0)
Maintainer: Christopher Lucas <clucas@fas.harvard.edu>

__OK__

## tumblR (1.0)
Maintainer: Andrea Capozio <andreacapozio@gmail.com>

__OK__

## WikipediR (1.0.1)
Maintainer: Oliver Keyes <okeyes@wikimedia.org>  
Bug reports: https://github.com/Ironholds/WikipediR/issues

__OK__

## yhatr (0.13.1)
Maintainer: Greg Lamp <greg@yhathq.com>

__OK__

