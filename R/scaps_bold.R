#' Turning strings into boldfaced small-capitals
#'
#' @description This is a wrapper to put HTML-tag around character string input to be rendered as \strong{boldfaced} small capital in the output document of R Markdown file.
#' @param x A character string (e.g. a word or phrase).
#'
#' @return Boldfaced, small-capital character string.
#' @export
#'
#' @examples
#' scaps_bold("happiness")
scaps_bold <- function(x) {
  paste("<span style = 'font-variant:small-caps;'>__", x, "__</span>", sep = "")
}
