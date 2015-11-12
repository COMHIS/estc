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

