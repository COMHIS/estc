Tässä näyttäisi "3 vol. plates" teos saavan arvion 1240 sivua; "10 v." teos 4133.3333 sivua; "10 v." teos 80 sivua ja sitten "18 v. teos" hyvin vähän sivuja.

1240 3 NA 3 v., plates 5
4133.33333333333 10 NA 10 v. 5
80 10 NA 10 v. 5
168 21 NA 21 v. 5
4 18 NA 18 v., plates 5
64 8 NA 8 v. 5

240 20 NA 20 v. 4
6444 9 NA 9 v. 4
216 18 NA 18 v. 4
180 15 NA 15 v. 4
3720 9 NA 9 v. 4
72 9 NA 9 v. 4




print("Summarize page conversions")
tab <- cbind(
	     #pages.parts = df$document.pages.parts, 
	     pages.total = df$pagecount,
	     volumes = as.character(df$volcount), 
             parts = as.character(df$parts),
	     gatherings = as.character(df$gatherings),
	     pages.original = as.character(df.orig$physical_extent)
	     )
tmp <- write_xtable(tab, paste(output.folder, "documentpages-estimated.csv", sep = ""))


print("Summarize item counts")
tab <- cbind(
	     volumes = df$volcount, 
             parts = df$parts, 
             # items = df$document.items, 
	     pages.original = as.character(df.orig$physical_extent)
	     )
tmp <- write_xtable(tab, paste(output.folder, "document-items-estimated.csv", sep = ""))


print("Summarize page and size conversions in a file")
tab <- cbind(gatherings = as.character(df$gatherings),
	     width = as.character(df$width),
	     height = as.character(df$height),
	     dimensions.original = as.character(df.orig$physical_dimension)
	     )
tmp <- write_xtable(tab, paste(output.folder, "dimension_conversions.csv", sep = ""))

tab <- cbind(
	     pages.total = df$pagecount, 
	     pages.original = as.character(df.orig$physical_extent),
	     dimensions.original = as.character(df.orig$physical_dimension)
	     )
tmp <- write_xtable(tab, paste(output.folder, "page_conversions.csv", sep = ""))

# Summarize data in file
discarded <- as.character(df.orig$physical_dimension)[is.na(df$area)]
tab <- write_xtable(discarded, paste(output.folder, "documentdimensions_discarded.csv", sep = ""))

