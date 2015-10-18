print("Start collecting variables to a polished data frame")
df <- data.frame(list(row.index = 1:nrow(df.orig)))

print("Language")
df$language <- df.orig$language 

print("Publication title")
# was publication.title
df$title <- polish_title(df.orig$title)

print("Subject topic")
# was subject.topic
df$topic <- polish.topic(df.orig$subject_topic)

print("Volume number") # which issue this is from a multi-volume series
# was document.volnumber
df$volnumber <- unname(polish_volumenumber(df.orig$physical_extent))

print("Volume count")
# was document.volcount
df$volcount <- unname(polish_volumecount(df.orig$physical_extent))

print("Number of pages")
# ESTC-specific handling
x <- harmonize_pages_specialcases(df.orig$physical_extent)
# Generic handling
x <- polish_pages(x, verbose = FALSE)$total.pages
# was document.pages.total
df$pagecount <- x

print("Author info")
source("author.names.R")

print("Publication place")
# was: publication.place
df$publication_place <- polish_place(df.orig$publication_place,
					remove.unknown = TRUE)

print("Augment missing document dimensions") 
# Fill in missing entries where estimates can be obtained:
# area, width, height, gatherings (also keep pure originals before fill in)
tmp <- polish_dimensions(df.orig$physical_dimension, fill = TRUE)
df <- cbind(df, tmp) 

print("Estimate number of separate parts in a document")
# parts, pages_per_part
tmp <- estimate_document_parts(df.orig)
df <- cbind(df, tmp)

print("Publisher")
res <- polish_publisher(df.orig$publisher)
df$publisher <- res$printedby
df$publisher.printedfor <- res$printedfor

print("Write table")
filename <- paste(output.folder, "Publisher.csv", sep = "")
names(res) <- c("PrintedFor", "PrintedBy", "Ignored", "Original")
tmp <- write_xtable(as.data.frame(res), filename = filename)

# ---------------------------------------

source("author.life.R")

print("Publication year")
tab <- polish_years(df.orig$publication_time)
df$publication_year <- tab$from
df$publication_year[df$publication_year > 2000] <- NA

# Conversion statistics in a file
# (successfull conversions and the count for each)
tmp <- write_xtable(tab, file = "output.tables/publication_year.csv")

# Failed conversions
# TODO can be improved considerably
x <- as.character(df.orig[which(is.na(df$publication_year)), ]$publication_time)
tmp2 <- write_xtable(x, file = "output.tables/publication_year_failed.csv")

# -----------------------------

# Temporary save before proceeding
dftmp <- df

# Polish the final data frame; Filter out years 1800- 
# (mostly errors and printing techniques change dramatically)
rmv <- which(df$publication_year >= 1800)
df <- df[-rmv,]
df.orig <- df.orig[-rmv,]



