
# Pick documents with Cicero match for author field
inds <- grep("Cicero", df.preprocessed$author)
df.cicero <- df.preprocessed[inds,]

write.table(df.cicero, sep = "\t", file = paste("Cicero-", gsub(" ", "-", format(Sys.time(), "%b %d %Y")), ".csv", sep = ""), quote = FALSE, row.names = FALSE)







