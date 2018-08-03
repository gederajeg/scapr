
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active) [![Build Status](https://travis-ci.org/gederajeg/scapr.svg?branch=master)](https://travis-ci.org/gederajeg/scapr) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/gederajeg/scapr?branch=master&svg=true)](https://ci.appveyor.com/project/gederajeg/scapr) [![Coverage status](https://codecov.io/gh/gederajeg/scapr/branch/master/graph/badge.svg)](https://codecov.io/github/gederajeg/scapr?branch=master)

scapr
=====

The goal of `scapr` is to provide a set of functions that wrap over the HTML-tag for generating <span style="font-variant:small-caps;">small capitals</span> strings. I designed this package to help me with the writing of my thesis in R Markdown that deals with lots of small-capitalisation of words to be rendered into MS Word output. The package aims to save time and, most importantly, prevent typo in writing the small capital tag (i.e., `<span style = "font-variant:small-caps;">a small capital string</span>`) over and over again in the R Markdown (cf. Yihui Xie's chapter in [Bookdown](https://bookdown.org/yihui/bookdown/markdown-syntax.html) about inline-formatting for small capital in R markdown). The `scapr` package can be seen as a complement to the [`lettercase`](https://cran.r-project.org/package=lettercase) R package by Christopher Brown that does not include small capital feature.

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
library(dplyr)
```

The main function in the package is `scaps()`. It can be used as an inline R code in R Markdown as follows: `` `r scaps("happiness")` ``. It will then turn "happiness" into "<span style="font-variant:small-caps;">happiness</span>". The alternative is to "pipe" `scaps()` after the target string: `` `r "happiness" %>% scaps()` ``, which generates <span style="font-variant:small-caps;">happiness</span>. `scaps()` can also be used to modify strings in a data frame to be printed as table with `knitr` package:

``` r
# create the tibble/data_frame
df <- dplyr::tibble(concept = scaps(c("time", "emotion")),
                    freq = c(45, 53))

# print with knitr
knitr::kable(df, caption = "A table with small-capitalised strings")
```

| concept                                               |  freq|
|:------------------------------------------------------|-----:|
| <span style="font-variant:small-caps;">time</span>    |    45|
| <span style="font-variant:small-caps;">emotion</span> |    53|

There are three other functions in the package for different font-face types of the small capital string. They are `scaps_italics()` (for <span style="font-variant:small-caps;">*italicised small captial string*</span>), `scaps_bold()` (for <span style="font-variant:small-caps;">**boldfaced small capital string**</span>) and `scaps_bolditalics()` (for both <span style="font-variant:small-caps;">***italicised and boldfaced small capital string***</span>).

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
#>  date     2018-08-03
#> Packages -----------------------------------------------------------------
#>  package    * version date       source                          
#>  assertthat   0.2.0   2017-04-11 CRAN (R 3.4.0)                  
#>  backports    1.1.2   2017-12-13 CRAN (R 3.5.0)                  
#>  base       * 3.5.1   2018-07-05 local                           
#>  bindr        0.1.1   2018-03-13 cran (@0.1.1)                   
#>  bindrcpp     0.2.2   2018-03-29 CRAN (R 3.5.0)                  
#>  compiler     3.5.1   2018-07-05 local                           
#>  crayon       1.3.4   2017-09-16 CRAN (R 3.4.1)                  
#>  datasets   * 3.5.1   2018-07-05 local                           
#>  devtools     1.13.6  2018-06-27 CRAN (R 3.5.0)                  
#>  digest       0.6.15  2018-01-28 CRAN (R 3.5.0)                  
#>  dplyr      * 0.7.6   2018-06-29 CRAN (R 3.5.1)                  
#>  evaluate     0.11    2018-07-17 CRAN (R 3.5.0)                  
#>  glue         1.3.0   2018-07-17 CRAN (R 3.5.0)                  
#>  graphics   * 3.5.1   2018-07-05 local                           
#>  grDevices  * 3.5.1   2018-07-05 local                           
#>  highr        0.7     2018-06-09 cran (@0.7)                     
#>  htmltools    0.3.6   2017-04-28 CRAN (R 3.5.0)                  
#>  knitr        1.20    2018-02-20 CRAN (R 3.5.0)                  
#>  magrittr     1.5     2014-11-22 CRAN (R 3.4.0)                  
#>  memoise      1.1.0   2017-04-21 CRAN (R 3.4.0)                  
#>  methods    * 3.5.1   2018-07-05 local                           
#>  pillar       1.3.0   2018-07-14 CRAN (R 3.5.0)                  
#>  pkgconfig    2.0.1   2017-03-21 CRAN (R 3.4.0)                  
#>  purrr        0.2.5   2018-05-29 CRAN (R 3.5.0)                  
#>  R6           2.2.2   2017-06-17 CRAN (R 3.4.0)                  
#>  Rcpp         0.12.18 2018-07-23 CRAN (R 3.5.1)                  
#>  rlang        0.2.1   2018-05-30 CRAN (R 3.5.0)                  
#>  rmarkdown    1.10    2018-06-11 CRAN (R 3.5.0)                  
#>  rprojroot    1.3-2   2018-01-03 CRAN (R 3.4.3)                  
#>  scapr      * 0.2.1   2018-07-31 Github (gederajeg/scapr@330abf5)
#>  stats      * 3.5.1   2018-07-05 local                           
#>  stringi      1.2.4   2018-07-20 CRAN (R 3.5.0)                  
#>  stringr      1.3.1   2018-05-10 cran (@1.3.1)                   
#>  tibble       1.4.2   2018-01-22 CRAN (R 3.5.0)                  
#>  tidyselect   0.2.4   2018-02-26 CRAN (R 3.5.0)                  
#>  tools        3.5.1   2018-07-05 local                           
#>  utils      * 3.5.1   2018-07-05 local                           
#>  withr        2.1.2   2018-03-15 cran (@2.1.2)                   
#>  yaml         2.1.19  2018-05-01 CRAN (R 3.5.0)
rmarkdown::pandoc_version()
#> [1] '1.19.2.1'
```
