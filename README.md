# Corpora for quanteda

Package to provide easy access to large corpora for [**quanteda**](http://github.com/quanteda/quanteda).

## How to Install

You can download the files and build the package from source, or you can use the devtools library to install the package directly from github. This is done as follows:

```r
devtools::install_github("quanteda/quanteda.corpora")
```

## Available corpora

Corpora contained in the package are the following:

Corpus | Name
--|--
Amicus curiae briefs from Bakke (1978) and Bollinger (2008) | data_corpus_amicus
Annual budget speeches from the Irish Dail, 2008-2012 | data_corpus_irishbudgets
UK news articles from 2014 that mention immigration | data_corpus_immigrationnews
Movie reviews from Pang, Lee, and Vaithyanathan (2002) | data_corpus_movies
U.S. State of the Union addresses from 1790 to 2016 | data_corpus_sotu
UK political party manifestos, 1945-2005 | data_corpus_ukmanifestos
Irish Dail speeches from 2007-2011 | data_corpus_irish30

Larger corpora are also available from online locations using `download()`:

Corpus | Name
--|--
Guradian newspaper articles in politics, economy, society and international sections from 2012 to 2016 | data_corpus_guardian
Transcripts of speeches at Japan's Committee on Foreign Affairs and Defense of the lower house (Shugiin) from 1947 to 2017 | data_corpus_foreignaffairscommittee
