# a script to rebuild data objects

library(quanteda)

# build amicus texts corpus as in original manpage
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


# 2010 Irish budgets
d <- directory("~/Dropbox/QUANTESS/corpora/iebudgets/budget_2010")
dvm <- c("year", "debate", "number", "foren", "name", "party")
ie2010Corpus <- corpus(d, docvarsfrom ="filenames", docvarnames = dvm, sep = "_")
save(ie2010Corpus, file=".//data//ie2010Corpus.RData")


# all Irish budgets
d <- directory("~/Dropbox/QUANTESS/corpora/iebudgets/all")
dvm <- c("year", "debate", "number", "foren", "name", "party")
iebudgets <- corpus(d, docvarsfrom ="filenames", docvarnames = dvm, sep = "_")
save(iebudgets, file=".//data//iebudgets.RData")



d <- directory("~/Dropbox/QUANTESS/corpora/movieReviews/movies_sample/all")
dvm <- c("Sentiment", "id1", "id2")
movies <- corpus(d, docvarsfrom ="filenames", docvarnames = dvm, sep = "_")
save(movies, file=".//data//movies.RData")







