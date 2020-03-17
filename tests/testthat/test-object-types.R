context("Check that objects are correct type")

test_that("objects are correct type", {
    expect_is(data_corpus_amicus, "corpus")
    expect_is(data_corpus_immigrationnews, "corpus")
    expect_is(data_corpus_irishbudgets, "corpus")
    expect_is(data_corpus_sotu, "corpus")
    expect_is(data_corpus_ukmanifestos, "corpus")
    expect_is(data_corpus_ungd2017, "corpus")
})
