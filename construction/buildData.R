# a script to rebuild data objects

library(quanteda)
amicusTexts<- c(getTextDir("~/Dropbox/QUANTESS/corpora/amicus/training"), getTextDir("~/Dropbox/QUANTESS/corpora/amicus/testing"))
amicusTexts <- iconv(amicusTexts, from="latin1", to="UTF-8")
save(inaugTexts, file=".//data//inaugTexts.RData")

amicusCorpus <- corpus(amicusTexts)

trainclass <- factor(c("P","P","R", "R", rep(NA, length(amicusTexts)-4)))
testclass  <- rep(NA, length(amicusTexts))
testclass[grep("AP", names(amicusTexts))] <- "AP"
testclass[grep("AR", names(amicusTexts))] <- "AR"


amicusCorpus <- corpus(amicusTexts, enc="UTF-8", docvars=list(trainclass=trainclass, testclass=testclass))

save(amicusCorpus, file=".//data//amicusCorpus.RData")


d <- directory("~/Dropbox/QUANTESS/corpora/iebudgets/budget_2010")
dvm <- c("year", "debate", "number", "foren", "name", "party")
ie2010Corpus <- corpus(d, docvarsfrom ="filenames", docvarnames = dvm, sep = "_")

save(ie2010Corpus, file=".//data//ie2010Corpus.RData")



d <- directory("~/Dropbox/QUANTESS/corpora/iebudgets/budget_2010")
dvm <- c("year", "debate", "number", "foren", "name", "party")
ie2010Corpus <- corpus(d, docvarsfrom ="filenames", docvarnames = dvm, sep = "_")

save(ie2010Corpus, file=".//data//ie2010Corpus.RData")

