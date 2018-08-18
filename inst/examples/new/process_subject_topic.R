source("initialize.R")

field <- "subject_topic"
df <- as.data.frame(df.orig[, field])
saveRDS(df.preprocessed, paste(polish_folder, field, ".Rds", sep = ""), compress = TRUE)


   message("subject_topic")
   field = "subject_topic"
   entries = unlist(strsplit(as.character(df.preprocessed[[field]]), ";"), use.names = FALSE)
    s <- write_xtable(entries, paste(output.folder, field, "_accepted.csv", sep = ""), count = TRUE)

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

# Summary files
# TODO generate distinct summaries for subject_topic and publication_topic - 
#sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author,
#      			output.folder = output.folder, ntop = ntop, summaries = "topic")





