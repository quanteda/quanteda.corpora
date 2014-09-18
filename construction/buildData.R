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
dvn <- c("year", "debate", "number", "namefirst", "namelast", "party")
ie2010Corpus <- corpus(d, docvarsfrom ="filenames", docvarnames = dvn, sep = "_")
save(ie2010Corpus, file=".//data//ie2010Corpus.RData")


# all Irish budgets
d <- directory("~/Dropbox/QUANTESS/corpora/iebudgets/all")
dvn <- c("year", "debate", "number", "namefirst", "namelast", "party")
iebudgets <- corpus(d, docvarsfrom ="filenames", docvarnames = dvn, sep = "_")
save(iebudgets, file=".//data//iebudgets.RData")

# movie reviews
d <- directory("/home/paul/Dropbox/QUANTESS/corpora/movieReviews/smaller/all")
dvn <- c("Sentiment", "id1", "id2")
movies <- corpus(d, docvarsfrom ="filenames", docvarnames = dvn, sep = "_")
save(movies, file=".//data//movies.RData")

# uk manifestos
d <- directory("~/Dropbox/QUANTESS/corpora/ukManRenamed")
dvn <- c("Country", "Type", "Year", "Language", "Party")
ukManifestos <- corpus(d, docvarsfrom ="filenames", docvarnames = dvn, sep = "_")
save(ukManifestos, file=".//data//ukManifestos.RData")

# UK Immigration news corpus (this is from in-memory data )
load(file="broken/newsCorpus.RData")
texts <- newsCorpus$attribs$texts
attribs <- newsCorpus$attribs[,2:4]
immigNewsCorpus <- corpus(texts, attribs, docnames=rownames(attribs), enc="UTF-8")
save(immigNewsCorpus, file=".//data//immigNewsCorpus.RData")





