print("Summarize page conversions")
tab <- cbind(
	     #pages.parts = df$document.pages.parts, 
	     pages.total = df$pagecount,
	     volumes = as.character(df$volcount), 
             # parts = as.character(df$parts),
	     gatherings = as.character(df$gatherings),
	     pages.original = as.character(df.orig$physical_extent),
	     dimensions.original = as.character(df.orig$physical_dimension)	     
	     )
tmp <- write_xtable(tab, paste(output.folder, "page_conversion_table_full.csv", sep = ""))

tab <- cbind(
	     pages.total = df$pagecount, 
	     pages.original = as.character(df.orig$physical_extent),
	     dimensions.original = as.character(df.orig$physical_dimension)
	     )
tmp <- write_xtable(tab, paste(output.folder, "page_conversion_table_brief.csv", sep = ""))


print("Summarize item counts")
tab <- cbind(
	     volumes = df$volcount, 
             # parts = df$parts, 
             # items = df$document.items, 
	     pages.original = as.character(df.orig$physical_extent)
	     )
tmp <- write_xtable(tab, paste(output.folder, "items_accepted.csv", sep = ""))


print("Summarize page and size conversions in a file")
tab <- cbind(gatherings = as.character(df$gatherings),
	     width = as.character(df$width),
	     height = as.character(df$height),
	     dimensions.original = as.character(df.orig$physical_dimension)
	     )
tmp <- write_xtable(tab, paste(output.folder, "dimension_conversion_table.csv", sep = ""))

# Summarize data in file
discarded <- as.character(df.orig$physical_dimension)[is.na(df$area)]
tab <- write_xtable(discarded, paste(output.folder, "dimensions_discarded.csv", sep = ""))

