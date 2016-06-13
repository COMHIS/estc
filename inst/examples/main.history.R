# I/O definitions
# Data dir
ddir <- "~/data/ESTC/preprocessed/history"

# —--------------------------------------------

# Initialize and read raw data
source("init.R")
source("read.rawdata.R")

# ---------------------------------------------

# Selected subsets of the raw data
source("filtering.R") # -> df.orig

# -----------------------------------------------

# Preprocess raw data
source("preprocessing.history.R") # -> df.preprocessed

# Validating and fixing fields
source("validation.history.R")

# Enrich the data
# (add missing information and augment with external data)
source("enrich.R") # df.preprocessed.RData

# Save the preprocessed data
print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, file = "estc.history.Rds", compress = TRUE)

