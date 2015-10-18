print("Summarize page conversions")
tab <- cbind(
	     #pages.parts = df$document.pages.parts, 
	     pages.total = df$pagecount, 
	     pages.original = as.character(df.orig$physical_extent)
	     )
tmp <- write_xtable(tab, paste(output.folder, "documentpages-estimated.csv", sep = ""))

print("Summarize item counts")
tab <- cbind(
	     volumes = df$volcount, 
             parts = df$parts, 
             # items = df$document.items, 
	     pages.original = as.character(df.orig[["300a"]])
	     )
tmp <- write_xtable(tab, paste(output.folder, "document-items-estimated.csv", sep = ""))


print("Summarize page and size conversions in a file")
tab <- cbind(gatherings = df$gatherings.original,
	     gatherings = df$gatherings,

       	     width = df$width.original,
	     width = df$width,

       	     height = df$height.original,
	     height = df$height,

	     area = df$area,

	     volumes = df$volcount, 
             parts = df$parts, 
	     pages.parts = df$pages_per_part, 
	     pages.total = df$pagecount, 

	     pages.original = as.character(df.orig[["300a"]]),
	     dimensions.original = as.character(dimension.table$original)

	     )
tmp <- write_xtable(tab, paste(output.folder, "documentsizes-estimated.csv", sep = ""))

# Summarize data in file
discarded <- df.orig[["300c"]][is.na(df$area)]
tab <- write_xtable(discarded, paste(output.folder, "documentdimensions-discarded.csv", sep = ""))

