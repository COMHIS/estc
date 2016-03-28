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
datafile <- "df.Rds"
output.folder <- "output.tables/"

# ---------------------------------

print("Prepare the final data set")

# Read the preprocessed data
df <- readRDS(datafile)

# Year limits
df.preprocessed <- filter(df, publication_year >=  min(timespan) & publication_year <= max(timespan))
df.preprocessed.orig <- df.preprocessed

# ----------------------------------------

print("Generic summaries") # Markdown
df <- df.preprocessed <- df.preprocessed.orig
sf <- generate_summaryfiles(author = "Leo Lahti", output.folder = output.folder)

# ------------------------------------------

# Dataset-specific analyses

# Custom definitions
source("general.R") # See estc TODO file

author <- "Leo Lahti"

df <- df.preprocessed <- df.preprocessed.orig
knit("Edinburgh.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("NorthAmerica.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("Scotland.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("Princeton.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("pagecounts.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("20151023-LIBER.Rmd") # For journal

df <- df.preprocessed <- df.preprocessed.orig

# Archived - done with history data
# do not work (yet) with the full data
# and for archival purposes good to keep it such
#knit("20150624-LIBER.Rmd") # For conference
#knit("20150611-Paris.Rmd") # For workshop
# source("timeplot.R") # History vs. all ESTC docs
# source("duplicates.R")

# -------------------------------------------------

system("git add -f figure/*.png")
# system("git add -f output.tables/*.csv")
system("git add output.tables/*.csv")
system("git commit -a -m'Rmd update'")
system("git push")
