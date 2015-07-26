print("Remove stopwords from author field")
f <- system.file("extdata/stopwords.csv", package = "bibliographica")
stopwords.general <- as.character(read.csv(f, sep = "\t")[,1])
library(tm)
stopwords.general <- c(stopwords.general, stopwords(kind = "en"))

f <- system.file("extdata/stopwords_for_names.csv", package = "bibliographica")
stopwords.names <- as.character(read.csv(f, sep = "\t")[,1])
f <- system.file("extdata/stopwords_titles.csv", package = "bibliographica")
stopwords.titles <- as.character(read.csv(f, sep = "\t")[,1])
f <- system.file("extdata/stopwords_pseudonymes.csv", package = "bibliographica")
stopwords.pseudonymes <- as.character(read.csv(f, sep = "\t")[,1])
stopwords <- unique(c(stopwords.general, stopwords.names, stopwords.titles, stopwords.pseudonymes))

print("Arrange author first and last names in a table")
nametab <- polish_author(df.orig[["100a"]], stopwords)

print("Validate names using lists of known names")
valid <- list()
for (db in c("first", "last")) {

  namelist <- nametab[[db]]
  v <- validate_names(namelist, db)
  valid[[db]] <- v$validated

  print("Count and sort the invalid names")
  fnam <- paste(output.folder, "Names", "-Invalid-", db, ".csv", sep = "")
  print(paste("Writing invalid author names to file", fnam))
  invalid.names <- v$invalid
  write.table(invalid.names, file = fnam, quote = FALSE, sep = "\t", row.names = FALSE)

  print("Count and sort valid names")
  fnam <- paste(output.folder, "Names", "-Valid-", db, ".csv", sep = "")
  print(paste("Writing valid author names to file", fnam))
  valid.names <- write_xtable(namelist[v$validated], file = fnam)

}

print("Remove names that do not have both valid first and last names")
nametab[(!valid[["first"]] | !valid[["last"]]), ] <- NA
nametab$last[is.na(nametab$first)] <- NA
nametab$first[is.na(nametab$last)] <- NA

print("Collapse accepted names to the form: Last, First")
full.name <- apply(nametab, 1, function (x) { paste(x, collapse = ", ") })
full.name <- gsub("NA, NA", NA, full.name) # Handle NAs
df$author.name <- full.name

print("Write unique names to file, together with count statistics")
summaries.author <- write_xtable(df$author.name, file = paste(output.folder, "NamesAcceptedComplete.csv", sep = ""))

