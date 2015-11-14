# Unique author identifier by combining name, birth and death years
df$author_unique <- rep(NA, nrow(df))
df$author_unique <- apply(df[, c("author_name", "author_birth", "author_death")], 1, function (x) {paste(x[[1]], " (", x[[2]], "-", x[[3]], ")", sep = "")})

print("Augment missing author life years")
# For authors with a unique birth, use this birth year also for documents where
# birth year not given in the raw data
df$author_birth <- guess_missing_entries(id = df$author_name, values = df$author_birth)$values
df$author_death <- guess_missing_entries(id = df$author_name, values = df$author_death)$values

print("Add missing author life years")
info <- author_info_table()
inds <- which(is.na(df$author_birth) & (df$author_name %in% info$author_name))
#inds <- which(df$author_name == "whitrowe, joan")
df$author_birth[inds] <- info[match(df$author_name[inds], info$author_name), "author_birth"]
df$author_death[inds] <- info[match(df$author_name[inds], info$author_name), "author_death"]

print("Harmonize ambiguous authors")
df$author_unique <- harmonize_names(df$author_unique, ambiguous_authors_table())$name
df$author_unique <- gsub("NA (NA-NA)", NA, df$author_unique)

print("Correct author living years using the ones from the final harmonized version")
library(tidyr)
library(dplyr)
inds <- which(!is.na(df$author_unique))
dfs <- df[inds,] 
dfs <- select(dfs, author_unique)
#dfs <- dfs %>% separate(col = author_unique, sep = c(","), into = c("first", "end"))
#dfs <- dfs %>% separate(col = end, sep = c("\\("), into = c("last", "years"))
#years <- gsub("\\)", "", dfs$years)
dfs <- dfs %>% separate(col = author_unique, sep = c("\\("), into = c("name", "years"))
years <- gsub("\\)", "", dfs$years)
years <- sapply(years, function (x) {if (length(grep("-", unlist(strsplit(x, "")))) == 1) {return(strsplit(x, "-"))} else {return(strsplit(x, " "))}})
birth <- as.numeric(gsub("-$", "", sapply(years, function (x) {x[[1]]})))
death <- as.numeric(sapply(years, function (x) {if (length(x) >=2) x[[2]] else NA}))
df$author_birth[inds] <- birth
df$author_death[inds] <- death



