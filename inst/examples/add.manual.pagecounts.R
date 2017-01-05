add_manual_pagecounts_estc <- function (df.preprocessed) {

  library(dplyr)
  added.pages.list <- list()

  gatherings <- as.character(levels(df.preprocessed$gatherings))

  for (g in gatherings) {

    indlist <- list()

    f <- system.file(paste("extdata/pagecounts/MissingPages-", g, ".csv", sep = ""),
                     package = "estc")
    
    if (!f == "") {
    
      pc <- read.csv(f, header = TRUE, sep = "\t")
      pc <- filter(pc, !is.na(document.pages.total))
      pc$document.pages.total <- as.numeric(gsub(" p\\.", "", pc$document.pages.total))

      for (i in 1:nrow(pc)) {
      
        inds <- which(as.character(df.preprocessed$gatherings) == g)

        for (varname in colnames(pc)[1:2]) {
          # Keep only those docs that match at every field
	  # TODO isnt it better match with original_row unique id ?
          inds2 <- which(df.preprocessed[[varname]] == as.character(pc[i, varname]))
          inds <- intersect(inds, inds2)
        }

        # Just keep unique inds where estimated page count is NA
        inds <- unique(inds)
        inds <- inds[is.na(df.preprocessed[inds, "pagecount.orig"])]

        if (length(inds) > 0) {
          df.preprocessed[inds, "pagecount"] <- pc[i, "document.pages.total"]
	  indlist[[i]] <- list(inds = unique(df.preprocessed[inds, "system_control_number"]), pagecount = pc[i, "document.pages.total"])
        }	
      }
    }

    added.pages.list[[g]] <- indlist
    
  }

  return(list(df = df.preprocessed, data = added.pages.list))

}

