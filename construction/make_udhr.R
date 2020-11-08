require(readtext)
require(quanteda)
require(XML)
require(stringi)

# https://unicode.org/udhr/index.html
dat_text <- readtext("sources/udhr/udhr_*.txt", encoding = "utf-8")
dat_text$doc_id <- stri_trans_tolower(dat_text$doc_id)
dat_text$doc_id <- stri_replace_first_fixed(dat_text$doc_id, "udhr_", "")
dat_text$doc_id <- stri_replace_first_fixed(dat_text$doc_id, ".txt", "")
# remove header 
dat_text$text <- stri_replace_first_regex(dat_text$text, "^.*?---\n\n", "", dotall = TRUE)
# remove indent
dat_text$text <- stri_replace_all_regex(dat_text$text, "^\\p{Z}+", "", multiline = TRUE)
# more than three new lines
dat_text$text <- stri_replace_all_regex(dat_text$text, "\n\n\n+", "\n\n", multiline = TRUE)
Encoding(dat_text$text) <- "UTF-8"

xml <- xmlParse("sources/udhr/index.xml")
dat_meta <- data.frame(doc_id = unlist(getNodeSet(xml, "//udhr/@f"), use.names = FALSE),
                       langauge = unlist(getNodeSet(xml, "//udhr/@iso639-3"), use.names = FALSE),
                       note = unlist(getNodeSet(xml, "//udhr/@n"), use.names = FALSE),
                       stage = as.integer(unlist(getNodeSet(xml, "//udhr/@stage"), use.names = FALSE)))
Encoding(dat_meta$note) <- "UTF-8"
dat_meta$doc_id <- stri_trans_tolower(dat_meta$doc_id)

dat <- merge(dat_meta, dat_text, by = "doc_id", sort = FALSE)
dat <- subset(dat, stage >= 4)
dat$id <- dat$doc_id
colnames(dat)[1:4] <- c("DocID", "LangID", "Note", "Stage")
data_corpus_udhr <- corpus(dat, docid_field = "id")

metacorpus(data_corpus_udhr, "source") <- "The UDHR in Unicode Project"
metacorpus(data_corpus_udhr, "notes") <- "https://unicode.org/udhr/"

usethis::use_data(data_corpus_udhr, overwrite = TRUE)
