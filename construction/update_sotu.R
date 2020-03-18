# needs to be re-run each year, with new speeches

library("quanteda")

tmp <- c(data_corpus_sotu, 
         corpus(readtext::readtext("~/Dropbox/QUANTESS/corpora/SOTU/Trump-2020.txt")))


meta(data_corpus_sotu) <- list(
    title = "U.S. State of the Union addresses from 1790 to present",
    description = "A corpus object of every US State-of-the-Union address, from 1790 to present. Where interjections or records of audience reaction occurred, such as \"(Applause.)\", these have been removed.  Includes first and last name, date, delivery type (written or spoken), the address type (SOTU or other), and the President's party.",
    source = 'Gerhard Peters and John T. Woolley. The American Presidency Project.',
    keywords = c("political", "US politics", "United States", "presidents", "presidency", "state of the union"),
    url = "https://www.presidency.ucsb.edu/documents/presidential-documents-archive-guidebook/annual-messages-congress-the-state-the-union"
)

data_corpus_sotu <- quanteda:::add_summary_metadata(data_corpus_sotu, extended = TRUE)

usethis::use_data(data_corpus_sotu, overwrite = TRUE)



