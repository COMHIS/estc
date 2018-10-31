source("initialize.R")

# Needs physical_dimension field info
fields <- list()
for (field in c("physical_dimension")) {
  fields[[field]] <- readRDS(paste("data/unified/polished/", field, ".Rds", sep = ""))
}

# ---------------------------------------------------

field <- "physical_extent"
df.preprocessed <- polish_physical_extent(df.orig[[field]], verbose = TRUE)
df.preprocessed$original.row <- df.orig$original_row
df.preprocessed$system_control_number <- df.orig$system_control_number

# Some documents have extremely high pagecounts
# (up to hundreds of thousands of pages)
# MT + LL selected 5000 pages as the default threshold.
# If the document has more pages than this, the pagecount
# info will be removed as unreliable
# The ESTC seemed to have 4 documents (out of ~5e5) affected
# with estimated pagecount over 5000
# Also remove negative and zero pagecounts; should not be possible
df <- df.preprocessed

max.pagecount <- 5000
# Apply gap on the highest pagecounts
# Mark as NA so we can investigate these later in more detail as discarded cases
df$pagecount[df$pagecount > max.pagecount] <- NA
df$pagecount[df$pagecount <= 0] <- NA

# Round page counts to the closest integer if they are not already integers
df$pagecount <- round(df$pagecount)

df.preprocessed <- df

# Note the source of page counts. Original MARC data by default.
df.preprocessed$pagecount_from <- rep("original", nrow(df.preprocessed))

# ----------------------------------------------------------

# Dimention information can be picked from here:
df.gatherings <- fields[["physical_dimension"]]

# Enrich pagecount after dimensions 
# volcount, volnumber, dimension
df.preprocessed <- enrich_pagecount(bind_cols(df.preprocessed, df.gatherings))

# ------------------------------------------------------------

# Custom enrich for ESTC
ecco.version <- 2

message("Estimate the number of physical items for each document")

# Physical items per document
df.preprocessed$document.items <- estimate_document_items(df.preprocessed) 

message("Augment with ECCO page counts where appropriate")
df.preprocessed <- add_ecco_pagecounts(df.preprocessed, df.orig, ecco.version)

message("Add manually checked pages for some documents")
df.preprocessed <- add_manual_pagecounts_estc(df.preprocessed)

# ------------------------------------

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, paste("data/unified/polished/", field, ".Rds", sep = ""), compress = TRUE)

# ..............................

df <- df.preprocessed 
knit("pagecounts.Rmd")

# Summary files
id <- "pagecount"
df <- df.preprocessed
f <- knit(input = system.file(paste("extdata/", id, ".Rmd", sep = ""),
  	       	package = "bibliographica"),
       output = paste(id, ".md", sep = "")) # envir = globalenv()

message("Accepted entries in the preprocessed data")
s <- write_xtable(df.preprocessed[[field]],
       paste(output.folder, field, "_accepted.csv", sep = ""), count = TRUE)


message("Discarded entries")
if ((field %in% names(df.preprocessed)) && (field %in% names(df.orig))) {
  inds <- which(is.na(df.preprocessed[[field]]))
  original <- as.vector(na.omit(as.character(df.orig[[field]][inds])))
  tmp <- write_xtable(original, paste(output.folder, field, "_discarded.csv", sep = ""), count = TRUE)
}

message("Nontrivial conversions")
    if (field %in% names(df.preprocessed) && (field %in% names(df.orig)) && !field %in% c("dimension", "title")) {
      message(field)
      inds <- which(!is.na(df.preprocessed[[field]]))
      original <- as.character(df.orig[[field]][inds])
      polished <- as.character(df.preprocessed[[field]][inds])
      tab <- cbind(original = original, polished = polished)
      # Exclude trivial cases (original == polished exluding cases)
      #tab <- tab[!tab[, "original"] == tab[, "polished"], ]
      tab <- tab[!tolower(tab[, "original"]) == tolower(tab[, "polished"]), ]
      
      tmp <- write_xtable(tab, paste(output.folder, field, "_conversion_nontrivial.csv", sep = ""), count = TRUE)
    }
  


  message("Pagecount  conversions")
  o <- as.character(df.orig[["physical_extent"]])
  g <- as.character(df.preprocessed$gatherings)
  x <- as.character(df.preprocessed[["pagecount"]])

  # Do not show the estimated ones,
  # just the page counts that were originally available
  #x2 <- rep("", nrow(df.preprocessed));
  # x2[is.na(df.preprocessed[["pagecount.orig"]])] <- "estimate"
  inds <- which(!is.na(x) & !(tolower(o) == tolower(x)) &
                !is.na(df.preprocessed[["pagecount.orig"]]))
  tmp <- write_xtable(cbind(gatherings = g[inds],
      	                    original_extent = o[inds],  
      	 		    final_pagecount = x[inds]
			    ),
    paste(output.folder, "pagecount_conversions.csv", sep = ""),
    count = TRUE)

  # ----------------------------------------------

  message("Discard summaries")
  inds <- which(is.na(df.preprocessed$pagecount.orig))
  tmp <- write_xtable(cbind(
      	   gatherings = g[inds],	   
	   physical_extent = o[inds],
	   estimated_pagecount = x[inds]
	   ),
      paste(output.folder, "pagecount_discarded.csv", sep = ""),
      count = TRUE)

  message("Page counts")
  use.fields <- intersect(c("pagecount", "volnumber", "volcount"), names(df.preprocessed))
  df.orig.matched <- df.orig[match(df.preprocessed$system_control_number, df.orig$system_control_number), ]
						   
  tab <- cbind(original = df.orig.matched$physical_extent,
                          df.preprocessed[, use.fields])
			  
  # For clarity: remove ECCO and Manually augmented pagecounts from ESTC data
  if ("pagecount_from" %in% names(df) & nrow(df.preprocessed) == nrow(df.orig.matched)) {
    tab <- tab[df.preprocessed$pagecount_from %in% c("estc"),]
  }
  tmp <- write_xtable(tab, filename = "output.tables/conversions_physical_extent.csv")

