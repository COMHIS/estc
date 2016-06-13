library(dplyr)
df <- df.preprocessed
#dinds1 <- duplicated(df[, c("publication.title", "publication.year")], fromLast = T)
#dinds2 <- duplicated(df[, c("publication.title", "publication.year")], fromLast = F)
#dinds1 <- duplicated(df[, -1], fromLast = T)
#dinds2 <- duplicated(df[, -1], fromLast = F)
dinds1 <- duplicated(df.orig, fromLast = T)
dinds2 <- duplicated(df.orig, fromLast = F)
dinds <- which(dinds1 | dinds2)
dfd <- df[dinds, ]
pdf("duplicates.pdf"); hist(dfd$publication.year,50, xlab="Year", ylab="Duplicates (n)", main = "Duplicates per year"); dev.off()
selvar <- c("row.index", "publication.year", "publication.decade", "publication.title","author.name","language","publication.publisher", "publication.publisher.printedby","publication.publisher.printedfor", "subject.topic", "subject.begin", "subject.end", "publication.place", "subject.geography", "document.dimension.cm2", "document.dimension.width.estimated", "document.dimension.height.estimated", "document.dimension.gatherings.estimated", "document.volnumber", "document.volcount", "pagecount", "pagecount.orig")              
dfd <- df[dinds, selvar] %>% arrange(publication.year, publication.title, author.name, language, publication.publisher)
write.table(dfd, sep = "\t", file = "duplicates.tab", quote = F, row.names = F)

df2 <- dfd %>% select(publication.decade, document.dimension.gatherings.estimated) %>% group_by(publication.decade, document.dimension.gatherings.estimated) %>% tally()

pdf("duplicatesizes.pdf")
theme_set(theme_bw(20))
p <- ggplot(df2, aes(x = publication.decade, y = document.dimension.gatherings.estimated, size = n)) 
p <- p + geom_point()
p <- p + xlab("Year")
p <- p + ylab("Publication size")
p <- p + ggtitle("Duplicate size distributions")
print(p)
dev.off()

# Normalize duplicate counts by annual publication numbers
#tab <- table(dfd$publication.year)
#tab2 <- table(round(df.preprocessed$publication.year))
#tmp <- tab[names(tab2)]/tab2; tmp[is.na(tmp)] <- 0
#plot(as.numeric(as.character(names(tmp))), as.numeric(unname(tmp)), type = "l", xlim = c(1560, 1800), ylim = c(0 ,0.12))