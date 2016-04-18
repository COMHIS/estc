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


knit("Shakespeare.Rmd")

