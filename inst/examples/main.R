library(devtools)
library(dplyr)
library(bibliographica)
library(sorvi)

load_all("../../../bibliographica/")
load_all()

# I/O definitions
output.folder <- "output.tables/"
dir.create(output.folder)

# List preprocessed data files
fs <- "estc.csv.gz"
catalog <- "estc"

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
languages <- c("english", "latin")

# Cores
mc.cores <- 4

# Update selected fields only -
# comment out if not needed
# update.fields <- c("physical_extent")
# update.fields <- c("publication_place")
# update.fields <- c("publication_place", "author_name", "author_date")
update.fields <- NULL

# Remove selected fields
ignore.fields <- c("title_uniform", "title_uniform2") # ESTC

# ----------------------------------------------------
#            LOAD DATA FOR PREPROCESSING
# ----------------------------------------------------


# reload.data <- FALSE
source(system.file("extdata/init.R", package = "bibliographica"))
# all the source calls just load functions now

# load initial data
df.orig <- load_initial_datafile(fs, ignore.fields, reload.data = FALSE)
# returns: df.orig

# load data for preprocessing
data.preprocessing <- get_preprocessing_data(df.orig, 
                                             update.fields,
                                             ignore.fields)
# returns list of 3 (df.preprocessed, update.fields, conversions)

# obs!: All following functions now return lists of 3 or 2, with generally 
#       the same objects- we could make this neater by packaking all in S3
#       object. Functions could take as both input and output an instance of
#       that class then.

#       For now decided to input&output same list of 3:
#       (df.preprocessed, update.fields, conversions)

# ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

source(system.file("extdata/preprocessing.R", package = "bibliographica"))
data.preprocessed <- preprocess_data(data.preprocessing, 
                                     df.orig,
                                     languages, 
                                     mc.cores = 4)
rm(data.preprocessing)
# returns list of 3 (df.preprocessed, update.fields, conversions)

# ----------------------------------------------------
#           VALIDATE PREPROCESSED DATA
# ----------------------------------------------------

source(system.file("extdata/validation.R", package = "bibliographica"))

data.validated <- validate_preprocessed_data(data.preprocessed)
# returns list of 3 (df.preprocessed, update.fields, conversions)
rm(data.preprocessed)

# -----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

# print(dirname(sys.frame(1)$ofile))

source(system.file("extdata/enrich.R", package = "bibliographica"))
data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
# returns list of 3 (df.preprocessed, update.fields, conversions)
# some function(s) need df.orig. Should tidy that up? -vv
rm(data.validated)

df.preprocessed <- data.enriched[[1]]
update.fields   <- data.enriched[[2]]
conversions     <- data.enriched[[3]]

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
