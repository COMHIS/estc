# Read the final preprocessed ESTC data table
df <- read.csv(file = "estc.csv", sep = "|")
df2 <- df %>% filter(document.dimension.gatherings.estimated == "4to" & publication.year == 1642) %>% select(author.unique, publication.title) %>% group_by(author.unique, publication.title) %>% tally() 
df3 <- as.data.frame(df2)
df4 <- df3[rev(order(df3$n)),]
write.table(df4, file = "peak1642.tab", sep = "\t", quote = F, row.names = F)

pdf("peak1642.pdf")
p <- ggplot(df %>% group_by(publication.year, document.dimension.gatherings.estimated) %>% tally(), aes(x = publication.year, y = document.dimension.gatherings.estimated, size = n)) 
p <- p + geom_point()
print(p)
dev.off()

