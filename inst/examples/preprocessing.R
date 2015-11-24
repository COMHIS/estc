print("Start collecting variables to a polished data frame")
df <- data.frame(list(row.index = 1:nrow(df.orig)))

print("Entry identifier to match back to the originals")
df$original_row <- df.orig$original_row

print("Language")
df$language <- df.orig$language 

print("Publication title")
df$title <- polish_title(df.orig$title)

print("Subject topic")
df$topic <- polish.topic(df.orig$subject_topic)

print("Volume number") # which issue this is from a multi-volume series
df$volnumber <- unname(polish_volumenumber(df.orig$physical_extent))

print("Volume count")
df$volcount <- unname(polish_volumecount(df.orig$physical_extent))

print("Arrange author first and last names in a table")
# Add full author name (Last, First) to our data
tmp <- polish_author(df.orig$author_name, validate = TRUE)
df$author_name <- tmp$names$full
# Write invalid author names to file for a later check
for (db in c("first", "last")) {
  fnam <- paste(output.folder, "author_name_discarded_", db, ".csv", sep = "")
  write.table(tmp$invalid[[db]], file = fnam, quote = FALSE, sep = "\t", row.names = FALSE)
}

print("Number of pages")
# ESTC-specific handling
x <- harmonize_pages_specialcases(df.orig$physical_extent)
# Generic handling + assign to the data matrix
df$pagecount <- polish_pages(x, verbose = TRUE)

print("Publication place")
df$publication_place <- polish_place(df.orig$publication_place,
					remove.unknown = TRUE)

print("Augment missing document dimensions") 
# Fill in missing entries where estimates can be obtained:
# area, width, height, gatherings (also keep pure originals before fill in)
tmp <- polish_dimensions(df.orig$physical_dimension, fill = TRUE, verbose = TRUE)
tmp <- tmp[, -grep("original", names(tmp))] # Remove the 'original' fields
df <- cbind(df, tmp) 

print("Estimate number of separate parts in a document")
# parts, pages_per_part
# tmp <- estimate_document_parts(df.orig)
# df <- cbind(df, tmp)

print("Publisher")
df$publisher <- polish_publisher(df.orig$publisher)

# ---------------------------------------

# TODO make a tidy cleanup function to shorten the code here
print("Polish author life years")
tmp <- polish_years(df.orig$author_date, check = TRUE)
df$author_birth <- tmp$from
df$author_death <- tmp$till

# ----------------------------------------------------

print("Publication year")
tab <- polish_years(df.orig$publication_time, check = TRUE)
df$publication_year <- tab$from
# If from year not available, then use till year
inds <- which(is.na(df$publication_year))
df$publication_year[inds] <- tab$till[inds]

df$publication_year[df$publication_year > 2000] <- NA

# Conversion statistics in a file
# (successfull conversions and the count for each)
tmp <- write_xtable(tab, file = paste(output.folder, "publication_year_conversion_table.csv", sep = ""))

# -----------------------------

# Temporary save before proceeding
dftmp <- df

# Polish the final data frame; Filter out years 1800- 
# (mostly errors and printing techniques change dramatically)
rmv <- which(df$publication_year >= 1800)
df <- df[-rmv,]
df.orig <- df.orig[-rmv,]



