# List preprocessed data files
#fs <- "estc_parsed.csv.gz"
fs <- "estc_raw.csv" # estc-data-originals/estc-csv-raw/estc_raw.csv 9/2020
catalog <- "estc"

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
languages <- c("english", "latin")

# Initialize the list of processed fields
preprocessed <- list()

# -----------------------

# Update selected fields only - comment out if not needed
# update.fields <- c("publication_place", "author_name", "author_date")
update.fields <- NULL

# Remove selected fields
ignore.fields <- c("title_uniform", "title_uniform2") # ESTC

# reload.data <- FALSE

# Set global parameters
author <- "Leo Lahti / Computational History Group"
ntop <- 20
timespan <- c(1460, 1800)
#datafile.preprocessed <- "data/unified/polished/df.Rds"
#datafile.orig         <- "data/unified/polished/df.raw.Rds"
datafile.preprocessed <- "df.Rds"
datafile.orig         <- "df.raw.Rds"

# ------------------------

library(ggplot2)
library(devtools)
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
# load_all("~/Rpackages/bibliographica")

# I/O definitions
# make daily output folders TODO convert into function -vv
today.str <- as.character(Sys.Date())
# NOTE / LL: I now discard this change and return the earlier output.tables
# for two key reasons:
# 1) the modification date is visible in the github stamps in any case
# 2) it is quite beneficial for cross-linking and other purposes
#    to have a static url
#    for these key summary tables - the idea is that they are always up-to-date
#    with the most recent package versions and for that the date does not
#    matter; the date can be included if we freeze some versions
#    of the data, but this can be done separately when it really matters
#    (for instance for conferences & publications)
#    This also helps to keep the code more simple. We are linking to these
#    tables for instance from the github summary pages.
# -> However we can discuss and change these policies if you have
#    good arguments.
# output.folder <- paste("output.tables/", today.str, "/", sep = '')
# old version:
# already defined in main -vv
# LL: we need to define it here as well because we sometimes want to
# run analysis.R independently. The preprocessing before analysis.R is
# more time-consuming and sometimes we only like to update the final
# analyses. It is therefore handy that the analysis.R can run independently,
# although it is also run as part of the main workflow in main.R

#output.folder <- "output.tables/"
#dir.create(output.folder)

