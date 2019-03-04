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
#' @format 
#'   The corpus consists of 100 texts and includes the following document variables: \describe{
#'   \item{trainclass}{A character indicating the class of 4 documents 
#'   that can be used to train a classifier (the remaining ones are NA);
#'   P: Pro-Petitioner; R: Pro-Respondent.}
#'   \item{testclass}{A character indicating the "true" class of 96 remaining documents 
#'   to assess the prediction of the classification; AP: Pro-Petitioner; AR: Pro-Respondent.}
#'   }
#' @references Evans, M., McIntosh, W., Lin, J., & Cates, C. (2007). 
#'   "\href{https://doi.org/10.1111/j.1740-1461.2007.00113.x}{Recounting the Courts? Applying
#'   Automated Content Analysis to Enhance Empirical Legal Research}." 
#'   \emph{Journal of Empirical Legal Studies} 4(4): 1007--1039.
#' @keywords data
"data_corpus_amicus"


#' Annual budget speeches from the Dáil Éireann, 2008-2012
#' 
#' Speeches and document-level variables from Irish budget debates held annually
#' in Dáil Éireann (the Irish Parliament), for the years 2008--2012.
#' @format The corpus includes the following document variables: \describe{
#'   \item{year}{4-digit year of the debate.}
#'   \item{debate}{Character indicating whether the debate concerned a main debate 
#'   (\code{"BUDGET"} or supplementary budget \code{"BUDGETSUP"}).}
#'   \item{number}{Two-digit number as a character, indicating the order of the speech within the debate.}
#'   \item{namefirst}{First name of the speaker.}
#'   \item{namelast}{Last name of the speaker.}
#'   \item{party}{A character abbreviation of the political party of the speaker.}
#'   }
#' @references Herzog, A. & Kenneth, K. (2015). 
#'   "\href{http://www.kenbenoit.net/pdfs/Herzog_Benoit_JOP_2015.pdf}{The Most 
#'   Unkindest Cuts: Speaker Selection and Expressed Government Dissent During 
#'   Economic Crisis}." \emph{The Journal of Politics} 77(4): 1157--1175.
#'   
#'   Lowe, W. & Benoit, K. (2013). 
#'   "\href{http://www.kenbenoit.net/pdfs/Political\%20Analysis-2013-Lowe-298-313.pdf}{Validating
#'    Estimates of Latent Traits From Textual Data Using Human Judgment as a 
#'   Benchmark}." \emph{Political Analysis} 21(3): 298-313.
"data_corpus_irishbudgets"


#' UK news articles (2,833) from 2014 that mention immigration
#' 
#' A corpus of articles form the UK press in 2014 that mention immigration.
#' @format 
#'  The corpus consists of 2,883 documents and includes the following document variables: \describe{
#'  \item{paperName}{Character indicating the newspaper.}
#'  \item{day}{Number of days from Jan 1st 2014.}
#'  \item{id}{Unique identifier.}
#'  }
#' @references Nulty, P. & Poletti, M. (2014). "The Immigration Issue in the UK in the 2014 
#'   EU Elections: Text Mining the Public Debate." Presentation at LSE Text Mining Conference 2014.
"data_corpus_immigrationnews"


#' Movie reviews from Pang, Lee, and Vaithyanathan (2002)
#' 
#' A corpus object containing 2,000 movie reviews classified by positive or negative sentiment.
#'  @format 
#'   The corpus includes the following document variables: \describe{
#'   \item{Sentiment}{Character indicating whether a review was manually classified as 
#'   positive \code{pos} or negative \code{neg}.}
#'   \item{id1}{Character counting the position in the corpus.}
#'   \item{id2}{Random number for each review.}
#'   }
#' @references Pan, B., Lee, L., & Vaithyanathn, S. (2002). 
#'    "\href{http://dl.acm.org/citation.cfm?id=1118704}{Thumbs Up? Sentiment Classification Using
#'    Machine Learning Techniques}." \emph{Proceedings of the ACL-02 conference on 
#'    Empirical methods in natural language processing}: 79--86.
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
#'   format. See Source.}
#'   \item{type}{Either \code{SOTU} for an official State of the Union Address,
#'   or \code{other}, for a different form of speech or message. See Source.}
#'   \item{party}{President's party.}
#'   }
#' @source The American Presidency Project,
#'   \url{http://www.presidency.ucsb.edu/sou.php}.
"data_corpus_sotu"


#' UK political party manifestos, 1945--2005
#' 
#' A corpus object containing 105 UK Manifestos from 1945--2005, with party and year attributes
#' @format 
#'   The corpus includes the following document variables: \describe{
#'   \item{Country}{Country name (UK).}
#'   \item{Type}{Character indicating the type of election: national (\code{natl}) or regional (\code{regl}.}
#'   \item{Language}{Language (\code{en}).}
#'   \item{Party}{A character abbreviation of the political party.}
#'   }
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
#'   \item{un_session}{UN session, a numeric identifier (in this case, 72)}
#'   \item{year}{4-digit year (2017).}
#'   \item{country}{Country name, in English.}
#'   \item{continent}{Continent of the country, one of: Africa, Americas, Asia,
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
