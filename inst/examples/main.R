# I/O definitions
output.folder <- "output.tables/"

# List preprocessed data files
#fs <- list.files(ddir, full.names = TRUE, pattern = ".csv.gz")
fs <- "estc.csv.gz"

# Cores
mc.cores <- 4

# Remove selected fields
ignore.fields <- c("title_uniform", "title_uniform2") # ESTC

# ----------------------------------------------------

reload.data <- TRUE
source(system.file("extdata/init.R", package = "bibliographica"))

# ----------------------------------------------------

source(system.file("extdata/preprocessing.R", package = "bibliographica"))

# ----------------------------------------------------

source(system.file("extdata/validation.R", package = "bibliographica"))

# -----------------------------------------------------

source(system.file("extdata/enrich.R", package = "bibliographica"))
source("enrich.estc.R")

# ----------------------------------------------------

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, file = "df.Rds", compress = TRUE)

# ----------------------------------------------------

# Summarize the data and discarded entries
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# ------------------------------------------------------

# Analyze the preprocessed data
source("analysis.R")

# Test map visualizations (estc/old)
# source("map.R")


