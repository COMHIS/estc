<<<<<<< HEAD
# TODO make a tidy cleanup function to shorten the code here
print("Polish author life years")
tmp <- polish_years(df.orig$author_date)
df$author_birth <- tmp$from
df$author_death <- tmp$till

print("Write unrecognized author life years to file together count stats")
tmp <- write_xtable(unname(unlist(df.orig[which(is.na(df$author_birth) & is.na(df$author_death)),]$author_date)), paste(output.folder, "discarded_author_life.csv", sep = ""))

# ------------------------------

print("Remove suspicious cases (very few) where birth is later than death.")
# In practice this concerns cases such as 1635-71 which should be 1635-1671
# but we have only two cases now so ignore this
inds <- which(df$author_birth > df$author_death)
df$author_birth[inds] <- NA
df$author_death[inds] <- NA

=======
>>>>>>> 1ae005d39f3260bfa011cf3dcd056d346cf1e8a5
print("Author birth")
# For authors with a unique birth, use this birth year also for documents where
# birth year not given in the raw data
df$author_birth <- guess_missing_entries(id = df$author_name, values = df$author_birth)$values
df$author_death <- guess_missing_entries(id = df$author_name, values = df$author_death)$values

# ----------------------------------------------------

# Add missing author life years
# TODO make this a table
inds <- which(df$author_name == "whitrowe, joan")
df$author_birth[inds] <- 1630
df$author_death[inds] <- 1707

