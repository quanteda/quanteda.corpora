# UN General Debates Corpus 2017

# download the ZIP file at https://dataverse.harvard.edu/file.xhtml?persistentId=doi:10.7910/DVN/0TJX8Y/BIWRTA&version=4.0
# and select the "Session 72 - 2017" folder

library(readtext)
library(quanteda) # use version 1.4.0
library(countrycode)
library(dplyr)

dat_ungd2017 <- readtext("/Users/smueller/Documents/Session 72 - 2017/*",
                         docvarsfrom = "filenames",
                         docvarnames = c("country_iso", "un_session", "year"))

# use countrycode package to get full country names

# example: ISO to country.name
# countrycode(c('USA', 'DZA'), 'iso3c', 'country.name')

# notes: 
# - in the 2017 corpus, Serbia appears to be coded as "YUG"
# - EC is the speech by the European Union

dat_ungd2017$country_iso[dat_ungd2017$country_is == "YUG"] <- "SRB"

dat_ungd2017$country <- countrycode(dat_ungd2017$country_iso, "iso3c", "country.name")

dat_ungd2017$country <- with(dat_ungd2017, ifelse(country_iso == "EC", "European Union", country))

# get continent for each country 

dat_ungd2017$continent <- countrycode(dat_ungd2017$country_iso,
                            origin = "iso3c",
                            destination = "continent")

dat_ungd2017$continent <- with(dat_ungd2017, ifelse(country_iso == "EC", "Europe", continent))

# download data from World Bank and delete the first three rows
# - GDP (US-$), 2017: https://data.worldbank.org/indicator/NY.GDP.MKTP.CD?end=2017&start=2017
# - GDP per capita, 2017: https://data.worldbank.org/indicator/NY.GDP.PCAP.CD?view=map&year=2017

dat_gdp <- read.csv("/Users/smueller/Documents/gdp_data/gdp.csv")

dat_gdp_select <- dat_gdp %>% 
    select(country_iso = Country.Code,
           gdp = X2017)

dat_gdp_per_capita <- read.csv("/Users/smueller/Documents/gdp_data/gdp_per_capita.csv")

dat_gdp_per_capita_select <- dat_gdp_per_capita %>% 
    select(country_iso = Country.Code,
           gdp_per_capita = X2017) %>% 
    mutate(gdp_per_capita = round(gdp_per_capita, 0))

dat_gdp_merged <- left_join(dat_gdp_select, dat_gdp_per_capita_select, by = "country_iso")

dat_ungd2017 <- left_join(dat_ungd2017, dat_gdp_merged, by = "country_iso")

dat_ungd2017 <- dat_ungd2017 %>% 
    mutate(gdp = as.numeric(gdp),
           gdp_per_capita = as.numeric(gdp_per_capita),
           year = as.factor(year),
           session = as.factor(session))
data_corpus_ungd2017 <- corpus(dat_ungd2017)

# add metadata, based on quanteda style guide

metacorpus(data_corpus_ungd2017, "source") <- "Mikhaylov, M., Baturo, A., & Dasandi, N. (2017). United Nations General Debate Corpus. Harvard Dataverse, V4."
metacorpus(data_corpus_ungd2017, "notes") <- "https://doi.org/10.7910/DVN/0TJX8Y"

docnames(data_corpus_ungd2017) <- docvars(data_corpus_ungd2017, "country")

usethis::use_data(data_corpus_ungd2017, overwrite = TRUE)
