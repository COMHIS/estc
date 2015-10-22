# Compare to overall publication stats
# 1470 - 1790
library(gdata)
pubstat <- read.xls("data/Copy\ of\ simons-ESTC-1477-1800.xlsx")

# Remove duplicated titles
tmp <- df[, c("publication_year", "title")]
tmp <- tmp[!duplicated(tmp), ]
pubyears.history <- table(tmp$publication_year)

years <- 1470:1799
dff <- data.frame(list(year = years, 
              ESTC.yearly = pubstat$ESTC.yearly[match(years, pubstat$Year)],
	      ESTC.history = as.numeric(pubyears.history[match(years, names(pubyears.history))])))
dff$decade <- round(dff$year, -1)

# -----------------------------------------------

library(reshape)
dfm <- melt(dff, id = c("year", "decade"))
dfi <- aggregate(dfm[, "value"], by = dfm[, c("variable", "decade")], sum)
dfi$documents.total <- dfi$x
dfi$documents.annual <- dfi$x/10
theme_set(theme_bw(20))
p <- ggplot(dfi, aes(x = decade, y = documents.annual, color = variable))
p <- p + geom_line() + geom_point()
p <- p + xlab("Year") + ylab("Publications per year")
p <- p + ggtitle("Publication activity 1470-1800")
p <- p + scale_color_manual(values=c("#CC6666", "#9999CC"))
p <- p + geom_point(data= dfm, aes(x = year, y = value, color = variable))

pdf("timeline.pdf", width = 10, height = 6)
print(p)
dev.off()

#---------------------------------------

library(reshape)
dfm <- melt(dff, id = c("year", "decade"))
dfi <- aggregate(dfm[, "value"], by = dfm[, c("variable", "decade")], sum)
dfi$documents.total <- dfi$x
dfi$documents.annual <- dfi$x/10
theme_set(theme_bw(20))
#p <- ggplot(dfi, aes(x = decade, y = documents.annual, color = variable, shape = variable))
#p <- ggplot(dfm, aes(x = year, y = value, shape = variable))
p <- ggplot(dfi, aes(x = decade, y = x, shape = variable))
p <- p + geom_point(size = 4) + geom_smooth(size = 1, color = "black")
p <- p + xlab("Year") + ylab("Publications per decade")
p <- p + ggtitle("Publication activity 1470-1800")
p <- p + scale_color_manual(values=c("#CC6666", "#9999CC"))
#p <- p + geom_point(data= dfm, aes(x = year, y = value, color = variable))
p <- p + guides(shape = "none", color = "none")
p2 <- p
print(p2)

pdf("timeline2.pdf", width = 8, height = 6)
print(p)
dev.off()


# ------------------------------------------------------------------


#onko mahdollista ottaa historia-datasta maakohtaisesti erikseen 
#Englantia, Skotlantia ja Yhdysvaltoja 
#koskeva sama julkaisuvoluumia koskeva aikajana 

dfc <- data.frame(list(year = years))
dfc$decade <- round(dfc$year, -1) 
for (ctr in c("England", "Scotland", "USA")) {
  dfs <- subset(df, publication_country == ctr)
  tmp <- dfs[, c("publication_year", "title")]
  tmp <- tmp[!duplicated(tmp), ]
  dfc[[paste(ctr, "annual", sep = "-")]] <- table(tmp$publication_year)[as.character(years)]
}
dfcm <- melt(dfc, id = c("year", "decade"))

for (varname in unique(dfcm$variable)) {
  dfci <- aggregate(dfcm[, "value"], by = dfcm[, c("variable", "decade")], sum)
  dfci$documents.total <- dfci$x
  dfci$documents.annual <- dfci$x/10
}

mydf <- rbind(dfi, dfci)
theme_set(theme_bw(20))
mydf <- subset(mydf, !variable == "ESTC.yearly")
p <- ggplot(mydf, aes(x = decade, y = documents.annual, color = variable))
p <- p + geom_line() + geom_point()
p <- p + xlab("Year") + ylab("Publications per year")
p <- p + ggtitle("Publication activity 1470-1800")
pdf("timeline2.pdf", width = 10, height = 6)
print(p)
dev.off()
