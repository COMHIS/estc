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

# Set global parameters
author <- "Leo Lahti"
ntop <- 20
timespan <- c(1460, 1830)
datafile.preprocessed <- "df.Rds"
datafile.orig <- "df.raw.Rds"
output.folder <- "output.tables/"

# ---------------------------------

print("Prepare the final data set")

# Read the preprocessed data
df <- readRDS(datafile.preprocessed)
df.orig <- readRDS(datafile.orig)

# Year limits
df.preprocessed <- filter(df, publication_year >=  min(timespan) & publication_year <= max(timespan))
rm(df)

# ----------------------------------

library(gdata)
my.authors <- c(Shakespeare = "Shakespeare, William (1564-1616)",
	        Cervantes = "Cervantes Saavedra, Miguel De (1547-1616)")

# Polished Shakespeare and Cervantes
# Combine ESTC and CERL lists
tabs <- list()
nraw <- c()
for (auth in names(my.authors)) {

  tab2 <- NULL
  for (source in c("estc", "cerl")) {

    tab <- read.xls(paste(auth, "_", source, ".xls", sep = ""))[, 1:10]
    nraw[[paste(source, auth, sep = "/")]] <- nrow(tab)
    inds <- grep("NOT TO BE", tab$title)
    if (length(inds) > 0) {
      tab <- tab[-inds,]
    }
    colnames(tab) <- gsub("estc_control_number", "control_number", colnames(tab))
    colnames(tab) <- gsub("cerl_control_number", "control_number", colnames(tab))
    tab$source <- source
    tab2 <- rbind(tab2, tab)
  }

  tab2$publication_decade <- floor(tab2$publication_year/10) * 10
  tab2 <- tab2[tab2$publication_decade < 1800,]
  tab2$title <- gsub("\xd0", "E", tab2$title)

  tabs[[auth]] <- tab2

}

# Tabs combined
tabc <- NULL
for (auth in names(my.authors)) {
  tab <- tabs[[auth]]
  tab$author <- auth
  tabc <- rbind(tabc, tab)
}
tabc$source <- factor(tabc$source)
tabc$author <- factor(tabc$author)
library(sorvi)
tabc$title <- factor(condense_spaces(as.character(tabc$title)))

# ----------------------------------------------------------

save(tabc, tabs, df.preprocessed, file = "Shakespeare400.RData")