library(devtools)
library(dplyr)
library(sorvi)
load_all("../../../bibliographica/")
library(bibliographica)
load_all()


# I/O definitions
# # make daily output folders TODO convert into function -vv
# today.str <- as.character(Sys.Date())
# output.folder <- paste("output.tables/", today.str, "/", sep = '')
# # old version:

source("catalog.specific.R")

catalog <- "estc"
languages <- get_catalog_languages(catalog)
mc.cores <- 3

# Setup files and directories
fs            <- paste("data/", catalog, "/", catalog, ".csv.gz", sep = "")
output.folder <- paste("output.tables/", catalog, "/", sep = "")
datadir       <- paste("data/", catalog, "/processed/", sep = "")

create_dirs(c(output.folder, datadir))


# Update selected fields only -
# comment out if not needed
# update.fields <- c("physical_extent")
# update.fields <- c("publication_place")
# update.fields <- c("publication_place", "author_name", "author_date")

# Setup fields
catalog.fields <- get_catalog_fields(catalog)
update.fields  <- catalog.fields$update.fields
ignore.fields  <- catalog.fields$ignore.fields

# ----------------------------------------------------
#            LOAD DATA FOR PREPROCESSING
# ----------------------------------------------------

reload.data <- FALSE
source(system.file("extdata/init.specific.R", package = "bibliographica"))
# load initial data
df.orig <- load_initial_datafile(fs,
                                 ignore.fields,
                                 reload.data = reload.data,
                                 datadir = datadir)

# Test with small data test set
# df.orig <- df.orig[sample(1:nrow(df.orig), 1000),] # random 1000
df.orig <- df.orig[1:1000, ] # first 1000

# load data for preprocessing
data.preprocessing <- get_preprocessing_data(df.orig, 
                                             update.fields,
                                             ignore.fields,
                                             datadir = datadir)

# ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

source(system.file("extdata/preprocessing.specific.R", package = "bibliographica"))
data.preprocessed <- preprocess_data(data.preprocessing,
                                     df.orig,
                                     languages, 
                                     mc.cores = mc.cores,
                                     datadir = datadir)
# rm(data.preprocessing)

# ----------------------------------------------------
#           VALIDATE PREPROCESSED DATA
# ----------------------------------------------------

source(system.file("extdata/validation.R", package = "bibliographica"))
data.validated <- validate_preprocessed_data(data.preprocessed)
# rm(data.preprocessed)

# -----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

source(system.file("extdata/enrich.R", package = "bibliographica"))
data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
# rm(data.validated)
data.enriched.specific <- enrich_catalog_specific(catalog, data.enriched)
# rm(data.enriched)
# source("enrich.estc.R") # load function: enrich_estc
# data.enriched.estc <- enrich_estc(data.enriched)

df.preprocessed <- data.enriched.specific$df.preprocessed
# ----------------------------------------------------

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, file = "df.Rds", compress = TRUE)

# ----------------------------------------------------

print("Analyze the preprocessed data")
source("analysis.R")

print("All OK.")

# Test map visualizations (estc/old)
# source("map.R")
