# Load packages
library(devtools)
library(dplyr)
library(bibliographica)
library(sorvi)
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

# I/O definitions
output.folder <- "output.tables.history/"
author <- "Leo Lahti"
ntop <- 20
timespan <- c(1460, 1830)
datafile.preprocessed <- "estc.history.Rds"
datafile.orig <- "estc.history.raw.Rds"
output.folder <- "output.tables.history/"
fs <- "estc.history.csv.gz"
ignore.fields <- c("title_uniform", "title_uniform2") # ESTC
mc.cores = 1

# ----------------------------------------------------

# Create the output directory if not yet exists
dir.create(output.folder)

  # Read the raw data
  df.orig <- read_bibliographic_metadata(fs, ignore.fields = ignore.fields, verbose = TRUE)
  saveRDS(df.orig, file = "estc.history.raw.Rds", compress = "xz")

  conversions <- list()
  update.fields <- names(df.orig) # Update all fields

# ----------------------------------------------------

source(system.file("extdata/preprocessing.R", package = "bibliographica"))

# ----------------------------------------------------

source(system.file("extdata/validation.R", package = "bibliographica"))

# -----------------------------------------------------

source(system.file("extdata/enrich.R", package = "bibliographica"))
source("enrich.estc.R")

# ----------------------------------------------------

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, file = "estc.history.Rds", compress = TRUE)

# ----------------------------------------------------

print("Prepare the final data set")

# Read the preprocessed data
df <- readRDS(datafile.preprocessed)
df.orig <- readRDS(datafile.orig)

# Year limits
df.preprocessed <- filter(df, publication_year >=  min(timespan) & publication_year <= max(timespan))
rm(df)

# Ensure compatibility			
df.orig <- df.orig[match(df.preprocessed$original_row, df.orig$original_row),]

df.preprocessed.orig <- df.preprocessed

# ---------------------------------

print("Generic summaries") # Markdown
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# Summary files
sf <- generate_summaryfiles(df.preprocessed, author = author,
      			output.folder = output.folder, ntop = ntop)

# ------------------------------------------

# Dataset-specific analyses
df <- df.preprocessed <- df.preprocessed.orig
knit("20151023-LIBER.Rmd") # For journal
# source("timeplot.R") # History vs. all ESTC docs

