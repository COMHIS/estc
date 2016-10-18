
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

  data.enriched.estc <- list(df.preprocessed = df.preprocessed,
                             update.fields = update.fields,
                             conversions = conversions) 

  return (data.enriched.estc)
}
