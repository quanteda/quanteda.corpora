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
    doc_id = f,
    langauge = unlist(getNodeSet(xml, "//udhr/@iso639-3"), use.names = FALSE),
    note = unlist(getNodeSet(xml, "//udhr/@n"), use.names = FALSE),
    text = paste(txt, collapse = "\n\n")
   )
  dat <- rbind(dat, temp)
}

dat$doc_id <- stri_trans_tolower(dat$doc_id)
dat$doc_id <- stri_replace_first_fixed(dat$doc_id, "udhr_", "")
dat$doc_id <- stri_replace_first_fixed(dat$doc_id, ".xml", "")
Encoding(dat$text) <- "UTF-8"

dat$id <- dat$doc_id
colnames(dat)[1:3] <- c("Key", "ISO", "Name")
data_corpus_udhr <- corpus(dat, docid_field = "Key")

metacorpus(data_corpus_udhr, "source") <- "The UDHR in Unicode Project"
metacorpus(data_corpus_udhr, "notes") <- "https://unicode.org/udhr/"

# reorder docvars
data_corpus_udhr <- 
  quanteda.tidy::relocate(data_corpus_udhr, Key, Name, ISO)

usethis::use_data(data_corpus_udhr, overwrite = TRUE)
