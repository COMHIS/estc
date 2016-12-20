
enrich_estc <- function (data.enriched) {

  library(estc)

  df.preprocessed <- data.enriched$df.preprocessed
  update.fields   <- data.enriched$update.fields
  conversions     <- data.enriched$conversions

  print("Estimate the number of physical items for each document")

  df.preprocessed$document.items <- estimate_document_items(df.preprocessed) # "Physical items per document"

  print("add manually checked pages for some documents") 
  source("add.manual.pagecounts.R") # load function: add_manual_pagecounts_estc
  df.preprocessed <- add_manual_pagecounts_estc(df.preprocessed)

  # Add ECCO page counts
  df.preprocessed <- add_ecco_pagecounts(df.preprocessed)

  # Form the final data
  data.enriched.estc <- list(df.preprocessed = df.preprocessed,
                             update.fields = update.fields,
                             conversions = conversions) 

  return (data.enriched.estc)
}



add_ecco_pagecounts <- function (df) {

  # Read ECCO dump
  ecco <- read.csv("ecco.csv.gz")

  # Polish ecco ID
  ecco$id <- as.character(ecco$ESTCID)
  # Remove leading zeroes (T012345 -> T12345)
  ecco$id <- sapply(ecco$id, function (x) {paste(substr(x, 1, 1), gsub("^0+", "", substr(x, 2, nchar(x))), sep = "")}, USE.NAMES = FALSE)

  # Polish doc ID
  df$id <- df$system_control_number
  df$id <- gsub("\\(CU-RivES\\)", "", df$id)

  # Augment with ECCO page counts
  pages.estc <- df$pagecount
  pages.ecco <- ecco[match(df$id, as.character(ecco$id)), "totalPages"]
  # Pick pagecount from ECCO for those cases where
  # 1) ESTC pagecount NA but ECCO is available
  # 2) ESTC pagecount very low and ECCO clearly higher
  # The latter is often cases where ESTC just gives the plates info and fails to record the actual pagecount
  # This was manually investigated.
  inds <- (is.na(pages.estc) & !is.na(pages.ecco)) | (pages.estc < 10 & pages.ecco > 100)
  if (any(inds)) {
    df$pagecount[inds] <- pages.ecco[inds]
  }  

  df
}
