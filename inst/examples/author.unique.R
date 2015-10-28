
# Unique author identifier by combining name, birth and death years
df$author_unique <- rep(NA, nrow(df))
df$author_unique <- apply(df[, c("author_name", "author_birth", "author_death")], 1, function (x) {paste(x[[1]], " (", x[[2]], "-", x[[3]], ")", sep = "")})

# Read author synonyme table for ambiguous authors
authors <- df$author_unique
df$author_unique <- polish_author_duplicates(authors, ambiguous_authors_table())

# Correct author living years using the ones from the final harmonized version
library(tidyr)
library(dplyr)
inds <- which(!is.na(df$author_unique))
dfs <- df[inds,] 
dfs <- select(dfs, author_unique) 
dfs <- dfs %>% separate(col = author_unique, sep = c(","), into = c("first", "end"))
dfs <- dfs %>% separate(col = end, sep = c("\\("), into = c("last", "years"))
years <- gsub("\\)", "", dfs$years)
years <- sapply(years, function (x) {if (length(grep("-", unlist(strsplit(x, "")))) == 1) {return(strsplit(x, "-"))} else {return(strsplit(x, " "))}})
birth <- as.numeric(gsub("-$", "", sapply(years, function (x) {x[[1]]})))
death <- as.numeric(sapply(years, function (x) {if (length(x) >=2) x[[2]] else NA}))
df$author_birth[inds] <- birth
df$author_death[inds] <- death

# Matrix with discarded author names
discarded.authors <- as.character(na.omit(df.orig[["author_name"]][is.na(df$author_unique)]))
discarded.authors <- write_xtable(discarded.authors, file = "output.tables/NamesDiscardedComplete.csv")
