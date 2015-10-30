print("Write the final polished table in a file")
df.preprocessed <- df
write.table(df, file = "estc.csv", sep = "|", quote = FALSE, row.names = FALSE)

print("Print summary tables of page count and volume count conversions")
source("summarize.page.conversions.R")

print("Write unique names to file, together with count statistics")
summaries.author <- write_xtable(df$author_name, file = paste(output.folder, "NamesAcceptedComplete.csv", sep = ""))

print("Write unrecognized place names to file")
tmp <- write_xtable(df.orig[which(is.na(df$publication_place)),]$publication_place, paste(output.folder, "discarded_place.csv", sep = ""))
