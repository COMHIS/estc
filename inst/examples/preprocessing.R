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
df <- cbind(df, estimate_document_parts(df.orig))

print("Publisher")
res <- polish_publisher(df.orig$publisher)
df$publisher <- res$printedby
df$publisher.printedfor <- res$printedfor

print("Write table")
filename <- paste(output.folder, "Publisher.csv", sep = "")
names(res) <- c("PrintedFor", "PrintedBy", "Ignored", "Original")
tmp <- write_xtable(as.data.frame(res), filename = filename)

# ---------------------------------------

# USE same function (by NVI) both of these cases:

source("author.life.R")

# TODO move the functions from fennica to bibliographica
print("Publication year")
library(fennica)
dftmp <- df.orig
dftmp$publication_time <- as.character(dftmp$publication_time)
dftmp2 <- df
dftmp2 <- fix_pubtill(dftmp, dftmp2)
dftmp2 <- fix_pubfrom(dftmp, dftmp2)
dftmp2 <- fix_pubwhen(dftmp, dftmp2)
tab <- as.data.frame(cbind(orig = dftmp$publication_time, year = dftmp2$published_in, from = dftmp2$published_from, till = dftmp2$published_till))
tab$year <- as.numeric(as.character(tab$year))
tab$from <- as.numeric(as.character(tab$from))
tab$till <- as.numeric(as.character(tab$till))
inds <- which(is.na(tab$year))
tab[inds, "year"] <- round(rowMeans(tab[inds, c("from", "till")], na.rm = TRUE))
tab$year[tab$year > 2000] <- NA
df$publication.year <- tab$year

# Conversion statistics in a file
# (successfull conversions and the count for each)
tmp <- cbind(original = df.orig$publication_time,
             final = as.character(df$publication.year))
tmp <- tmp[which(!is.na(as.numeric(tmp[, "final"]))),]	     
tmp2 <- write_xtable(tmp, file = "output.tables/publication_year.csv")
# Failed conversions
x <- as.character(df.orig[which(is.na(df$publication.year)), "260c"])
tmp2 <- write_xtable(x, file = "output.tables/publication_year_failed.csv")

# -----------------------------

# Temporary save before proceeding
dftmp <- df

# Polish the final data frame; Filter out years 1800- 
# (mostly errors and printing techniques change dramatically)
rmv <- which(df$publication.year >= 1800)
df <- df[-rmv,]
df.orig <- df.orig[-rmv,]



