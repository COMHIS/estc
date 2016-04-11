library(devtools)
load_all("../../../bibliographica/")

# I/O definitions
output.folder <- "output.tables/"

# List preprocessed data files
fs <- "estc.csv.gz"

# Cores
mc.cores <- 4

# Update selected fields only -
# comment out if not needed
#update.fields <- c("physical_extent")
#update.fields <- c("publication_place")
#update.fields <- c("publication_place", "author_name", "author_date")
#validate.fields <- "years"
#enrich.fields <- c("geo", "years")

# Remove selected fields
ignore.fields <- c("title_uniform", "title_uniform2") # ESTC

# ----------------------------------------------------

reload.data <- FALSE
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

print("Analyze the preprocessed data")
source("analysis.R")

print("All OK.")

# Test map visualizations (estc/old)
# source("map.R")


