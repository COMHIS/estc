## ----shakespeare-init, echo=FALSE, message=FALSE, warning=FALSE, echo=FALSE----
load("Shakespeare400.RData")
library(ggplot2)
library(dplyr)
library(tidyr)
library(bibliographica)
library(sorvi)
theme_set(theme_bw(20))

## ----shakespeare-versusother, echo=FALSE, message=FALSE, warning=FALSE, echo=FALSE, fig.width=10, fig.height=5, out.width="700px"----
# Shakespeare fraction of overall title count
# as function of time
dfs <- df.preprocessed
auth <- "Shakespeare"
d <- NULL
  dfs$author2 <- dfs$author %in% my.authors[[auth]]
  d <- dfs %>% group_by(publication_decade) %>%
	 summarize(freq = 100 * mean(author2, na.rm = T),
	 	   author = auth,
		   n = sum(author2, na.rm = T)
	 )
d$author <- factor(d$author)

# Visualize timeline
p <- ggplot(d, aes(x = publication_decade, y = freq)) +
       #geom_bar(stat = "identity", position = "stack", color = "black") +
       geom_line() +
       geom_point(aes(size = n)) +              
       xlab("Publication Decade") +
       ylab("Fraction of all titles (%)") +
       scale_fill_grey() +
       guides(fill = guide_legend("Author")) # +
       #ggtitle("Relative publishing activity")
print(p)

## ----shakespeare-tragedyvscomedy, echo=FALSE, message=FALSE, warning=FALSE, echo=FALSE, fig.width=10, fig.height=5, out.width="700px"----
auth <- "Shakespeare"
df <- tabs[[auth]]
df$publication_decade <- floor(df$publication_year/10) * 10 # 1790: 1790-1799
types = c("Tragedy", "Comedy", "History")
dfs <- df %>% filter(type %in% types) %>%
              group_by(publication_decade, type) %>%
              tally()
dfs$type <- factor(dfs$type, levels = types)

# Visualize the timeline
p <- ggplot(dfs, aes(x = publication_decade, y = n, fill = type)) +
       geom_bar(stat = "identity", position = "stack", color = "black") +
       xlab("Publication Decade") +
       ylab("Title Count") +
       scale_fill_grey() +
       guides(fill = guide_legend("Category")) 
       # ggtitle(paste(auth, "plays"))       
print(p)

## ----shakespeare-titles, echo=FALSE, message=FALSE, warning=FALSE, echo=FALSE, fig.show="hold", out.width="400px", fig.height=13, fig.width=6----
for (auth in names(my.authors)) {
  p <- top_plot(tabs[[auth]], "title", ntop = length(unique(tabs[[auth]]$title)))
  p <- p + ggtitle(auth) + ylab("Title count")
  print(p)
}

## ----shakespeare-cervantes, echo=FALSE, message=FALSE, warning=FALSE, echo=FALSE, out.width="800px", fig.height=7, fig.width=8----
df <- tabc %>% filter(author == "Cervantes") %>%
        group_by(source, publication_decade, title) %>% tally()
top.titles <- names(top(df, "title", 5))
df <- df %>% filter(title %in% top.titles)
df$source <- factor(df$source)
df$title <- droplevels(df$title)

pics <- list()
cols <- c("red", "darkgreen", "blue", "black", "violet")
names(cols) <- top.titles

for (s in unique(df$source)) {

  dfs <- filter(df, source == s)

  p <- ggplot(dfs, aes(x = publication_decade, y = n, fill = title)) +
       geom_bar(stat = "identity", position = "stack", color = "black")
  p <- p + xlim(range(df$publication_decade))
  p <- p + ylim(values = c(0, max(df %>% group_by(publication_decade) %>% tally() %>% select(n)) + 1))
  p <- p + scale_fill_manual(values = cols[as.character(levels(dfs$title))])
  p <- p + xlab("Publication decade")
  p <- p + ylab("Title count (n)")  
  pics[[s]] <- p

}
pics[["cerl"]] <- pics[["cerl"]] + ggtitle("Continental Europe")
pics[["estc"]] <- pics[["estc"]] + ggtitle("Britain and North America")

library(gridExtra)
grid.arrange(pics[[1]], pics[[2]], nrow = 2)

## ----shakespeare-titles2, echo=FALSE, message=FALSE, warning=FALSE, echo=FALSE, out.width="700px", fig.height=4, fig.width=8----
df1 <- filter(tabs$Shakespeare, title %in% c("Hamlet", "Romeo and Juliet", "Macbeth", "Othello"))
df2 <- filter(tabs$Cervantes, title %in% "Don Quixote")
df <- rbind_all(list(df1, df2)) 

# Calculate relative abundances within each decade
dfs <- df %>% group_by(publication_decade, title) %>% tally()
dfs <- dfs %>% spread(title, n, fill = 0)
dfs[,-1] <- t(apply(dfs[, -1], 1, function(x) {x/sum(x)}))
dfs <- gather(dfs, publication_decade)
names(dfs) <- c("publication_decade", "title", "freq")
dfs$title <- factor(dfs$title, levels = unique(dfs$title))

dfs2 <- df %>% group_by(publication_decade, title) %>% tally()
p <- ggplot(dfs2, aes(x = publication_decade, y = n, color = title)) +
       geom_line() +
       #geom_smooth(method = "loess") +       
       geom_point() +       
       xlab("Publication Decade") +
       ylab("Title count (n)") +
       scale_fill_grey() +
       guides(color = guide_legend("Title")) 
       # ggtitle("Comparison of popular titles")
print(p)

p <- ggplot(dfs, aes(x = publication_decade, y = 100*freq, fill = title)) +
       geom_bar(stat = "identity", position = "stack", color = "black") +
       xlab("Publication Decade") +
       ylab("Relative title count (%)") +
       scale_fill_grey() +
       guides(fill = guide_legend("Title")) 
       #ggtitle("Comparison of popular titles")
# print(p)

## ----shakespeare-publisher, echo=FALSE, message=FALSE, warning=FALSE, echo=FALSE, fig.width=8, fig.height=4, out.width="700px"----
auth <- "Shakespeare"
df <- tabc %>% filter(author == "Shakespeare" & source == "estc")
top.publishers <- names(top(df, "publisher", 5))

dfs <- df %>% group_by(publication_decade, publisher) %>%
              filter(publisher %in% top.publishers) %>% tally()

p <- ggplot(dfs, aes(x = publication_decade, y = n, fill = publisher)) +
       geom_bar(stat = "identity", position = "stack", color = "black") +
       xlab("Publication Decade") +
       ylab("Title Count") +
       scale_fill_grey() +
       guides(fill = guide_legend("Publisher")) 
       # ggtitle(paste(auth, ": publisher timelines", sep = ""))       

print(p)

