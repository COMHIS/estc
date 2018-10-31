source("initialize.R")

field <- "corporate"
df <- data.frame(corporate = polish_corporate(df.orig[[field]]))
saveRDS(df.preprocessed, paste(polish_folder, field, ".Rds", sep = ""), compress = TRUE)



  ## CORPORATE
  # The result is visible at
  # https://github.com/COMHIS/fennica/blob/master/inst/examples/publisher.md
  # and that page is generated from
  # inst/extdata/publisher.Rmd

   message("Accepted corporates")
   field <- "corporate"

   s <- write_xtable(df.preprocessed[[field]],
     	  paste(output.folder, field, "_accepted.csv", sep = ""),
	  count = TRUE)

   message("Discarded corporates")
   if ((field %in% names(df.preprocessed)) && (field %in% names(df.orig))) {
      inds <- which(is.na(df.preprocessed[[field]]))
      original <- as.vector(na.omit(as.character(df.orig[[field]][inds])))
      # Remove trivial cases to simplify output
      inds <- c(grep("^\\[*s\\.*n\\.*\\]*[0-9]*\\.*$", tolower(original)),
      	        grep("^\\[*s\\.*n\\.*\\[*[0-9]*$", tolower(original)))
		
      if (length(inds) > 0) {		
        original <- original[-inds]
      }
      tmp <- write_xtable(original, paste(output.folder, field, "_discarded.csv", sep = ""), count = TRUE)
   }

  message("corporate conversions")
  nam <- "corporate"
    o <- as.character(df.orig[[nam]])
    x <- as.character(df.preprocessed[[nam]])
    inds <- which(!is.na(x) & !(tolower(o) == tolower(x)))
    tmp <- write_xtable(cbind(original = o[inds],
      	 		      polished = x[inds]),
      paste(output.folder, paste(nam, "conversion_nontrivial.csv", sep = "_"),
      sep = ""), count = TRUE)
      


# Summary files TODO
#sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author,
#      			output.folder = output.folder, ntop = ntop)




