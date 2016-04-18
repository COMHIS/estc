# Shakespeare / Cervantes / Other
dfs <- df.preprocessed
dfs$author2 <- dfs$author
for (a in names(my.authors)) {
  dfs$author2[which(dfs$author == my.authors[[a]])] <- a
}
dfs$author2[which(!dfs$author %in% my.authors)] <- "Other"
dfs$author2 <- factor(dfs$author2, levels = c("Shakespeare", "Cervantes", "Other"))

# Visualize the timeline
theme_set(theme_bw(20))
dff <- dfs %>% group_by(author2, publication_decade) %>%
     	 tally() %>%
     	 arrange(publication_decade)
p <- ggplot(dff, aes(x = publication_decade, y = n, fill = author2)) +
       geom_bar(stat = "identity", position = "stack", color = "black") +
       xlab("Publication Decade") +
       ylab("Title Count") +
       scale_fill_grey() +
       guides(fill = guide_legend("Author")) +
       ggtitle("Title count timeliness")
print(p)

# -------------------

# LaTeX version (not using any more)
#knitid <- "summary"
#knit(paste(knitid, ".Rtex", sep = ""))
#system(paste("pdflatex ", knitid, ".tex", sep = ""))
#system(paste("evince ", knitid, ".pdf &", sep = ""))
  
#dfto <- filter(df.preprocessed, document.dimension.gatherings.estimated %in% c(paste(2:64, "to", sep = ""), paste(2:64, "long", sep = ""), paste(2:64, "small", sep = "")))
#pages <- as.numeric(gsub(" pages", "", dfto[grep("pages", dfto$document.pages), "document.pages"]))
#pdf("pages.pdf")
#hist(log10(pages), col = "gray", 20, main = paste("Median", median(pages), "; Mean", round(mean(pag#es)), "pages"))
#dev.off()


# -------------------------------------------------------------------

# List author names that have birth and death years available
# These are considered valid names and added to the custom list
# then split into components
skip <- TRUE
if (!skip) {
  a <- df.orig[!is.na(df$author.birth) & !is.na(df$author.death), "100a"]
  a <- unlist(strsplit(as.character(unique(a)), ","))
  a <- gsub("\\.", " ", a)
  a <- str_trim(gsub("\\[", "", gsub("\\]", "", a)))
  a <- str_trim(gsub("\\(", "", gsub("\\)", "", a)))
  a <- unlist(strsplit(a, " "))
  a <- unlist(strsplit(a, "-"))
  a <- unique(a)
  a <- tolower(a)
  b <- as.character(read.csv("../extdata/names/lastnames/custom.csv")[,1])
  write.csv(sort(union(a, b)), file = "../extdata/names/lastnames/custom.csv", quote = F, row.names = F)
  b <- as.character(read.csv("../extdata/names/firstnames/custom.csv")[,1])
  write.csv(sort(union(a, b)), file = "../extdata/names/firstnames/custom.csv", quote = F, row.names = F)
}


# Places with potential hits in geonames
hits <- hits[names(which(sapply(hits, function (x) {nrow(x) > 0})))]
tab <- NULL
for (place in names(hits)) {
  print(place)
  tmp <- hits[[place]][, c(1:3, 5:19, 4)]
  tmp$modification.date <- NULL
  tmp$feature.class <- NULL
  tmp$feature.code <- NULL
  tmp$cc2 <- NULL
  tmp$admin3 <- NULL
  tmp$admin4 <- NULL
  tmp$dem <- NULL
  tmp <- unique(tmp)  	  
  tab <- rbind(tab, cbind(ESTC = rep(place, nrow(hits[[place]])), tmp))
}

print("Write missing hits")
write.table(tab, file = paste(output.folder, "missinggeocoordinates.csv", sep = ""), quote = F, row.names = F, sep = "\t")

# List all potential hits in geonames
hits <- list()
for (place in missing) {
  print(place)
  inds <- unique(c(grep(place, geonames$name), grep(place, geonames$asiiname), grep(place, geonames$alternatenames)))

  # Cambridge Ma -> Cambridge
  spl <- unlist(strsplit(place, " "))
  spl <- spl[-length(spl)]
  place2 <- paste(spl, collapse = " ")
  if (nchar(place2) > 0) {
    inds2 <- unique(c(grep(place2, geonames$name), grep(place2, geonames$asiiname), grep(place2, geonames$alternatenames)))
    inds <- unique(c(inds, inds2))
  }
  hits[[place]] <- geonames[inds,]
}

=======
>>>>>>> 590e69d35eb9d4b9e968c587a1e2e9d470cab86f
inds <- is.na(df$publication.place.geon)
df$publication.place.geon[inds] <- geonames[match(df$publication.place[inds], geonames$name), "name"]
inds <- is.na(df$publication.place.geon)
df$publication.place.geon[inds] <- harmonize_names(as.character(df$publication.place[inds]), geon, remove.unknown = TRUE, check.synonymes = FALSE)$name
# Drop the last part of the name to geonames if match was not found
# "New York N.Y" -> "New York" etc.
inds <- is.na(df$publication.place.geon)
place <- sapply(strsplit(as.character(df$publication.place[inds]), " "), function (x) {paste(x[-length(x)], collapse = " ")})
df$publication.place.geon[inds] <- harmonize_names(place, geon, remove.unknown = TRUE, check.synonymes = FALSE)$name
# Now all places are matched with geonames. Hopefully they match to correct continents etc.
