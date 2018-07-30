context("test-scaps_italics.R")

strings <- c("concept1", "concept2")
test_that("multiple string-input produces output of length greater than 1L", {
  expect_equal(length(scaps_italics(strings)), length(strings))
})

test_that("unidentified object input returns error", {
  expect_error(scaps_italics(x), "^object.+?not found$", perl = TRUE)
})

string <- c(1L, 5L)
test_that("numeric object input is rendered as character", {
  for (i in seq_along(string)) {
    expect_match(scaps_italics(string)[i], paste(">_", string[i], "_<", sep = ""), all =TRUE)
    expect_type(scaps_italics(string)[i], "character")
  }
})
