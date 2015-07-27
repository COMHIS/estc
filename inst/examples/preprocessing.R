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
source("author.life.R")

print("Publication place")
tmp <- polish_place(df.orig[["260a"]], remove.unknown = TRUE)
df$publication.place <- tmp$valid
print("Write invalid place names to file")
tmp <- write_xtable(tmp$invalid, paste(output.folder, "discarded_place.csv", sep = ""))

# ---------------------------------------

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

# ---------------------------------------

print("Document dimensions")
source("document.dimensions.R")


print("Polish doc sizes")
tmp <- estimate_document_parts(df)
df$document.pages.parts <- tmp$pages
df$document.parts <- tmp$parts
df$document.items <- estimate_document_items(df) # # "Physical items per document"


print("Publisher")
# TODO make the output a nice data frame instead of a list
res <- polish_publisher(df.orig[["260b"]])
df$publication.publisher <- res$printedby
df$publication.publisher.printedby <- res$printedby
df$publication.publisher.printedfor <- res$printedfor
df$publication.publisher <- df$publication.publisher.printedby
print("Count, sort and write to table")
tmp <- write_xtable(res$printedby, paste(output.folder, "PublisherPrintedBy.csv", sep = ""))
tmp <- write_xtable(res$printedfor, paste(output.folder, "PublisherPrintedFor.csv", sep = ""))
tmp <- write_xtable(res$rest, paste(output.folder, "PublisherPrintedOther.csv", sep = ""))


# Skipped for now
#print("Subject geographic places")
#df$subject.geography <- polish_geography(df.orig[["650z.651a.651z"]])
#df[which(df$subject.geography == "NA"), "subject.geography"] <- NA


print("Write full correspondence table")
filename <- paste(output.folder, "PublisherPrintedFull.csv", sep = "")
message(paste("Writing", filename))
names(res) <- c("PrintedFor", "PrintedBy", "NotConsidered", "Original")
write.table(as.data.frame(res), file = filename, quote = FALSE, sep = "\t", row.names = FALSE)  


# Temporary save before proceeding
dftmp <- df

# Polish the final data frame; Filter out years 1800- 
# (mostly errors and printing techniques change dramatically)
df <- df[-which(df$publication.year >= 1800),]


