#' Turning strings into italicised small-capitals
#'
#' @description This is a wrapper to put HTML-tag around character string input to be rendered as \emph{italicised} small capital in the output document of an R Markdown file.
#' @param x A character string (e.g. a word or phrase).
#'
#' @return Italicised, small capital character string.
#' @export
#'
#' @examples
#' \dontrun{
#' scaps_italics("happiness")
#' }
scaps_italics <- function(x) {
  paste("<span style = 'font-variant:small-caps;'>_", x, "_</span>", sep = "")
}
