# Initialize preprocessed data
print("Start collecting variables to a polished data frame")
df.preprocessed <- data.frame(list(row.index = 1:nrow(df.orig)))

print("Entry identifier to match back to the originals")
df.preprocessed$original_row <- df.orig$original_row

# -------------------------------------------------------

print("List raw data fields to be preprocessed")
update.fields <- sort(names(df.orig)) # Update all

# --------------------------------------------------------

# List how raw data fields will be converted into
# preprocessed data fields
conversions <- list()
preprocessing.times <- c()

# Preprocess the field only if it has to be updated
for (field in update.fields) {

  start.time <- Sys.time()
  print(paste("Preprocessing", field, "(", match(field, update.fields), "/", length(update.fields), ")"))

  # Polish the given field
  df.tmp <- polish_field(df.orig, field, verbose = TRUE)

  # List the output fields for this input field
  conversions[[field]] <- names(df.tmp)

  # Remove the fields to be updated
  inds <- which(names(df.preprocessed) %in% unlist(conversions[[field]]))
  if (length(inds) > 0) { df.preprocessed <- df.preprocessed[, -inds]}

  # Add the newly preprocessed field
  df.preprocessed <- cbind(df.preprocessed, df.tmp)

  # Remove the temporary data.frame
  rm(df.tmp)

  # Monitor time
  stop.time <- Sys.time()
  preprocessing.times[[field]] <- difftime(stop.time, start.time, units = "mins")

  # Cleanup
  gc()

}

print(paste("Saving updates on preprocessed data:", field))
save(df.preprocessed, file = "df.preprocessed.RData", compress = "xz")

save(preprocessing.times, file = "preprocessing.times.RData")   

# -----------------------------------------------------------

# Visualize processing times for the different fields
source("processingtimes.R")

