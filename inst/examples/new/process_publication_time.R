source("initialize.R")

field <- "publication_time"
df <- df.orig
    
tmp <- polish_years(df[[field]], check = TRUE)

df.tmp <- data.frame(publication_year_from = tmp$from, publication_year_till = tmp$till)

df <- validate_publication_time(preprocessed.data)

saveRDS(df, paste(polish_folder, field, ".Rds", sep = ""), compress = TRUE)

# Summary tables
df.preprocessed <- df

  message("Conversion: publication year")
  # Publication year
  o <- gsub("\\.$", "", as.character(df.orig[["publication_time"]]))
  x <- df.preprocessed[, c("publication_year", "publication_year_from", "publication_year_till")]
  tab <- cbind(original = o, x)
  tab <- tab[!is.na(tab$publication_year),]
  tmp <- write_xtable(tab,
      paste(output.folder, "publication_year_conversion.csv",
      sep = ""), count = TRUE)
  
  message("Discarded publication year")
  o <- as.character(df.orig[["publication_time"]])
  x <- as.character(df.preprocessed[["publication_year"]])
  inds <- which(is.na(x))
  tmp <- write_xtable(o[inds],
      paste(output.folder, "publication_year_discarded.csv", sep = ""),
      count = TRUE)


sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author,
      			output.folder = output.folder, ntop = ntop, summaries = "publicationyear.Rmd")




