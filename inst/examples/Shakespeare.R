# Creating initial Shakespeare/Cervantes data for manual checking
# source("Shakespeare_data.R")

library(ggplot2)
library(tidyr)
library(dplyr)
library(stringr)
library(bibliographica)
library(estc)
library(magrittr)
library(sorvi)
library(reshape2)
library(gridExtra)
library(knitr)
library(magrittr)

# Read the data
datafile.preprocessed <- "df.Rds"
df <- readRDS(datafile.preprocessed)
df.orig <- readRDS(datafile.orig)

# Year limits
timespan <- c(1460, 1830)
df.preprocessed <- filter(df, publication_year >=  min(timespan) & publication_year <= max(timespan))
rm(df)

# ------------------------------------------

# Read the manually polished data

library(gdata)
my.authors <- c(Shakespeare = "Shakespeare, William (1564-1616)",
	        Cervantes = "Cervantes Saavedra, Miguel De (1547-1616)")

# Polished Shakespeare and Cervantes
tabs <- list()
for (auth in names(my.authors)) {
  tab <- read.xls(paste(auth, "_estc.xls", sep = ""))
  inds <- grep("NOT TO BE", tab$title)
  if (length(inds) > 0) {
    tab <- tab[-inds,]
  }
  tab$publication_decade <- floor(tab$publication_year/10) * 10   
  tabs[[auth]] <- tab
}

# Full data, excluding the selected authors
dff <- df.preprocessed %>% filter(!author %in% my.authors)

# ------------------------------------------

# Summary document

knit("Shakespeare.Rmd")

TODO

- Title popularity: Hamlet, Rome and Juliet, Macbeth ja Othello sekä
  Cervantesin Don Quixote; nämä aikajanalla.

- Publisher timelines. Yksi vaihtoehto olisi ehkä yhdistää myös se
  paper consumption näihin Top Publishereihin. Tai etenkin Miten
  Worksien julkaisijat muuttuvat ajassa.

- Mukaan paperinkulutus

Cervantes: Don Quixote, erityisesti CERL:
- miten teosta julkaistiin eri maissa eri aikoina?
- Don Quixoten julkaisemisen vertaaminen koko Euroopassa Shakespeareen

Shakespeare
- CERL: yritetään yhdistää kaikki muualla kuin englanninkielisellä
  julkaistut teokset alkuperäisiin ja katsoa sitä kartalla.

