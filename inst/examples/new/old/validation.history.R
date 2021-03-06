print("Fix publication years")
# Remove apparent errors: no future publications or publications before historical times
#max.year <- as.numeric(format(Sys.time(), "%Y")) # CERL (this.year)
# Polish the final data frame; Filter out years 1800- (mostly errors and printing techniques change dramatically)
max.year <- 1800 # ESTC
df.preprocessed$publication_year_from[which(df.preprocessed$publication_year_from > max.year)] <- NA
df.preprocessed$publication_year_from[which(df.preprocessed$publication_year_from < (-2000))] <- NA
df.preprocessed$publication_year_till[which(df.preprocessed$publication_year_till > max.year)] <- NA
df.preprocessed$publication_year_till[which(df.preprocessed$publication_year_till < (-2000))] <- NA

# Author life years cannot exceed the present year
# If they do, set to NA
inds <- which(df.preprocessed$author_birth > max.year)
if (length(inds) > 0) {
  df.preprocessed[inds, "author_birth"] <- NA
}
inds <- which(df.preprocessed$author_death > max.year)
if (length(inds) > 0) {
  df.preprocessed[inds, "author_death"] <- NA
}
# Death must be after birth
# If this is not the case, set the life years to NA
inds <- which(df.preprocessed$author_death < df.preprocessed$author_birth)
if (length(inds) > 0) {
  df.preprocessed[inds, "author_birth"] <- NA
  df.preprocessed[inds, "author_death"] <- NA
}






