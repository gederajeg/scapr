
<!-- README.md is generated from README.Rmd. Please edit that file -->
**Authors:** [Gede Primahadi Wijaya Rajeg](https://figshare.com/authors/Gede_Primahadi_Wijaya_Rajeg/1234749)<br/> **License:** [GPL-2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)<br/>

[![Build Status](https://travis-ci.org/gederajeg/scapr.svg?branch=master)](https://travis-ci.org/gederajeg/scapr)<br/> [![codecov](https://codecov.io/gh/gederajeg/scapr/branch/master/graph/badge.svg)](https://codecov.io/gh/gederajeg/scapr)<br/>

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

We can use `scaps()` as an inline R code, e.g. to turn the word *happiness* into small caps, as follows: `` `r scapr::scaps("happiness")` ``. It will then produce <span style="font-variant:small-caps;">happiness</span>.

Another example is to include other markdown formattings, such as **boldface** (e.g., `` `r scapr::scaps("**happiness**")` `` that results in <span style="font-variant:small-caps;">**happiness**</span>) and *italics* (e.g., `` `r scapr::scaps("*happiness*")` `` that results in <span style="font-variant:small-caps;">*happiness*</span>).
