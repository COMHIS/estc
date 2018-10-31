source("initialize.R")

field <- "physical_dimension"
verbose <- TRUE
df <- df.orig

# FIXME: this includes filling entries which
# should go after initial polishing (enrich section)

# Fill in missing entries where estimates can be obtained:
# area, width, height, gatherings
# (also keep pure originals before fill in)
df.tmp <- polish_dimensions(df[[field]],
		fill = FALSE, verbose = verbose)
df.tmp$original.row <- df.orig$original_row

# Enrich dimensions before pagecount (some dimensions reclassified)
df.preprocessed <- enrich_dimensions(df.tmp)

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, paste("data/unified/polished/", field, ".Rds", sep = ""), compress = TRUE)

# -------------------------------------------------

df <- df.preprocessed
id <- field
f <- knit(input = system.file(paste("extdata/", field, ".Rmd", sep = ""),
  	       	package = "bibliographica"),
                output = paste(summary.folder, "/", id, ".md", sep = "")) 

message("Accepted entries in the preprocessed data")
    s <- write_xtable(df.preprocessed[[field]], paste(output.folder, field, "_accepted.csv", sep = ""), count = TRUE)

message("Discarded entries")
    if ((field %in% names(df.preprocessed)) && (field %in% names(df.orig))) {
      inds <- which(is.na(df.preprocessed[[field]]))
      original <- as.vector(na.omit(as.character(df.orig[[field]][inds])))
      tmp <- write_xtable(original, paste(output.folder, field, "_discarded.csv", sep = ""), count = TRUE)
    }

  message("Physical dimension info")
  tab <- cbind(original = df.orig$physical_dimension,
               df.preprocessed[, c("gatherings.original", "width.original", "height.original", "obl.original", "gatherings", "width", "height", "obl", "area")])
  tmp <- write_xtable(tab, filename = "output.tables/conversions_physical_dimension.csv")

  # Accepted / Discarded dimension info
  inds <- which(is.na(df.preprocessed[["area"]]))
  tmp <- write_xtable(
    cbind(original = as.character(df.orig$physical_dimension)[inds],
          df.preprocessed[inds, c("gatherings", "width", "height", "obl")]),
    paste(output.folder, paste("physical_dimension_incomplete.csv", sep = "_"), sep = ""),
    count = TRUE)





