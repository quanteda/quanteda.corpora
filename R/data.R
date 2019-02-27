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


#' Annual budget speeches from the Dáil Éireann, 2008-2012
#' 
#' Speeches and document-level variables from Irish budget debates held annually
#' in Dáil Éireann (the Irish Parliament), for the years 2008-2012.
#' @format \code{year} 4-digit year of the debate; \code{debate} character 
#'   indicating whether the debate concerned a main debate (\code{"BUDGET"} or
#'   supplementary budget \code{"BUDGETSUP"}); \code{number} two-digit number as
#'   a character, indicating the order of the speech within the debate;
#'   \code{namefirst} and \code{namelast} first and last name of the speaker;
#'   and \code{party} a character abbreviation of the political party of the speaker.
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
#' A corpus of articles form the UK press in 2014 that mention 
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


#' U.S. State of the Union addresses from 1790 to present
#' 
#' A corpus object of every US State-of-the-Union address, from 1790 to present.
#' Where interjections or records of audience reaction occurred, such as
#' "(Applause.)", these have been removed.
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
"data_corpus_ukmanifestos"

#' UN General Debate speeches, 2017
#' 
#' A corpus of 196 speeches from the 2017 UN General Debate. The raw corpus with
#' all speeches since 1970 is available at:
#' \url{https://doi.org/10.7910/DVN/0TJX8Y}. The economic data for 2017 (GDP and
#' GDP per capita) are downloaded from the World Bank website.
#' @format 
#'   The corpus includes the following document variables: \describe{
#'   \item{country_iso}{ISO3c country code, e.g. "AFG" for Afghanistan}
#'   \item{un_session}{UN session, a numeric identifer (in this case, 72)}
#'   \item{year}{4-digit year (2017)}
#'   \item{country}{country name, in English}
#'   \item{continent}{continent of the country, one of: Africa, Americas, Asia,
#'   Europe, Oceania. Note that the speech delivered on behalf of the
#'   European Union is coded as "Europe".}
#'   \item{gdp}{GDP in $US for 2017, from the World Bank. Contains missing
#'   values for 9 countries.}
#'   \item{gdp_per_capita}{GDP per capita in $US for 2017, derived from the
#'   World Bank. Contains missing values for 9 countries.}
#'   }
#' @source Mikhaylov, M., Baturo, A., & Dasandi, N. (2017). United Nations
#'   General Debate Corpus. Harvard Dataverse, V4. URL:
#'   \url{https://doi.org/10.7910/DVN/0TJX8Y}.
#' @references Mikhaylov, M., Baturo, A., & Dasandi, N. (2017). United Nations
#'   General Debate Corpus. Harvard Dataverse, V4. URL:
#'   \url{https://doi.org/10.7910/DVN/0TJX8Y}.
#'   
#'   Baturo, A., Dasandi, N., & Mikhaylov, S. (2017).
#'   \href{10.1177/2053168017712821}{Understanding State Preferences With Text
#'   As Data: Introducing the UN General Debate Corpus}. \emph{Research and
#'   Politics} 4(2): 1--9.
"data_corpus_ungd2017"
