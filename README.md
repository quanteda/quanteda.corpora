[![CRAN status](https://www.r-pkg.org/badges/version/quanteda.corpora)](https://cran.r-project.org/package=quanteda.corpora)
[![Travis build status](https://travis-ci.org/quanteda/quanteda.corpora.svg?branch=master)](https://travis-ci.org/quanteda/quanteda.corpora)

# Corpora for quanteda

Package to provide easy access to large corpora for [**quanteda**](http://github.com/quanteda/quanteda).

## How to Install

You can download the files and build the package from source, or you can use the devtools library to install the package directly from GitHub. This is done as follows:

```r
devtools::install_github("quanteda/quanteda.corpora")
```

## Available corpora

Corpora contained in the package are the following:

Corpus | Name
--|--
Amicus curiae briefs from Bakke (1978) and Bollinger (2008) | data_corpus_amicus
Annual budget speeches from the Irish Dáil, 2008-2012 | data_corpus_irishbudgets
UK news articles from 2014 that mention immigration | data_corpus_immigrationnews
Movie reviews from Pang, Lee, and Vaithyanathan (2002) | _moved to_ **quanteda.textmodels** 
U.S. State of the Union addresses from 1790 to present | data_corpus_sotu
UK political party manifestos, 1945-2005 | data_corpus_ukmanifestos
UN General Debate speeches, 2017 | data_corpus_ungd2017
Universal Declaration of Human Rights in 280 languages | data_corpus_udhr

Larger corpora are also available from online locations using `download()`:

Corpus | Name
--|--
_Guardian_ newspaper articles in politics, economy, society and international sections from 2012 to 2016 | data_corpus_guardian
Transcripts of speeches at Japan's Committee on Foreign Affairs and Defense of the lower house (Shugiin) from 1947 to 2017 | data_corpus_foreignaffairscommittee
