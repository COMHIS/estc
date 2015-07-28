print("Arrange author first and last names in a table")
tmp <- polish_author(df.orig$author_name)

# Add full author name (Last, First) to our data
df$author_name <- tmp$names$full

# Write invalid author names to file for a later check
for (db in c("first", "last")) {
  fnam <- paste(output.folder, "Names", "-Invalid-", db, ".csv", sep = "")
  write.table(tmp$invalid[[db]], file = fnam, quote = FALSE, sep = "\t", row.names = FALSE)
}

