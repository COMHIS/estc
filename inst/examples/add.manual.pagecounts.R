nas <- sapply(split(df$pagecount, df$gatherings), function (x) {mean(is.na(x))})

gatherings <- as.character(levels(df$gatherings))

for (g in gatherings) {

  f <- system.file(paste("extdata/pagecounts/MissingPages-", g, ".csv", sep = ""), package = "estc")
  if (!f == "") {
    pc <- read.csv(f, header = TRUE, sep = "\t")
    library(dplyr)
    pc <- filter(pc, !is.na(document.pages.total))
    pc$document.pages.total <- as.numeric(gsub(" p\\.", "", pc$document.pages.total))

    for (i in 1:nrow(pc)) {
        inds <- which(as.character(df$gatherings) == g)
        for (varname in colnames(pc)[1:2]) {
	  # Keep only those docs that match at every field
	  inds2 <- which(df[[varname]] == as.character(pc[i, varname]))
          inds <- intersect(inds, inds2)
	}
	# Just keep unique inds where estimated page count is NA
	inds <- unique(inds)
	inds <- inds[is.na(df[inds, "pagecount"])]
	if (length(inds) > 0) {
  	  df[inds, "pagecount"] <- pc[i, "document.pages.total"]
	}
     } 
  }
}

nas2 <- sapply(split(df$pagecount, df$gatherings), function (x) {mean(is.na(x))})

# Compare missing page counts before and after this operation
print(cbind(nas, nas2))