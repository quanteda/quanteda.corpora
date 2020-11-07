require(readtext)
require(quanteda)

# http://research.ics.aalto.fi/cog/data/udhr/
dat <- readtext("sources/udhr/txt/udhr_*.txt", encoding = "utf-8", 
                docvarnames = "id", docvarsfrom = "filenames")
dat$doc_id <- dat$id
dat_name <- read.csv("sources/udhr/languages.txt", sep = "\t", col.names = c("id", "langauge"),
                     encoding = "utf-8")
dat <- merge(dat_name, dat, by = "id", sort = FALSE)
data_corpus_udhr <- corpus(dat, docid_field = "id")

metacorpus(data_corpus_udhr, "source") <- "Tommi Vatanen, Jaakko J. Väyrynen and Sami Virpioja (2010) Language identification of short text segments with n-gram models. In Proceedings of the Seventh International Conference on Language Resources and Evaluation (LREC'10), pages 3423-3430. European Language Resources Association (ELRA)."
metacorpus(data_corpus_udhr, "notes") <- "http://research.ics.aalto.fi/cog/data/udhr/"

usethis::use_data(data_corpus_udhr, overwrite = TRUE)
