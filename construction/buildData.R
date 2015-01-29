# a script to rebuild data objects

library(quanteda)

# build amicus texts corpus as in original manpage
amicusTexts<- c(getTextDir("~/Dropbox/QUANTESS/corpora/amicus/training"), getTextDir("~/Dropbox/QUANTESS/corpora/amicus/testing"))
amicusTexts <- iconv(amicusTexts, from="latin1", to="UTF-8")
amicusCorpus <- corpus(amicusTexts)
trainclass <- factor(c("P","P","R", "R", rep(NA, length(amicusTexts)-4)))
testclass  <- rep(NA, length(amicusTexts))
testclass[grep("AP", names(amicusTexts))] <- "AP"
testclass[grep("AR", names(amicusTexts))] <- "AR"
amicusCorpus <- corpus(amicusTexts, enc="UTF-8", docvars=list(trainclass=trainclass, testclass=testclass))
save(amicusCorpus, file=".//data//amicusCorpus.RData")

# inaugural speech texts and corpus
#save(inaugTexts, file=".//data//inaugTexts.RData")

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
iebudgetsCorpus <- iebudgets
save(iebudgetsCorpus, file=".//data//iebudgetsCorpus.RData")




# movie reviews
d <- directory("~/Dropbox/QUANTESS/corpora/movieReviews/smaller/all")
dvn <- c("Sentiment", "id1", "id2")
moviesCorpus <- corpus(d, docvarsfrom ="filenames", docvarnames = dvn, sep = "_")
save(moviesCorpus, file=".//data//moviesCorpus.RData")

# uk manifestos
d <- directory("~/Dropbox/QUANTESS/corpora/ukManRenamed")
dvn <- c("Country", "Type", "Year", "Language", "Party")
ukManifestos <- corpus(d, docvarsfrom ="filenames", docvarnames = dvn, sep = "_")
save(ukManifestos, file=".//data//ukManifestos.RData")
ukManifestosCorpus <- ukManifestos
save(ukManifestosCorpus, file=".//data//ukManifestosCorpus.RData")


# UK Immigration news corpus (this is from in-memory data )
load(file="broken/newsCorpus.RData")
texts <- newsCorpus$attribs$texts
attribs <- newsCorpus$attribs[,2:4]
immigNewsCorpus <- corpus(texts, attribs, docnames=rownames(attribs), enc="UTF-8")
save(immigNewsCorpus, file=".//data//immigNewsCorpus.RData")

# Laver-Benoit-Garry toy example
library(austin)
data(lbg)
LBGexample <- lbg
save(LBGexample, file=".//data//LBGexample.RData")


# state of the union addresses from JSON

library(jsonlite)
path <- '~/Dropbox/QUANTESS/Manuscripts/Collocations/Corpora/sotu/sotu.json'
raw <- readLines(path)
parsed <- lapply(raw, fromJSON)
mat <- matrix(unlist(parsed), nrow=31, ncol=5, byrow=TRUE)
txts <- mat[,2]
atts <- mat[,-2]
SOTUCorpus <- corpus(txts)
docvars(SOTUCorpus, field="party") <- atts[,1]
docvars(SOTUCorpus, field="name") <- atts[,3]
docvars(SOTUCorpus, field="year") <- atts[,4]
docnames(SOTUCorpus) <- paste(docvars(SOTUCorpus, field="name"),
                              docvars(SOTUCorpus, field="year"), sep="-")
save(SOTUCorpus, file=".//data//SOTUCorpus.RData")


library(jsonlite)
path <- "/Users/kbenoit/Dropbox/QUANTESS/corpora/Federalist\ Papers/federalist.json"
raw <- readLines(path)
parsed <- lapply(raw, fromJSON)
length(parsed)
str(parsed[1])

texts <- sapply(parsed, `[[`, 5)
metadata <- do.call(rbind, parsed)




