
#' @name amicusCorpus
#' @title amicus curiae briefs from Bakke (1978) and Bollinger (2008) 
#' @description Texts of petitioner and respondent briefs to two US Supreme court cases on affirmative action: 
#' Bakke (1978) and Bollinger (2008), taken from Evans et al (2007)
#' @format \code{amicusCorpus} is corpus with 100 texts, and \code{docvar} set for petitioner/respondent
#' \cr \code{amicusTexts} is the same set of texts as a named character vector
#' @references Evans, Michael, et al. 2007. "Recounting the courts? Applying automated content analysis to enhance empirical legal research." Journal of Empirical Legal Studies 4(4): 1007-1039.
#' @docType data
NULL

#' @name amicusTexts
#' @rdname amicusCorpus
#' @docType data
NULL


#' @name exampleString
#' @title A paragraph of text for testing various text-based functions
#' @description This is a long paragraph (2,914 characters) of text taken from an Irish budget speech by Joe Higgins
#' @format character vector with one element
#' @docType data
NULL


# @name ieAttribs
# @title A vector of attributes to match ieBudget documents
# @description This is a small vector of attributes for use in examples with ieBudgets
# @format a dataframe of attributes, 5 obs. of 6 variables 
# @docType data
NULL


# @name ieTextsHeaders
# @title Irish budget speeches headers
# @description This is a small vector of texts for use in examples with corpusFromHeaders
# @format character vector of 14 texts with JSON headers for use in example
# @docType data
NULL

# @name ieTexts
# @title Irish budget speeches texts
# @description This is a small vector of texts from the ieBudget corpus for use with testing examples
# @format character vector of 5 texts
# @docType data
NULL

#' @name iebudgets
#' @title Irish budget speeches corpus
#' @description A corpus containing speeches from Irish budget debates in 2008-2012. Each text has document
#' variables set for party, speaker and year 
#' @references \url{http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2225069}
#' @docType data
NULL

#' @name ie2010Corpus
#' @title Irish budget speeches corpus, only the 2010 speeches
#' @description A corpus containing speeches from Irish budget debates in 2010. Each text has document
#' variables set for party, speaker and year 
#' @references \url{http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2225069}
#' @docType data
NULL

#' @name movies
#' @title movie reviews from Pang, Lee, and Vaithyanathan (2002)
#' @docType data
#' @description A corpus object containing 2000 movie reviews classified by positive or negative sentiment
#' @references \url{http://dl.acm.org/citation.cfm?id=1118704}
NULL


#' @name UKManifestos
#' @title A corpus object containing 105 UK Manifestos
#' @docType data
#' @description A corpus object containing 105 UK Manifestos from 1945-2005, with party and year attributes
# @references As used in Laver, Michael. 1998a. \'Party Policy in Britain, 1997: Results from an Expert Survey.\' Political Studies 46: 336–47.
NULL

#' @name uk2010immig
#' @title Immigration-related sections of 2010 UK party manifestos
#' @docType data
#' @description Extracts from the election manifestos of 9 UK political parties from 2010, related
#' to immigration or asylum-seekers.
#' @format A named character vector of plain ASCII texts
#' @examples
#' data(uk2010immig)
#' uk2010immigCorpus <- corpus(uk2010immig, docvars=list(party=names(uk2010immig)))
#' language(uk2010immigCorpus) <- "english"
#' encoding(uk2010immigCorpus) <- "UTF-8"
#' summary(uk2010immigCorpus)
NULL


#' @name LBGexample
#' @docType data
#' @title Example data from Laver Benoit and Garry (2003)
#' @description Example data to demonstrate the Wordscores algorithm, from Laver Benoit and Garry (2003)
#' @details This is the example word count data from Laver,
#'  Benoit and Garry's (2003) Table 1. Documents R1 to R5 are assumed to have known
#'  positions: -1.5, -0.75, 0, 0.75, 1.5.  Document V1 is assumed
#'  unknown, and will have a raw text score of approximately -0.45 when computed
#'  as per LBG (2003).  
#' @format A \link{dfm} object with 6 documents and 37 features
#' @references Laver, Michael, Kenneth Benoit, and John Garry.  2003. "\href{http://www.kenbenoit.net/pdfs/WORDSCORESAPSR.pdf}{Estimating policy positions from
#' political text using words as data.}" American Political Science Review 97(2): 311-331.
NULL
