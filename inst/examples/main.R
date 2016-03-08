# I/O definitions
# Data dir
ddir <- "~/data/ESTC/preprocessed/full"
output.folder <- "output.tables/"

# —--------------------------------------------

# Initialize and read raw data
source("init.R")
source("read.rawdata.R")

# ---------------------------------------------

# Selected subsets of the raw data
source("filtering.R") # -> df.orig

# -----------------------------------------------

# Preprocess raw data
source("preprocessing.R") # -> df.preprocessed
load("df.preprocessed.RData")

# Validating and fixing fields
source("validation.R")

# Add missing information and augment with external data
# TODO prepare these into a generic function in bibliographica
source("enrich.R") # df.preprocessed.RData

# Save the preprocessed data
if (is.character(df.preprocessed$author_death)) {stop("Set years to numeric !!!")}
print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, file = "estc.Rds", compress = TRUE)

# Summarize the data and discarded entries
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# Analyze the preprocessed data
source("analysis.R")

# Test map visualizations (estc/old)
# source("map.R")


