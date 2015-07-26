print("Summarize page conversions")
tab <- cbind(
	     pages.parts = df$document.pages.parts, 
	     pages.total = df$document.pages.total, 
	     pages.original = as.character(df.orig[["300a"]])
	     )
tmp <- write_xtable(tab, paste(output.folder, "documentpages-estimated.csv", sep = ""))

print("Summarize item counts")
tab <- cbind(
	     volumes = df$document.volcount, 
             parts = df$document.parts, 
             items = df$document.items, 
	     pages.original = as.character(df.orig[["300a"]])
	     )
tmp <- write_xtable(tab, paste(output.folder, "document-items-estimated.csv", sep = ""))


print("Summarize page and size conversions in a file")
tab <- cbind(gatherings = df$document.dimension.gatherings.original,
	     gatherings.estimated = df$document.dimension.gatherings.estimated,

       	     width = df$document.dimension.width.original,
	     width.estimated = df$document.dimension.width.estimated,

       	     height = df$document.dimension.height.original,
	     height.estimated = df$document.dimension.height.estimated,

	     area = df$document.dimension.cm2,

	     volumes = df$document.volcount, 
             parts = df$document.parts, 
	     pages.parts = df$document.pages.parts, 
	     pages.total = df$document.pages.total, 

	     pages.original = as.character(df.orig[["300a"]]),
	     dimensions.original = as.character(dimension.table$original)

	     )
tmp <- write_xtable(tab, paste(output.folder, "documentsizes-estimated.csv", sep = ""))

# Summarize data in file
discarded <- df.orig[["300c"]][is.na(df$document.dimension.cm2)]
tab <- write_xtable(discarded, paste(output.folder, "documentdimensions-discarded.csv", sep = ""))

