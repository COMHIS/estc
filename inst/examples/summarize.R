print("Write the final polished table in a file")
df.preprocessed <- df
write.table(df, file = "estc.csv", sep = "|", quote = FALSE, row.names = FALSE)

print("Print summary tables of page count and volume count conversions")
source("summarize.page.conversions.R")

print("Write summaries of field entries and count stats for all fields")
for (field in setdiff(names(df), "row.index")) {

  print(field)

  print("Accepted entries in the preprocessed data")
  s <- write_xtable(df[[field]], file = paste(output.folder, paste(field, "_accepted.csv", sep = ""), sep = ""), count = TRUE)

  print("Discarded entries")
  if ((field %in% names(df)) && (field %in% names(df.orig))) {
    inds <- which(is.na(df[[field]]))
    original <- as.vector(na.omit(as.character(df.orig[[field]][inds])))
    tmp <- write_xtable(original, paste(output.folder, field, "_discarded.csv", sep = ""), count = TRUE)
  }

  print("Successful conversions")
  if ((field %in% names(df)) && (field %in% names(df.orig))) {
    inds <- which(!is.na(df[[field]]))
    original <- as.character(df.orig[[field]][inds])
    polished <- as.character(df[[field]][inds])
    tab <- cbind(original = original, polished = polished)
    tmp <- write_xtable(tab, paste(output.folder, field, "_conversions.csv", sep = ""))
  }
}

print("Automated summaries done.")

# Birth year not known (NA)
births <- lapply(split(df$author_birth, df$author_name), unique)
na.birth <- names(which(is.na(births)))
tmp <- write_xtable(df$author_name[df$author_name %in% na.birth], paste(output.folder, "author_birth_unknown.csv", sep = ""))

# Ambiguous authors with many birth years
many.births <- lapply(births[names(which(sapply(births, function (x) {length(unique(na.omit(x)))}) > 1))], function (x) {sort(unique(na.omit(x)))})
dfs <- df[df$author_name %in% names(many.births), c("author_name", "author_birth", "author_death")] %>% arrange(author_name, author_birth, author_death)
write.table(dfs, paste(output.folder, "author_life_ambiguous.csv", sep = ""), quote = F, sep = "\t", row.names = FALSE)

print("Publication time: Failed conversions")
x <- as.character(df.orig[which(is.na(df$publication_year)), ]$publication_time)
tmp2 <- write_xtable(x, file = "output.tables/publication_year_failed.csv")

print("Write unrecognized author life years to file together count stats")
tmp <- write_xtable(unname(unlist(df.orig[which(is.na(df$author_birth) & is.na(df$author_death)),]$author_date)), paste(output.folder, "author_life_discarded.csv", sep = ""))

print("Write missing country mappings to file")
write_xtable(as.character(df$publication_place)[is.na(df$publication_country)], file = paste(output.folder, "country_missing.csv", sep = ""))
write_xtable(as.character(df$publication_country), file = paste(output.folder, "country_accepted.csv", sep = ""))

print("Matrix with discarded author names")
discarded.authors <- as.character(na.omit(df.orig[["author_name"]][is.na(df$author_unique)]))
discarded.authors <- write_xtable(discarded.authors, file = "output.tables/author_unique_discarded.csv")
