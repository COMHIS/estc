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
load_all("~/Rpackages/bibliographica")
load_all("~/Rpackages/estc")
polish_folder <- "data/unified/polished/"
summary_folder <- "output.tables/"
fs <- "estc_parsed.csv.gz"
catalog <- "estc"
summary.folder <- "summaries"
languages <- c("english", "latin") # Languages to consider in cleanup. TODO: recognize the necessary languages automatically ?
author <- "Leo Lahti / Computational History Group"
ntop <- 20
timespan <- c(1460, 1800)
datafile.preprocessed <- "data/unified/polished/df.Rds"
datafile.orig         <- "data/unified/polished/df.raw.Rds"
output.folder <- "output.tables/"

# List preprocessed data files
this.folder <- getwd()
dir.create(output.folder)
today.str <- as.character(Sys.Date())
source(system.file("extdata/init.R", package = "bibliographica")) # all the source calls just load functions now

# load initial CSVs
df.orig <- load_initial_datafile(fs, ignore.fields, reload.data = FALSE)

# Test with small data test set
df.orig <- df.orig[sample(1:nrow(df.orig), 1e4),] # random 

