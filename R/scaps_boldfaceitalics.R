#' Turning strings into boldfaced, italicised small-capitals
#'
#' @description This is a wrapper to put HTML-tag around character string input to be rendered as \strong{boldfaced} as well as \emph{italicised} small capital in the output document of R Markdown file.
#' @param x A character string (e.g. a word or phrase).
#'
#' @return Boldfaced as well as italicised character string.
#' @export
#'
#' @examples
#' scaps_bolditalics("happiness")
scaps_bolditalics <- function(x) {
  paste("<span style = 'font-variant:small-caps;'>__*", x, "*__</span>", sep = "")
}
