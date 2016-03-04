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
ntop <- 20
output.folder <- "output.tables/"

# Read the preprocessed data
df <- readRDS("estc.Rds")
#df <- read.csv(file = "estc.csv", sep = "|")
# Order the levels where necessary
#df$gatherings <- order_gatherings(df$gatherings)

# ESTC-specific year limits
df <- filter(df, publication_year >= 1460 & publication_year <= 1830)

# ---------------------------------

print("Generic summaries")
knit("overview.Rmd")
knit("author.Rmd")
knit("publicationplace.Rmd")
knit("publisher.Rmd")
knit("documents.Rmd")
knit("size.Rmd")
knit("gender.Rmd")
knit("topic.Rmd") # ESTC only

# ------------------------------------------

# Dataset-specific analyses (TODO redo after updates)

# Custom definitions
source("general.R") # See estc todo file

#knit("Edinburgh.Rmd")
#knit("NorthAmerica.Rmd")
#knit("Scotland.Rmd")
#knit("Princeton.Rmd")
#knit("pagecounts.Rmd")

# Archived:
#knit("20150624-LIBER.Rmd") # For conference
#knit("20151023-LIBER.Rmd") # For journal
#knit("20150611-Paris.Rmd") # For workshop
# source("timeplot.R") # History vs. all ESTC docs
# source("duplicates.R")

# -------------------------------------------------

system("git add -f figure/*.png")
# system("git add -f output.tables/*.csv")
system("git add output.tables/*.csv")
system("git commit -a -m'Rmd update'")
system("git push")
