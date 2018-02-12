source("init.R")

# ---------------------------------

print("Prepare the final data set")

# Read the preprocessed and raw data
df <- readRDS(datafile.preprocessed)
df.orig <- readRDS(datafile.orig)

# Year limits
df.preprocessed <- filter(df, publication_year >=  min(timespan) &
                              publication_year <= max(timespan))
rm(df)

# Ensure compatibility			
df.orig <- df.orig[match(df.preprocessed$original_row, df.orig$original_row),]
