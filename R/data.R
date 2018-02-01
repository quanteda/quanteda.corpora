#' An R package containing texts and corpora for \link[quanteda]{quanteda}.
#' 
#' A set of texts and corpus objects for use with the quanteda R package.
#' @seealso \link[quanteda]{quanteda}
"_PACKAGE"

#' Amicus curiae briefs from Bakke (1978) and Bollinger (2008)
#' 
#' Texts of amicus curiae briefs labelled as being either pro-petitioner or
#' pro-respondent in US Supreme court cases on affirmative action, Bakke (1978)
#' and Bollinger (2008), taken from Evans et al (2007).
#' @format \code{amicusCorpus} is corpus with 100 texts, and \code{docvar} set
#'   for petitioner/respondent
#' @references Evans, Michael, et al. 2007. "Recounting the courts? Applying
#'   automated content analysis to enhance empirical legal research." 
#'   \emph{Journal of Empirical Legal Studies} 4(4): 1007-1039.
#' @keywords data
"data_corpus_amicus"


#' Annual budget speeches from the Irish Dail, 2008-2012
#' 
#' Speeches and document-level variables from Irish budget debates held 
#' annually, for the years 2008-2012.
#' @format \code{year} 4-digit year of the debate; \code{debate} character 
#'   indicating whether the debate concerned a main debate (\code{"BUDGET"} or
#'   supplementary budget \code{"BUDGETSUP"}); \code{number} two-digit number as
#'   a character, indicating the order of the speech within the debate;
#'   \code{namefirst} and \code{namelast} first and last name of the speaker;
#'   and \code{party} a character abbrevation of the political party of the speaker.
#' @references Alexander Herzog and Kenneth Benoit. 2015. 
#'   "\href{http://www.kenbenoit.net/pdfs/Herzog_Benoit_JOP_2015.pdf}{The Most 
#'   Unkindest Cuts: Speaker Selection and Expressed Government Dissent During 
#'   Economic Crisis}". \emph{Journal of Politics} 77(4, October): 1157-1175.
#'   
#'   Lowe, Will and Kenneth Benoit. 2013. 
#'   "\href{http://www.kenbenoit.net/pdfs/Political\%20Analysis-2013-Lowe-298-313.pdf}{Validating
#'    Estimates of Latent Traits From Textual Data Using Human Judgment as a 
#'   Benchmark.}" \emph{Political Analysis} 21: 298-313.
"data_corpus_irishbudgets"


#' UK news articles (2,833) from 2014 that mention immigration
#' 
#' A corpus of articles form the UK press in 2014 that mention the 
#'   immigration. See working paper: 
#'   "\href{https://github.com/pnulty/LSEtext/blob/master/NultyPoletti.pdf}{The
#'   Immigration Issue in the European Electoral Campaign in the UK: Text-Mining
#'   Public Debate from Newspapers and Social Media}"
#' @format \code{immigNewsCorpus} is corpus with 2833 texts, and \code{docvars}
#'   set for \code{paperName}, \code{day}, and \code{id}. \code{day} is the
#'   number of days from Jan 1st 2014.
"data_corpus_immigrationnews"


#' Movie reviews from Pang, Lee, and Vaithyanathan (2002)
#' 
#' A corpus object containing 2000 movie reviews classified by positive or negative sentiment
#' @references \url{http://dl.acm.org/citation.cfm?id=1118704}
#' @keywords data
#' @docType data
"data_corpus_movies"



#' U.S. State of the Union addresses from 1790 to 2016
#' 
#' A corpus object of every US State-of-the-Union address, from 1790
#'   to present. 
#' @format 
#'   The corpus includes the following document variables: \describe{
#'   \item{FirstName}{President's first and middle names.}
#'   \item{President}{President's last name.}
#'   \item{Date}{Date of the delivery of the speech or document.}
#'   \item{delivery}{Either \code{written} or \code{spoken}, depending on the
#'   format.  See Source.}
#'   \item{type}{Either \code{SOTU} for an official State of the Union Address,
#'   or \code{other}, for a different form of speech or message. See Source.}
#'   \item{party}{President's party.}
#'   }
#' @source The American Presidency Project,
#'   \url{http://www.presidency.ucsb.edu/sou.php}.
"data_corpus_sotu"


#' UK political party manifestos, 1945-2005
#' 
#' A corpus object containing 105 UK Manifestos from 1945-2005, with party and year attributes
#' @references As used in Laver, Michael. 1998a. \'Party Policy in Britain, 1997: Results from an Expert Survey.\' Political Studies 46: 336–47.
"data_corpus_ukmanifestos"

