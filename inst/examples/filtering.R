# Remove the raw data
df.orig <- df.raw
rm(df.raw)

# ------------------------------------------------

# Remove selected fields
keep <- setdiff(names(df.orig),
           c("title_uniform", "title_uniform2")) # ESTC
           # c("publication_frequency", "publication_interval")) # CERL
#df.orig <- df.orig[, keep]

# ------------------------------------------------

# Remove duplicated documents if any (possible to focus just on key variables)
df.orig <- df.orig[!duplicated(df.orig),] # Consider all variables
print(paste("Total documents:", nrow(df.orig)))

