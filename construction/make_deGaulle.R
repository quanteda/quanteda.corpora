## construct the deGaulle corpus from Labbé, Cyril, Dominique Labbé, and Pierre
## Hubert. 2004. “Automatic Segmentation of Texts and Corpora.” Journal of
## Quantitative Linguistics 11(3): 193–213.
##
## I want to run some tests to replicate their Figure 8.
##
## These texts can be obtained from the University of Oxford Text Archive 
## at <http://www.ota.ox.ac.uk/desc/2466>.
##
## To get the docvars I copied "Annexe 1" from the file "Documentation/Corpus deGaulle.doc",
## worked with it a bit in a spreadsheet editor, and saved it as deGaulleData.csv in 
## comma-separated-value format.

library(quanteda)

# the "pattern" needs to be set to "*" to pick up all files, since it defaults to *.txt
deGaulle <- corpus(directory("~/Dropbox/QUANTESS/corpora/2466/2466/LEXICOMETRIEO/DeGaulle/DeGaulleTXT"),
                   pattern="*",
                   notes="Downloaded from University of Oxford Text Archive <http://www.ota.ox.ac.uk/desc/2466>",
                   source="Labbé, Cyril, Dominique Labbé, and Pierre Hubert. 2004. Automatic Segmentation \nof Texts and Corpora. Journal of Quantitative Linguistics 11(3): 193–213.")

# from the command-line (unix) "file" utility, I have pretty good info that these files
# are encoded as Latin-1, a.k.a. ISO-8859-1.  This will convert them to UTF-8.
texts(deGaulle) <- iconv(texts(deGaulle), from="LATIN1", to="UTF-8")
encoding(deGaulle) <- "UTF-8" # and tell the metadata about this

# read the document variables into a data.frame
myd <- read.csv("~/Dropbox/QUANTESS/quantedaData_kenlocal_gh/construction/deGaulleData.csv",
                header=TRUE, stringsAsFactors=FALSE)

myd$Date <- as.Date(myd$Date) # convert "Date" string into a Date class
docvars(deGaulle) <- myd      # assign the docvars - this will automatically 
                              # use the data.frame variable names for "field"
summary(deGaulle, showmeta=TRUE)

# save in the data directory
# save(deGaulle, file="~/Dropbox/QUANTESS/quantedaData_kenlocal_gh/data/deGaulle.Rdata")

## Try to recreate their Figure 8.
## (Clearly we do not have the same series.  I hope.)
plot(docvars(deGaulle, "Date"), 
     scale(statLexdiv(dfm(deGaulle, verbose=FALSE)))[,1], 
     type="l", xlab="", ylab="Standardized TTR",
     ylim=c(-7,5))
abline(h=0)
abline(h=c(2.56, -2.56), lty="dotted")
