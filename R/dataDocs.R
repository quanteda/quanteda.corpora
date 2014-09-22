#' @name quantedaData
#' @docType package
#' @title An R package containing texts and corpora for \link[quanteda]{quanteda}.
#' @author Ken Benoit and Paul Nulty
#' @description A set of texts and corpus objects for use with the quanteda R package.
#' @seealso \link[quanteda]{quanteda}
NULL

#' @name amicusCorpus
#' @aliases amicus
#' @title amicus curiae briefs from Bakke (1978) and Bollinger (2008) 
#' @description Texts of amicus curiae briefs labelled as being either pro-petitioner or pro-respondent
#' in US Supreme court cases on affirmative action,
#' Bakke (1978) and Bollinger (2008), taken from Evans et al (2007).
#' @format \code{amicusCorpus} is corpus with 100 texts, and \code{docvar} set for petitioner/respondent
#' \cr \cr \code{amicusTexts} is the same set of texts as a named character vector
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
#' @examples
#' data(exampleString)
#' clean(exampleString)
NULL


#' @name ieTextsHeaders
#' @rdname iebudgets
#' @docType data
NULL

#' @name ieTexts
#' @rdname iebudgets
#' @docType data
NULL

#' @name ieDocvars
#' @rdname iebudgets
#' @docType data
NULL


#' @name iebudgets
#' @aliases ieTexts ieDocvars ie2010Corpus
#' @title Irish budget speeches
# @usage data(iebudgets) data(ieTexts) data(ieDocvars) data(ie2010Corpus)
#' @description Speeches and document-level variables from Irish budget debates
#'   held annually, for the years 2008-2012.
#' @format \code{iebudgets} is the corpus object for the 2008-2012 budget
#' speeches, with document-level variables for year, debate, serial number,
#' first and last name of the speaker, and the speaker's party. \cr \cr 
#' \code{ieTexts} is a character vector of five budget speeches for
#' experimenting with corpus construction.\cr \cr \code{ieDocvars} is a data
#' frame of document-level variables for experimenting with corpus construction.
#' \cr \cr \code{ie2010Corpus} is the subset for the 2010 budget speeches from
#' Lowe and Benoit (2013)
#' @references Alexander Herzog and Kenneth Benoit. 2013.
#' 
#' "\href{http://papers.ssrn.com/sol3/Delivery.cfm/SSRN_ID2281311_code1869090.pdf?abstractid=2225069&mirid=1}{The
#' Most Unkindest Cuts: Government Cohesion and Economic Crisis.}" Paper
#' prepared for presentation at the 3rd Annual General Conference of the
#' European Political Science Association, 20-22 June 2013, Barcelona. \cr \cr 
#' Lowe, Will and Kenneth Benoit. 2013. 
#' 
#' "\href{http://www.kenbenoit.net/pdfs/Political%20Analysis-2013-Lowe-298-313.pdf}{Validating
#' Estimates of Latent Traits From Textual Data Using Human Judgment as a
#' Benchmark.}" \emph{Political Analysis} 21: 298–313.
#' 
#' @docType data
#' @examples 
#' # load the Irish budget speeches
#' data(iebudgets)
#' ie2010corp <- subset(iebudgets, year==2010)  # just the 2010 speeches
#' summary(ie2010corp)
#' summary(subset(iebudgets, no=="02"))  # just the Finance Minister (always first)
#'                                      # note that "no" is a factor, not integer
#' 
#' # create a corpus (just five speeches)
#' mycorpus <- corpus(ieTexts, docvars=ieDocvars)
#' summary(mycorpus)
NULL

#' @name immigNewsCorpus
#' @title UK news articles (2833) from 2014 that mention immigration
#' @description A corpus of articles form the UK press in 2014 that mention the 
#'   immigration. See working paper: 
#'   "\href{https://github.com/pnulty/LSEtext/blob/master/NultyPoletti.pdf}{The
#'   Immigration Issue in the European Electoral Campaign in the UK: Text-Mining
#'   Public Debate from Newspapers and Social Media}"
#' @format \code{immigNewsCorpus} is corpus with 2833 texts, and \code{docvars}
#'   set for \code{paperName}, \code{day}, and \code{id}. \code{day} is the
#'   number of days from Jan 1st 2014.
#' @docType data
NULL



#' @name movies
#' @title movie reviews from Pang, Lee, and Vaithyanathan (2002)
#' @docType data
#' @description A corpus object containing 2000 movie reviews classified by positive or negative sentiment
#' @references \url{http://dl.acm.org/citation.cfm?id=1118704}
NULL

#' @name ukManifestos
#' @title A corpus object containing 105 UK Manifestos
#' @docType data
#' @description A corpus object containing 105 UK Manifestos from 1945-2005, with party and year attributes
# @references As used in Laver, Michael. 1998a. \'Party Policy in Britain, 1997: Results from an Expert Survey.\' Political Studies 46: 336–47.
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
