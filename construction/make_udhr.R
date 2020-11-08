require(quanteda)
require(XML)
require(stringi)

# https://unicode.org/udhr/index.html
dat <- data.frame()
for (f in list.files("sources/udhr/", pattern = "udhr_.*\\.xml")) {
  txt <- txt_pre <- character()
  xml <- htmlParse(paste0("sources/udhr/", f), encoding = "utf-8")
  if (length(getNodeSet(xml, "//preamble//title")) != 1)
    cat("Different format of preamble in", f, "\n")
  txt <- sapply(getNodeSet(xml, "//preamble//title"), xmlValue)
  txt_pre <- sapply(getNodeSet(xml, "//preamble//para"), xmlValue)
  txt <- c(txt, paste(txt_pre, collapse = "\n"))
  txt <- c(txt, sapply(getNodeSet(xml, "//article//*[self::title or self::para]"), xmlValue))
  temp <- data.frame(
    Key = f,
    Name = unlist(getNodeSet(xml, "//udhr/@n"), use.names = FALSE),
    ISO = unlist(getNodeSet(xml, "//udhr/@iso639-3"), use.names = FALSE),
    Direction = unlist(getNodeSet(xml, "//udhr/@dir"), use.names = FALSE),
    text = paste(txt, collapse = "\n\n")
   )
  dat <- rbind(dat, temp)
}

dat$Key <- stri_trans_tolower(dat$Key)
dat$Key <- stri_replace_first_fixed(dat$Key, "udhr_", "")
dat$Key <- stri_replace_first_fixed(dat$Key, ".xml", "")
Encoding(dat$text) <- "UTF-8"
Encoding(dat$Name) <- "UTF-8"

data_corpus_udhr <- corpus(dat)
# would be better to have a different naming scheme
docnames(data_corpus_udhr) <- dat$Key

metacorpus(data_corpus_udhr) <- list(
  title = "Universal Declaration of Human Rights in multiple languages",
  description = "The Universal Declaration of Human Rights in 464 languages. The files where downloaded from https://unicode.org/udhr/. These have been converted into plain text format by the UDHR in Unicode Project.",
  source = "The UDHR in Unicode Project.  https://unicode.org/udhr/.",
  url = "https://unicode.org/udhr/translations.html",
  author = "UDHR in Unicode Project", 
  keywords = c("UDHR", "unicode") 
)

usethis::use_data(data_corpus_udhr, overwrite = TRUE)
