# NOTE: could improve this, many names are missing gender now

print("Estimate author genders")
# Extract the first names, assuming that the author name is
# in the form "Last, First"
first <- sapply(as.character(df$author_name), function (x) {y <- unlist(strsplit(x, ", ")); if (length(y)>1) y[[2]] else NA})
g <- get_gender(first)
df$author_gender <- g$gender
fnam <- paste(output.folder, "GenderUnknown.csv", sep = "")
print(paste("Printing file", fnam))
write.table(g$unknown, file = fnam, quote = F, row.names = F, sep = "\t")

print("List the mapped author genders")
tab <- data.frame(list(name = first, gender = df[, "author_gender"]))
tab <- tab %>% group_by(name, gender) %>% summarize(count = n())
tab <- tab[rev(order(tab$count)),]
fnam <- paste(output.folder, "GenderKnown.csv", sep = "")
print(paste("Printing file", fnam))
write.table(tab, file = fnam, quote = FALSE, sep = "\t", row.names = FALSE)

