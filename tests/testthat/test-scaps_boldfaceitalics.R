context("test-scaps_boldfaceitalics.R")

strings <- c("concept1", "concept2")
test_that("multiple string-input produces output of length greater than 1L", {
  expect_equal(length(scaps_bolditalics(strings)), length(strings))
})

test_that("unidentified object input returns error", {
  expect_error(scaps_bolditalics(x), "^object.+?not found$", perl = TRUE)
})

string <- c(1L, 5L)
test_that("numeric object input is rendered as character", {
  for (i in seq_along(string)) {
    expect_match(scaps_bolditalics(string)[i], paste(">__\\*", string[i], "\\*__<", sep = ""), all =TRUE)
    expect_type(scaps_bolditalics(string)[i], "character")
  }
})
