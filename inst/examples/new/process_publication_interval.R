source("initialize.R")

field <- "publication_interval"
df <- df.orig

tmp <- polish_years(df[[field]], check = TRUE)

df.tmp <- data.frame(publication_interval_from = tmp$from, publication_interval_till = tmp$till)

df <- validate_publication_time(preprocessed.data)

saveRDS(df, paste(polish_folder, field, ".Rds", sep = ""), compress = TRUE)


    # Publication interval
    o <- tolower(gsub("\\.$", "", as.character(df.orig[["publication_interval"]])))
    x <- df.preprocessed[, c("publication_interval_from", "publication_interval_till")]
    tab <- cbind(original = o, x)
    tab <- tab[!is.na(tab$publication_interval_from) | !is.na(tab$publication_interval_till),]
    tmp <- write_xtable(tab,
      paste(output.folder, "publication_interval_conversion_nontrivial.csv",
      sep = ""), count = TRUE)
  
    message("Discarded publication interval")
    o <- df.orig[, c("publication_interval", "publication_time", "publication_frequency")]
    o$publication_time <- gsub("^\\[", "", gsub("\\]$", "", gsub("\\.$", "", o$publication_time)))
    x <- df.preprocessed[,c("publication_interval_from", "publication_interval_till")]
    x2 <- df.preprocessed[, c("publication_frequency_annual", "publication_frequency_text")]

    inds <- which(rowSums(is.na(x)) == 2 & rowSums(is.na(x2)) == 2 )
    o <- o[inds,]
    inds <- is.na(unlist(o[,1])) & grepl("^[0-9]+$", unlist(o[, 2])) & is.na(unlist(o[,3]))
    tmp <- write_xtable(o[!inds,],
      paste(output.folder, "publication_interval_discarded.csv", sep = ""),
      count = TRUE)

    message("Accepted publication interval")
    o <- as.character(df.orig[["publication_interval"]])
    x <- df.preprocessed[c("publication_interval_from", "publication_interval_till")]
    inds <- which(rowSums(!is.na(x))>0)
    tmp <- write_xtable(x[inds,],
      paste(output.folder, "publication_interval_accepted.csv", sep = ""),
      count = TRUE)

  




# Summary files
# TODO to be combined or separated with "publicationyear"
#sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author,
#      			output.folder = output.folder, ntop = ntop, summaries = "publicationyear")







