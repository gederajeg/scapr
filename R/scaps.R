#' Turning strings into small capitals
#'
#' @description This is a wrapper to put HTML-tag around character string input to be rendered as small capital in the output document of R Markdown file.
#' @param x A character string (e.g. a word or phrase).
#'
#' @return Character string with HTML-tag for small capitals.
#' @export
#'
#' @examples
#' scaps("happiness")
scaps <- function(x) {
  paste("<span style = 'font-variant:small-caps;'>", x, "</span>", sep = "")
}
