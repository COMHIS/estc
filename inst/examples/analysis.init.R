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

# already defined in main -vv
# LL: we need to define it here as well because we sometimes want to
# run analysis.R independently. The preprocessing before analysis.R is
# more time-consuming and sometimes we only like to update the final
# analyses. It is therefore handy that the analysis.R can run independently,
# although it is also run as part of the main workflow in main.R
output.folder <- "output.tables/"

# ---------------------------------

print("Prepare the final data set")

# Read the preprocessed and raw data
df <- readRDS(datafile.preprocessed)
df.orig <- readRDS(datafile.orig)

# Year limits
df.preprocessed <- filter(df, publication_year >=  min(timespan) &
                              publication_year <= max(timespan))
rm(df)

# Ensure compatibility			
df.orig <- df.orig[match(df.preprocessed$original_row, df.orig$original_row),]
