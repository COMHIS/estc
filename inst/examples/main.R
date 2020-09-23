library(devtools)
library(dplyr)
library(sorvi)
library(bibliographica)
library(estc)

# ----------------------------------------------------
#            LOAD DATA FOR PREPROCESSING
# ----------------------------------------------------

source("init.R") # Different from bibliographica init below

# all the source calls just load functions now
source(system.file("extdata/init.R", package = "bibliographica")) 

# load initial CSVs
df.orig <- load_initial_datafile(fs, ignore.fields, reload.data = FALSE)
# Test with small data test set
# df.orig <- df.orig[sample(1:nrow(df.orig), 1000),] # random 1000

# Load data for preprocessing
data.preprocessing <- get_preprocessing_data(df.orig, 
                                             update.fields,
                                             ignore.fields,
					     rewrite = TRUE)
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

# PREPROCESS GEODATA
f <- system.file("extdata/preprocess_publication_place.R", package = "bibliographica")
source(f)

# Remove these fields now from further processing
data.preprocessing$update.fields <- setdiff(data.preprocessing$update.fields, c("publication_place"))

#------------------------------------------------

# TODO remove df0 and just update selected fields on the final polished data version instead (df.Rds)
source(system.file("extdata/preprocessing.R", package = "bibliographica"))
data.preprocessed <- preprocess_data(data.preprocessing, 
                                     df.orig,
                                     languages)
rm(data.preprocessing)
# returns list of 3 (df.preprocessed, update.fields, conversions)

# ----------------------------------------------------
#           VALIDATE PREPROCESSED DATA
# ----------------------------------------------------

data.validated <- validate_preprocessed_data(data.preprocessed)
# returns list of 3 (df.preprocessed, update.fields, conversions)
rm(data.preprocessed)

# -----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
# returns list of 3 (df.preprocessed, update.fields, conversions)
# some function(s) need df.orig. Should tidy that up? -vv
# -> would be nice but might prove challenging - welcome to implement if possible -LL
rm(data.validated)

# Custom enrich for ESTC
data.enriched.estc <- enrich_estc(data.enriched, df.orig)

# ----------------------------------------------------

data.validated2 <- validate_preprocessed_data(data.enriched.estc)

# -----------------------------------------------------

# Pick the final data
df.preprocessed <- data.validated2$df.preprocessed

# ----------------------------------------------------

# Combine separately processed fields
df.preprocessed <- merge(df.preprocessed, preprocessed$publication_place, by = "original_row")

# -------------------------------------------------

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, file = datafile.preprocessed, compress = TRUE)
# TODO: add here CSV file as well.

# ----------------------------------------------------

print("Analyze the preprocessed data")
source("analysis.R")

print("All OK.")

# Test map visualizations (estc/old)
# source("map.R")
