nas <- sapply(split(df$document.pages.total, df$document.dimension.gatherings.estimated), function (x) {mean(is.na(x))})

gatherings <- as.character(levels(df$document.dimension.gatherings.estimated))

for (g in gatherings) {

  f <- system.file(paste("extdata/pagecounts/MissingPages-", g, ".csv", sep = ""), package = "estc")
  if (!f == "") {
    pc <- read.csv(f, header = TRUE, sep = "\t")
    library(dplyr)
    pc <- filter(pc, !is.na(document.pages.total))
    pc$document.pages.total <- as.numeric(gsub(" p\\.", "", pc$document.pages.total))

    for (i in 1:nrow(pc)) {
        inds <- which(as.character(df$document.dimension.gatherings.estimated) == g)
        for (varname in colnames(pc)[1:2]) {
	  # Keep only those docs that match at every field
	  inds2 <- which(df[[varname]] == as.character(pc[i, varname]))
          inds <- intersect(inds, inds2)
	}
	# Just keep unique inds where estimated page count is NA
	inds <- unique(inds)
	inds <- inds[is.na(df[inds, "document.pages.total"])]
	if (length(inds) > 0) {
  	  df[inds, "document.pages.total"] <- pc[i, "document.pages.total"]
	}
     } 
  }
}

nas2 <- sapply(split(df$document.pages.total, df$document.dimension.gatherings.estimated), function (x) {mean(is.na(x))})

# Compare missing page counts before and after this operation
print(cbind(nas, nas2))