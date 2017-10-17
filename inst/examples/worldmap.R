df2 <- df
df2$country <- df2$publication.country
df2$country <- gsub("USA", "United States", df2$country)
df2$country <- gsub("England", "United Kingdom", df2$country)
df2$country <- gsub("Scotland", "United Kingdom", df2$country)
df2$country <- gsub("Saint", NA, df2$country)
df2$country <- gsub("Northern", NA, df2$country)
df2$country <- gsub("unknown", NA, df2$country)
df2$country <- gsub("Europe", NA, df2$country)
for (nam in c("Barbados", "Dominica", "Martinique", "Grenada", "Jersey", "Antiqua", "Walkes", "Guernesey", "Guadaloupe")) {
  df2$country <- gsub(nam, "United States", df2$country)
}
df2 <- df2 %>% filter(!is.na(country)) %>% group_by(country) %>% tally()
df2 <- as.data.frame(df2)

# Load worldmap
library(rworldmap)
library(rworldxtra)
map <- rworldmap::getMap(resolution="li")

# Add title counts
sp <- sp::merge(map, df2, by.x = "NAME", by.y="country")
sp[is.na(sp@data$n), "n"] <- 0
sp@data$n <- sp@data$n + 1
sp@data$nlog10 <- log10(sp@data$n)

# Construct a rgb color scheme based on these values
cols.rgb <- rgb(red=log10(1 + df2$n/max(df2$n)), green=0, blue=log10(1 + df2$n/max(df2$n)), alpha=0.5)
cols.rgb[cols.rgb=="#00000000"] <- "grey90"
names(cols.rgb) <- df2$country
# Initialize colours for all countries in the worldmap to light grey
names <- as.character(worldmap@data$NAME)
names[is.na(names)] <- "Unknown"
worldmap@data$NAME <- factor(names)
cols.countries <- rep("grey90", nrow(worldmap@data))
names(cols.countries) <- as.character(worldmap@data$NAME)
# Map countries in the migration data set to the worldmap and 
# update country colours
mapping <- match(names(cols.rgb), names(cols.countries))
cols.countries[mapping[!is.na(mapping)]] <- cols.rgb[!is.na(mapping)]
sp@data$color <- cols.countries[sp@data$NAME]

# Visualize
library(gisfin)
p <- region_plot(sp, color = "color", region = "NAME")
print(p)

p <- region_plot(sp, color = "nlog10", region = "NAME", by = 1, palette = c("white", "red"))

