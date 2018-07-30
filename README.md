
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Build Status](https://travis-ci.org/gederajeg/scapr.svg?branch=master)](https://travis-ci.org/gederajeg/scapr) [![codecov](https://codecov.io/gh/gederajeg/scapr/branch/master/graph/badge.svg)](https://codecov.io/gh/gederajeg/scapr)

scapr
=====

The goal of `scapr` is to turn lower-case character format into <span style="font-variant:small-caps;">`small capitals`</span>. This function wrap the HTML-tag around a character string input as exemplified in Yihui Xie's chapter on inline-formatting for markdown syntax (cf. [Bookdown](https://bookdown.org/yihui/bookdown/markdown-syntax.html)). I designed this function to help the writing of my thesis in R Markdown that deals with lots of small-capitalisation of words.

Installation
------------

You can install `scapr` from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("gederajeg/scapr")
```

Example
-------

``` r
library(scapr)
```

We can use `scaps()` as an inline R code, e.g. to turn the word *happiness* into small caps, as follows: `` `r scaps("happiness")` ``. It will then produce <span style="font-variant:small-caps;">happiness</span>.

There are three other functions in the package for different font-face types of the small-capital string. They are `scaps_italics()` (for <span style="font-variant:small-caps;">*italicised small-captial string*</span>), `scaps_bold()` (for <span style="font-variant:small-caps;">**boldfaced small-capital string**</span>) and `scaps_bolditalics()` (for both <span style="font-variant:small-caps;">***italicised and boldfaced small-capital string***</span>).

Session info
------------

``` r
devtools::session_info()
#> Session info -------------------------------------------------------------
#>  setting  value                       
#>  version  R version 3.5.1 (2018-07-02)
#>  system   x86_64, darwin15.6.0        
#>  ui       X11                         
#>  language (EN)                        
#>  collate  en_US.UTF-8                 
#>  tz       Australia/Melbourne         
#>  date     2018-07-30
#> Packages -----------------------------------------------------------------
#>  package   * version date       source                          
#>  backports   1.1.2   2017-12-13 CRAN (R 3.5.0)                  
#>  base      * 3.5.1   2018-07-05 local                           
#>  compiler    3.5.1   2018-07-05 local                           
#>  datasets  * 3.5.1   2018-07-05 local                           
#>  devtools    1.13.6  2018-06-27 CRAN (R 3.5.0)                  
#>  digest      0.6.15  2018-01-28 CRAN (R 3.5.0)                  
#>  evaluate    0.11    2018-07-17 CRAN (R 3.5.0)                  
#>  graphics  * 3.5.1   2018-07-05 local                           
#>  grDevices * 3.5.1   2018-07-05 local                           
#>  htmltools   0.3.6   2017-04-28 CRAN (R 3.5.0)                  
#>  knitr       1.20    2018-02-20 CRAN (R 3.5.0)                  
#>  magrittr    1.5     2014-11-22 CRAN (R 3.4.0)                  
#>  memoise     1.1.0   2017-04-21 CRAN (R 3.4.0)                  
#>  methods   * 3.5.1   2018-07-05 local                           
#>  Rcpp        0.12.18 2018-07-23 CRAN (R 3.5.1)                  
#>  rmarkdown   1.10    2018-06-11 CRAN (R 3.5.0)                  
#>  rprojroot   1.3-2   2018-01-03 CRAN (R 3.4.3)                  
#>  scapr     * 0.2.0   2018-07-30 Github (gederajeg/scapr@23f393c)
#>  stats     * 3.5.1   2018-07-05 local                           
#>  stringi     1.2.4   2018-07-20 CRAN (R 3.5.0)                  
#>  stringr     1.3.1   2018-05-10 cran (@1.3.1)                   
#>  tools       3.5.1   2018-07-05 local                           
#>  utils     * 3.5.1   2018-07-05 local                           
#>  withr       2.1.2   2018-03-15 cran (@2.1.2)                   
#>  yaml        2.1.19  2018-05-01 CRAN (R 3.5.0)
```
