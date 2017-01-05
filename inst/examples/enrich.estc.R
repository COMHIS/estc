enrich_estc <- function (data.enriched, df.orig) {

  library(estc)
  ecco.version <- 2

  df.preprocessed <- data.enriched$df.preprocessed
  update.fields   <- data.enriched$update.fields
  conversions     <- data.enriched$conversions
  df.orig <- df.orig[match(df.preprocessed$original_row, df.orig$original_row), ]

  message("Estimate the number of physical items for each document")

  df.preprocessed$document.items <- estimate_document_items(df.preprocessed) # "Physical items per document"

  # TODO check if this is really necessary step
  message("add manually checked pages for some documents") 
  source("add.manual.pagecounts.R") # load function: add_manual_pagecounts_estc
  res <- add_manual_pagecounts_estc(df.preprocessed)
  df.preprocessed <- res$df
  manual.pages <- res$data
  save(manual.pages, file = "~/tmp/manualpages.RData")

  message("Augment with ECCO page counts where appropriate")
  df.preprocessed <- add_ecco_pagecounts(df.preprocessed, df.orig, ecco.version)

  # Form the final data
  data.enriched.estc <- list(df.preprocessed = df.preprocessed,
                             update.fields = update.fields,
                             conversions = conversions) 

  return (data.enriched.estc)
}




add_ecco_pagecounts <- function (df, df.orig, ecco.version = 2) {

  # Read ECCO dump
  ecco <- read_ecco(version = ecco.version)

  # Cases that have been checked manually that ECCO -> ESTC is ok
  manually.accepted <- c("N24575", "P2750", "P2626", "P2938", "P2831")

  # Polish doc ID
  df$id <- df$system_control_number
  df$id <- gsub("\\(CU-RivES\\)", "", df$id)

  # Initialize new field indicating pagecounts that have been taken from ECCO
  df$pagecount.from.ecco <- FALSE

  # Augment with ECCO page counts
  #pages.estc <- df.orig$pagecount # Page count before mean estimation
  pages.estc.orig <- df$pagecount.orig # Page count before mean estimation  
  pages.estc <- df$pagecount # Page count after mean estimation
  pages.ecco <- ecco[match(df$id, as.character(ecco$id)), "totalPages"]

  # --------------------------------------------------------

  # ECCO docs where ESTC pagecount is NA or < ECCO and volcount NA and original volcount "v." (but not v.2 or similar)
  inds <- which((df$id %in% ecco$id) &
	             (is.na(pages.estc.orig) | pages.estc.orig < pages.ecco) &
		     grepl("^v\\.,*", df.orig$physical_extent))
  inds <- setdiff(inds, grepl("^v\\.[0-9]+", df.orig$physical_extent))		     
  inds0 <- inds <- sort(unique(inds))
  df <- add_helper(df, ecco, inds) 


  # ECCO often lists pagecount for a single year in multi-volume cases
  # Where ESTC has a single multi-volume document, and ECCO lists more detailed
  # info for the individual volumes, in thos cases sum up the ECCO pagecounts
  # to get the total page count for ESTC
  inds <- c(
              # ECCO docs where ESTC pagecount is NA
              which((df$id %in% ecco$id) & is.na(pages.estc.orig) & !is.na(pages.ecco)),
              # ECCO docs where ESTC pagecount is <20 but ECCO is >100	    
              which((df$id %in% ecco$id) & pages.estc.orig < 20 & pages.ecco > 100),
              # ECCO docs where ESTC pagecount only consists of plates	    
              which((df$id %in% ecco$id) & df$pagecount.orig == df$pagecount.plate)	    
	    )
  inds1 <- inds <- sort(unique(inds))
  
  for (i in inds) {
    # Identify this given document from ECCO
    myid <- df[i,"id"]
    hits <- which(ecco[, "id"] == myid)
    # Sometimes a given document or volume has duplicated entries
    # for instance "T063904". Then remove the duplicates before further analysis
    hits <- hits[!duplicated(ecco[hits, "documentID"])]
    # If number of ECCO hits is the same than ESTC volume count
    # Then we conclude that the ECCO lists detailed info for each individual volume
    # Therefore, sum up the pagecounts over the individual volumes
    # to get the overall estimate for ESTC
    if (!is.na(df[i, "volcount"]) && length(hits) == df[i, "volcount"]) {
      df[i, "pagecount"] <- sum(ecco[hits,"totalPages"])
      df[i, "pagecount.from.ecco"] <- TRUE      
    } else {
      # For instance id = "N5157" has ESTC volcount 3 and ECCO volcount 4
      # In these cases mark the pagecount as NA.
      # This will be later augmented with mean estimate x ESTC volcount
      # However these seem to give correct pagecount in most cases
      # (for instance if an individual volume has 2 parts ESTC may have 8 vols and ECCO 9 hits but
      # page counts go correctly)
      tot <- sum(ecco[hits,"totalPages"])
      if (length(hits) == 1 | tot > 200) {
        # Accept ECCO pagecount sum if it is more than 200 pages
        df[i, "pagecount"] <- tot
      } else if (myid %in% manually.accepted) {
        df[i, "pagecount"] <- tot        
      } else {
        # Otherwise mark NA and check manually
        df[i, "pagecount"] <- NA
      }
      df[i, "pagecount.from.ecco"] <- TRUE
    }
  }

  # Recognize these cases and calculate the total multi-volume pagecount
  # based on the ECCO single year estimate.
  # Identification criteria:
  # 1) Multi-volume document
  # 2) No original pagecount
  # 3) Estimated ESTC pagecount higher than ECCO (18v x 200 vs 418)
  # 4) Not considered above ie. ECCO does not give full info for individual volumes
  inds2 <- which(df$multivol & is.na(pages.estc.orig) & !is.na(pages.ecco) & (pages.estc > pages.ecco))
  inds2 <- setdiff(inds2, inds1) # Do not consider the previous step here any more
  df[inds2, "pagecount"] <- df[inds2, "volcount"] * pages.ecco[inds2]
  df$pagecount.from.ecco[inds] <- TRUE

  # For the remaining cases that were not yet filled:
  # Pick pagecount from ECCO for those cases where
  # 1) ESTC original pagecount NA (before enrichment) but ECCO is available
  # 2) ESTC pagecount very low and ECCO clearly higher
  # The latter is often cases where ESTC just gives the plates info and
  # fails to record the actual pagecount
  # This was manually investigated.
  inds <- (is.na(pages.estc.orig) & !is.na(pages.ecco)) |
            (pages.estc.orig < 20 & pages.ecco > 100 & !is.na(pages.ecco))
  inds <- which(inds)	    
  inds3 <- inds <- setdiff(inds, c(inds1, inds2))
  if (length(inds)>0) {
    df$pagecount[inds] <- pages.ecco[inds]
    df$pagecount.from.ecco[inds] <- TRUE
  }

  df

}


add_helper <- function (df, ecco, inds) {

  for (i in inds) {
    # Identify this given document from ECCO
    myid <- df[i,"id"]
    hits <- which(ecco[, "id"] == myid)
    # Sometimes a given document or volume has duplicated entries
    # for instance "T063904". Then remove the duplicates before further analysis
    hits <- hits[!duplicated(ecco[hits, "documentID"])]
    # If number of ECCO hits is the same than ESTC volume count
    # Then we conclude that the ECCO lists detailed info for each individual volume
    # Therefore, sum up the pagecounts over the individual volumes
    # to get the overall estimate for ESTC
    df[i, "pagecount"] <- sum(ecco[hits,"totalPages"])
    df[i, "pagecount.from.ecco"] <- TRUE      

  }
  df
}

