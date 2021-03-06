% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scaps_italics.R
\name{scaps_italics}
\alias{scaps_italics}
\title{Turning strings into italicised small-capitals}
\usage{
scaps_italics(x)
}
\arguments{
\item{x}{A character string (e.g. a word or phrase).}
}
\value{
Italicised, small capital character string.
}
\description{
This is a wrapper to put HTML-tag around character string input to be rendered as \emph{italicised} small capital in the output document of an R Markdown file.
}
\examples{
scaps_italics("happiness")
}
