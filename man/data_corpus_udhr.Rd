% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{data_corpus_udhr}
\alias{data_corpus_udhr}
\title{Universal Declaration of Human Rights}
\format{
The corpus includes the following document variables: \describe{
\item{Key}{“Key” is the internal key used in the "UDHR in Unicode" database
to identify the translations. It has no meaning or relation to any system of
tags.}
\item{Name}{The \href{http://ethnologue.com/}{Ethnologue} entry for the
language. This is the primary language name given by the
Ethnologue, may be followed by a qualifier in parenthesis. You may want to
consult the Ethnologue to determine the primary language name if you have
difficulty finding a translation by language name.}
\item{ISO}{ISO 639-3 code of the language}
\item{Direction}{Text runs from left-to-right (ltr) or right-to-left (rtl)}
}
}
\source{
The UDHR in Unicode Project \url{https://unicode.org/udhr/}
}
\usage{
data_corpus_udhr
}
\description{
A corpus object containing the Universal Declaration of Human Rights in 464
languages.  The files where downloaded from \url{https://unicode.org/udhr/}.
These have been converted into plain text format by the UDHR in Unicode
Project.
}
\details{
This corpus only includes texts in the stage 4 or 5 of conversion to Unicode in the project.  See
\url{https://unicode.org/udhr/translations.html} for details.
}
\keyword{datasets}
