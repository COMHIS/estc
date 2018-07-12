library(devtools)
library(dplyr)
library(sorvi)
library(bibliographica)
library(estc)

# ----------------------------------------------------
#            LOAD DATA FOR PREPROCESSING
# ----------------------------------------------------

source("init.R") # Different from bibliographica init below
source(system.file("extdata/init.R", package = "bibliographica")) # all the source calls just load functions now

# load initial CSVs
df.orig <- load_initial_datafile(fs, ignore.fields, reload.data = FALSE)

# Test with small data test set
# df.orig <- df.orig[sample(1:nrow(df.orig), 1000),] # random 1000

