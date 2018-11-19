source("initialize.R")

field <- "language"

# Polish the given field
df.preprocessed <- mark_languages(df.orig[["language"]])
df.preprocessed$original.row <- df.orig$original_row

# Save
saveRDS(df.preprocessed, "data/unified/polished/languages.Rds", compress = TRUE)

# -------------------------------------------------------------

# Generate summary markdown file
df <- df.preprocessed
id <- field
f <- knit(input = system.file(paste("extdata/", field, ".Rmd", sep = ""),
  	       	package = "bibliographica"),
                output = paste(summary.folder, "/", id, ".md", sep = "")) 

# Write CSV summaries
message("Accepted entries in the preprocessed data")
s <- write_xtable(df.preprocessed[[field]], paste(output.folder, field, "_accepted.csv", sep = ""), count = TRUE)

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
      tab <- tab[!tolower(tab[, "original"]) == tolower(tab[, "polished"]), ]
      tmp <- write_xtable(tab, paste(output.folder, field, "_conversion_nontrivial.csv", sep = ""), count = TRUE)
}

message("Undefined language")
# Remove "und" from the list ("Undetermined")
f <- system.file("extdata/language_abbreviations.csv", package = "bibliographica")
abrv <- read_mapping(f, include.lowercase = T, self.match = T, ignore.empty = FALSE, mode = "table", sep = "\t")
  
# List unique languages that occur in the data
  lang <- tolower(df.orig$language)
  lang <- unique(lang[!is.na(lang)])
  lang <- unlist(strsplit(lang, ";"), use.names = FALSE)
  lang <- unique(lang)
  lang <- lang[!grepl("^[0-9]$", lang)] # Remove numerics
  
# Remove the known ones (und is Undetermined)
  known.abbreviations <- setdiff(abrv$synonyme, "und") # und = Undetermined
  discarded.lang <- c("*", ".", "^,", "", "-", "\\\\?", "&")
  unknown.lang <- lang[!lang %in% c(known.abbreviations, discarded.lang)]

message("Write unknown languages")
  if (length(unknown.lang)>0) {
    ltab <- table(df.orig$language)
    #spl <- unlist(strsplit(names(ltab), ";"), use.names = FALSE)
    # Count occurrences for each unknown lang
    # TODO should be easy to speed up by considering unique entries only
    # and them summing up their stats
    # Identify hits 0/1
    u <- sapply(unknown.lang, function (ul) grepl(paste("^", ul, "$", sep = ""), names(ltab))) |
      	 sapply(unknown.lang, function (ul) grepl(paste("^", ul, ";", sep = ""), names(ltab))) |
      	 sapply(unknown.lang, function (ul) grepl(paste(";", ul, ";", sep = ""), names(ltab))) |
      	 sapply(unknown.lang, function (ul) grepl(paste(";", ul, "$", sep = ""), names(ltab)))

    # Multiply by counts of each case 
    u <- apply(u, 2, function (x) {x * ltab})	 

    # Sum up the occurrence counts for each unknown language
    u <- colSums(u)
    u <- u[u > 0]    
    u <- rev(sort(u))
    tab <- cbind(term = names(u), n = unname(u))
    tmp <- write.csv(tab,
	     file = paste(output.folder, "language_discarded.csv", sep = ""),
	     quote = F, row.names = F)
  } else {
    write.csv("No entries.", file = paste(output.folder, "language_discarded.csv", sep = ""))
  }

message("Accepted languages")
  known.lang <- lang[lang %in% known.abbreviations]
  tmp <- write_xtable(map(known.lang, abrv), paste(output.folder, "language_accepted.csv", sep = ""), count = TRUE)

message("Language conversions")
  original <- as.character(df.orig[[field]])
  polished <- as.character(df.preprocessed[[field]])
  tab <- cbind(original = original, polished = polished)
  tmp <- write_xtable(tab, paste(output.folder, field, "_conversions.csv", sep = ""), count = TRUE)


