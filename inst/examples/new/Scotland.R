## ----ScotlandInit, echo=FALSE, message=FALSE-----------------------------
# Load libraries
library(ggplot2)
library(tidyr)
library(dplyr)
library(reshape)
library(estc)
library(bibliographica)

## ----ScotlandRead, echo=FALSE--------------------------------------------
# Pick Scotland documents only
sel.country <- "Scotland"
dfo <- filter(df.preprocessed, country == sel.country)

## ----ScotlandTopAuth, echo=FALSE-----------------------------------------
p <- top_plot(dfo, "author", 20)
p <- p + ggtitle(paste("Most common authors from", sel.country))
p <- p + ylab("Documents") + xlab("")
print(p)

## ----ScotlandTop10authors, fig.height=30, fig.width=10, echo=FALSE-------
df <- dfo
top10 <- names(sort(table(df$author), decreasing = TRUE))[1:10]
dfs <- filter(df, author %in% top10)
dfs <- group_by(dfs, author, publication_year) %>% summarize(ndoc = n())
p <- ggplot(dfs, aes(x = publication_year, y = ndoc)) 
p <- p + geom_bar(stat = "identity") 
p <- p + facet_grid(author ~ .)
p <- p + ggtitle("Number of documents per year for top-10 authors")
print(p)

## ----Scotlandtopplaces, echo=FALSE---------------------------------------
p <- top_plot(dfo, "publication_place", 20)
p <- p + ggtitle(paste("Most common publication places in", sel.country))
p <- p + ylab("Documents") + xlab("")
print(p)

## ----Scotlandtoptitles, fig.width=10, fig.height=10, echo=FALSE----------
p <- top_plot(dfo, "title", 20)
p <- p + ggtitle(paste("Most common titles from", sel.country))
p <- p + ylab("Documents") + xlab("")
print(p)

## ----Scotlandad500, echo=FALSE, fig.width=20, fig.height=10--------------
year <- 500
dfs <- filter(dfo, author_birth < year)

tab <- table(dfs$author)
top <- names(rev(sort(tab))[1:10])

dfss <- dfs %>% filter(author %in% top) %>%
        group_by(author, publication_decade) %>%
	summarize(paper = sum(paper))
p <- ggplot(dfss, aes(x = publication_decade, y = paper, fill = author)) + geom_bar(stat = "identity") + ggtitle("All countries (ancient authors)")
print(p)


dfs <- dfo %>%
       filter(author_birth < year) %>%
       filter(country %in% sel.country)
tab <- table(dfs$author)
top <- names(rev(sort(tab))[1:10])
dfss <- dfs %>% filter(author %in% top) %>%
        group_by(author, publication_decade) %>%
	summarize(paper = sum(paper))
p <- ggplot(dfss, aes(x = publication_decade, y = paper, fill = author)) + geom_bar(stat = "identity") + ggtitle("Scotland (ancient authors)")
print(p)

## ----Scotlandad500B, echo=FALSE, fig.width=20, fig.height=10-------------
print(tab)

## ----Scotlandaveout, echo=FALSE, fig.width=12, fig.height=8--------------
df <- dfo
df$publication_place <- droplevels(df$publication_place)

publications <- tapply(df$unity, list(df$publication_decade, df$publication_place), sum)
publications[is.na(publications)] <- 0 # Set NAs to 0
publications <- publications/10 # Instead of decadal sum, use average annual output 

publications.annual <- tapply(df$unity, list(df$publication_year, df$publication_place), sum)
publications.annual[is.na(publications.annual)] <- 0 # Set NAs to 0

dfm <- melt(publications) 
names(dfm) <- c("Time", "Place", "Documents")

dfm.annual <- melt(publications.annual) 
names(dfm.annual) <- c("Time", "Place", "Documents")

theme_set(theme_bw(20))
p <- ggplot(dfm, aes(x = Time, y = Documents, color = Place))
#p <- ggplot(dfm, aes(x = Time, y = Documents))
p <- p + geom_line() + geom_point()
p <- p + xlab("Year") + ylab("Publications per year")
p <- p + ggtitle(paste("Publication activity ", min(dfm$Time), "-", max(dfm$Time), sep = ""))
#p <- p + scale_color_manual(values=c("red", "blue", "darkgreen", "black", "pink"))
p <- p + geom_point(data = dfm.annual, aes(x = Time, y = Documents, color = Place))
print(p)

## ----Scotlandaveout2, echo=FALSE, fig.width=12, fig.height=8-------------
df <- dfo
publications <- tapply(df$unity, list(df$publication_decade, df$publication_place), sum)
publications[is.na(publications)] <- 0 # Set NAs to 0
publications <- publications/10 # Instead of decadal sum, use average annual output 
publications.annual <- tapply(df$unity, list(df$publication_year, df$publication_place), sum)
publications.annual[is.na(publications.annual)] <- 0 # Set NAs to 0

# Keep only top-5 publication places (w.r.t. total volume)
top_places <- names(rev(sort(colSums(publications)))[1:5])
publications <- publications[, top_places]
publications.annual <- publications.annual[, top_places]

dfm <- melt(publications) 
names(dfm) <- c("Time", "Place", "Documents")

dfm.annual <- melt(publications.annual) 
names(dfm.annual) <- c("Time", "Place", "Documents")

theme_set(theme_bw(20))
p <- ggplot(dfm, aes(x = Time, y = Documents, color = Place))
p <- p + geom_line() + geom_point()
p <- p + xlab("Year") + ylab("Publications per year")
p <- p + ggtitle(paste("Publication activity ", min(dfm$Time), "-", max(dfm$Time), sep = ""))
p <- p + scale_color_manual(values=c("red", "blue", "darkgreen", "black", "pink"))
p <- p + geom_point(data = dfm.annual, aes(x = Time, y = Documents, color = Place))
print(p)


skip <- TRUE
if (!skip) {
# Interactive plots
require(rCharts)
rPlot(Documents ~ Time, data = dfm.annual, color = 'Place', type = 'point')

# Standard economics longitudinal chart
df <- transform(dfm.annual, date = as.character(Time))
dfs <- spread(df, Place, Documents)
dfs$date <- as.numeric(as.character(dfs$date))
#m1 <- mPlot(x = 'date', y = c('Edinburgh', 'Glasgow'), type = 'Line', data = dfs)
m1 <- mPlot(x = 'date', y = c('Edinburgh'), type = 'Line', data = dfs)
m1$set(pointSize = 0, lineWidth = 1)
m1$publish('Scatterplot', host = 'gist') 
#print(m1)
}

## ----Scotlandpub1700, echo=FALSE-----------------------------------------
# Pick Scotland and London documents
df1700 <- filter(dfo, publication_year >= 1700 & publication_year <= 1800) 
df.scotland <- filter(df1700, country == "Scotland")
df.london <- filter(df1700, publication_place == "London")

## ----Scotlandpub1700b, echo=FALSE, fig.width=15, fig.height=7------------
df.london$publication_place2 <- droplevels(df.london$publication_place)
df.scotland$publication_place2 <- droplevels(df.scotland$country)
df <- rbind(df.london, df.scotland)
# use average annual output therefore divide by 10
dfm <- df %>% group_by(publication_decade, publication_place2) %>% summarize(paper = sum(paper, na.rm = T)/10, n = n()/10)

theme_set(theme_bw(20))
p <- ggplot(dfm, aes(x = publication_decade, y = n, color = publication_place2))
p <- p + geom_point()
p <- p + geom_smooth(method = "loess")
p <- p + xlab("Year") + ylab("Publications per year (n)")
p <- p + ggtitle("Published documents")
p <- p + scale_color_manual(values=c("red", "blue", "darkgreen", "black", "pink"))
p <- p + guides(color = guide_legend(title="Publication place"))
print(p)


theme_set(theme_bw(20))
p <- ggplot(dfm, aes(x = publication_decade, y = paper, color = publication_place2))
p <- p + geom_point()
p <- p + geom_smooth(method = "loess")
p <- p + xlab("Year") + ylab("Annual paper consumption")
p <- p + ggtitle("Paper consumption")
p <- p + scale_color_manual(values=c("red", "blue", "darkgreen", "black", "pink"))
p <- p + guides(color = guide_legend(title="Publication place"))
print(p)

## ----Scotlandselectedauthors, echo=FALSE, fig.width=15, fig.height=7-----
authors <- c("Hume, David (1711-1776)", "Robertson, William (1721-1793)", "Gibbon, Edward (1737-1794)")
cols <- c("red", "blue", "darkgreen"); names(cols) <- authors
dfa <- filter(dfo, author %in% authors) 
lims <- range(dfa$publication_year)

dfs <- group_by(dfa, author, publication_year) %>% summarize(ndoc = n())
p <- ggplot(dfs, aes(x = publication_year, y = ndoc, col = author)) 
p <- p + geom_line() + geom_point()
p <- p + scale_color_manual(values=cols[dfs$author])
p <- p + ylab("Documents")
p <- p + ggtitle("Documents from selected authors (all places)")
p <- p + xlim(limits = lims)
print(p)

for (ctr in c("Scotland", "USA")) {
  dfs <- dfo %>% filter(country == ctr) %>% 
    group_by(author, publication_year) %>% 
    summarize(ndoc = n())
  p <- ggplot(dfs, aes(x = publication_year, y = ndoc, col = author)) 
  p <- p + geom_line() + geom_point()
  p <- p + scale_color_manual(values=cols[dfs$author])
  p <- p + ylab("Documents")
  p <- p + ggtitle(paste("Documents from selected authors (", ctr, ")"))
  p <- p + xlim(limits = lims)
  print(p)
}

ctr <- "London"
  dfs <- dfa %>% filter(publication_place == ctr) %>% 
    group_by(author, publication_year) %>% 
    summarize(ndoc = n())
  p <- ggplot(dfs, aes(x = publication_year, y = ndoc, col = author)) 
  p <- p + geom_line() + geom_point()
  p <- p + scale_color_manual(values=cols[dfs$author])
  p <- p + ylab("Documents")
  p <- p + ggtitle(paste("Documents from selected authors (", ctr, ")"))
  p <- p + xlim(limits = lims)
  print(p)

## ----Scotlandselectedperiods, echo=FALSE, fig.width=15, fig.height=7-----
df <- dfo %>% filter(publication_year >= 1750 & publication_year <= 1799)
lims <- range(df$publication_year)
df$author_birth.period <- cut(as.numeric(df$author_birth), breaks = c(-Inf, 501, 1500, 1600, 1650, 1700, 1730), right = FALSE, labels = c("-500AD", "501-1500", "1501-1600", "1601-1650", "1651-1700", "1701-1730"))
dfs <- filter(df, !is.na(author_birth.period))
df <- group_by(dfs, author_birth.period, publication_year) %>% summarize(ndoc = n())
p <- ggplot(df, aes(x = publication_year, y = ndoc, col = author_birth.period)) 
p <- p + geom_line() + geom_point()
p <- p + ylab("Documents")
p <- p + xlab("Publication Year")
p <- p + ggtitle("Documents from authors from different periods (all places)")
p <- p + xlim(limits = lims)
p <- p + guides(col = guide_legend(reverse=TRUE))
print(p)

sel.country <- "Scotland"
df <- filter(dfs, country == sel.country)
df <- group_by(df, author_birth.period, publication_year) %>% summarize(ndoc = n())
p <- ggplot(df, aes(x = publication_year, y = ndoc, fill = author_birth.period)) 
p <- p + geom_bar(stat = "identity", position = "stack")
p <- p + ylab("Documents")
p <- p + xlab("Publication Year")
p <- p + ggtitle(paste("Documents from authors from different periods (", sel.country, ")", sep = ""))
p <- p + xlim(limits = lims)
p <- p + guides(fill = guide_legend(reverse=TRUE))
print(p)

