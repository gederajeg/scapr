
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Build
Status](https://travis-ci.org/gederajeg/scapr.svg?branch=master)](https://travis-ci.org/gederajeg/scapr)
[![codecov](https://codecov.io/gh/gederajeg/scapr/branch/master/graph/badge.svg)](https://codecov.io/gh/gederajeg/scapr)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)

# scapr

The goal of `scapr` is to turn lower-case character format into
<span class="smallcaps">`small capitals`</span>. This function wrap the
HTML-tag around a character string input as exemplified in Yihui Xie’s
chapter on inline-formatting for markdown syntax (cf.
[Bookdown](https://bookdown.org/yihui/bookdown/markdown-syntax.html)). I
designed this function to help the writing of my thesis in R Markdown
that deals with lots of small-capitalisation of words.

## Installation

You can install `scapr` from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("gederajeg/scapr")
```

## Example

``` r
library(scapr)
```

We can use `scaps()` as an inline R code, e.g. to turn the word
*happiness* into small caps, as follows: `` `r scaps("happiness")` ``.
It will then produce <span class="smallcaps">happiness</span>.

There are three other functions in the package for different font-face
types of the small-capital string. They are `scaps_italics()` (for
<span class="smallcaps">*italicised small-captial string*</span>),
`scaps_bold()` (for <span class="smallcaps">**boldfaced small-capital
string**</span>) and `scaps_bolditalics()` (for both
<span class="smallcaps">***italicised and boldfaced small-capital
string***</span>).
