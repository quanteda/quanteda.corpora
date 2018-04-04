## make the SOTU corpus

library("quanteda")

SOTUdocvars <- read.csv("sources/data_corpus_SOTU/SOTU_metadata.csv", stringsAsFactors = FALSE)
SOTUdocvars$Date <- as.Date(SOTUdocvars$Date, "%B %d, %Y")
SOTUdocvars$delivery <- as.factor(SOTUdocvars$delivery)
SOTUdocvars$type <- as.factor(SOTUdocvars$type)
SOTUdocvars$party <- as.factor(SOTUdocvars$party)
SOTUdocvars$nwords <- NULL


library("readtext")
SOTUCorpus <- corpus(readtext("sources/data_corpus_SOTU/su*.txt"),
                     metacorpus = list(source = "http://www.presidency.ucsb.edu/sou.php"),
                     docid_field = "doc_id")

# check that docnames and filenames are the same
stopifnot(all.equal(SOTUdocvars$filename, docnames(SOTUCorpus)))

docvars(SOTUCorpus) <- c(docvars(SOTUCorpus), SOTUdocvars)
docnames(SOTUCorpus) <- paste(docvars(SOTUCorpus, "President"), 
                              gsub("su|\\.txt", "", docvars(SOTUCorpus, "filename")), 
                              sep = "-")
docvars(SOTUCorpus, setdiff(names(docvars(SOTUCorpus)), 
                            names(docvars(quanteda.corpora::data_corpus_sotu)))) <- NULL

data_corpus_sotu <- SOTUCorpus

devtools::use_data(data_corpus_sotu, overwrite = TRUE)

