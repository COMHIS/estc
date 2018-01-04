#' @title Enrich ESTC
#' @description Enrich preprocessed ESTC data.
#' @param data.enriched Data from generic enrichment
#' @param df.orig Original data frame
#' @param ecco.version Specify the ECCO version to use (1 or 2)
#' @return Enriched data.frame 
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples \dontrun{df2 <- enrich_estc(data.enriched, df.orig, ecco.version = 2)}
#' @keywords utilities
enrich_estc <- function (data.enriched, df.orig, ecco.version = 2) {

  df.preprocessed <- data.enriched$df.preprocessed
  update.fields   <- data.enriched$update.fields
  conversions     <- data.enriched$conversions
  df.orig <- df.orig[match(df.preprocessed$original_row, df.orig$original_row), ]

  message("Estimate the number of physical items for each document")

  # "Physical items per document"
  df.preprocessed$document.items <- estimate_document_items(df.preprocessed) 

  message("Augment with ECCO page counts where appropriate")
  df.preprocessed <- add_ecco_pagecounts(df.preprocessed, df.orig, ecco.version)

  message("Add manually checked pages for some documents") 
  df.preprocessed <- add_manual_pagecounts_estc(df.preprocessed)

  # Form the final data
  data.enriched.estc <- list(df.preprocessed = df.preprocessed,
                             update.fields = update.fields,
                             conversions = conversions) 

  return(data.enriched.estc)

}



