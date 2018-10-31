source("initialize.R")

field <- "publication_frequency"
df <- df.orig

tmp <- polish_publication_frequency(df[[field]])

df <- data.frame(
      publication_frequency_annual = tmp$annual,
      publication_frequency_text   = tmp$freq)    

saveRDS(df, paste(polish_folder, field, ".Rds", sep = ""), compress = TRUE)


message("Accepted publication frequency")
  if ("publication_frequency_text" %in% names(df.preprocessed)) {

     publication_frequency_annual <- NULL

     dfp <- df.preprocessed[, c("publication_frequency_text",
			        "publication_frequency_annual")]
     # Remove NA			 
     inds <- is.na(dfp$publication_frequency_text) &
     	     is.na(dfp$publication_frequency_annual)
     dfp <- dfp[!inds,]

    tmp <- write_xtable(dfp,
      paste(output.folder, "publication_frequency_accepted.csv", sep = ""),
      count = TRUE, sort.by = "publication_frequency_annual")
  
    message("Conversion: publication frequency")
    o <- cbind(original_frequency = condense_spaces(tolower(gsub("\\.$", "", as.character(df.orig[["publication_frequency"]])))),
               original_interval = condense_spaces(tolower(gsub("\\.$", "", as.character(df.orig[["publication_interval"]])))),
               original_time = condense_spaces(tolower(gsub("\\.$", "", as.character(df.orig[["publication_time"]]))))
       )
       
    x <- df.preprocessed[, c("publication_frequency_text", "publication_frequency_annual")]
    tab <- cbind(x, o)
    tab$publication_frequency_annual <- round(tab$publication_frequency_annual, 2)
    tab <- tab[which(!rowMeans(is.na(tab[, 1:3])) == 1),] # Remove NA cases  
    tmp <- write_xtable(tab,
      paste(output.folder, "publication_frequency_conversion.csv",
      sep = ""), count = TRUE, sort.by = "publication_frequency_annual")
  
    message("Discarded publication frequency")
    o <- as.character(df.orig[["publication_frequency"]])
    x1 <- as.character(df.preprocessed[["publication_frequency_annual"]])
    x2 <- as.character(df.preprocessed[["publication_frequency_text"]])    
    inds <- which(is.na(x1) & is.na(x2))
    tmp <- write_xtable(o[inds],
      paste(output.folder, "publication_frequency_discarded.csv", sep = ""),
      count = TRUE)
      
  }


# Summary files
# TODO to be combined or separated with "publicationyear"
#sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author,
#      			output.folder = output.folder, ntop = ntop, summaries = "publicationyear")




