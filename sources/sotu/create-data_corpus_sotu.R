## make the SOTU corpus

library("quanteda")

SOTUdocvars <- read.csv("sources/sotu/SOTU_metadata.csv", stringsAsFactors = FALSE)
SOTUdocvars$Date <- as.Date(SOTUdocvars$Date, "%B %d, %Y")
SOTUdocvars$delivery <- as.factor(SOTUdocvars$delivery)
SOTUdocvars$type <- as.factor(SOTUdocvars$type)
SOTUdocvars$party <- as.factor(SOTUdocvars$party)
SOTUdocvars$nwords <- NULL


library("readtext")
SOTUCorpus <- corpus(readtext("sources/sotu/su*.txt"),
                     metacorpus = list(source = "http://www.presidency.ucsb.edu/sou.php"),
                     docid_field = "doc_id")

meta(SOTUCorpus) <- list(
    title = "U.S. State of the Union addresses from 1790 to present", 
    description = "A corpus object of every US State-of-the-Union address, from 1790 to present. Where interjections or records of audience reaction occurred, such as \"(Applause.)\", these have been removed.  Includes first and last name, date, delivery type (written or spoken), the address type (SOTU or other), and the President's party.", 
    source = "Gerhard Peters and John T. Woolley. The American Presidency Project.", 
    keywords = c("political", "US politics", "United States", 
                 "presidents", "presidency", "state of the union"), 
    url = "https://www.presidency.ucsb.edu/documents/app-categories/spoken-addresses-and-remarks/presidential/state-the-union-addresses"
)


# check that docnames and filenames are the same
stopifnot(all.equal(SOTUdocvars$filename, docnames(SOTUCorpus)))

docvars(SOTUCorpus) <- c(docvars(SOTUCorpus), SOTUdocvars)
docnames(SOTUCorpus) <- paste(docvars(SOTUCorpus, "President"), 
                              gsub("su|\\.txt", "", docvars(SOTUCorpus, "filename")), 
                              sep = "-")
docvars(SOTUCorpus, setdiff(names(docvars(SOTUCorpus)), 
                            names(docvars(quanteda.corpora::data_corpus_sotu)))) <- NULL

data_corpus_sotu <- SOTUCorpus

usethis::use_data(data_corpus_sotu, overwrite = TRUE)
