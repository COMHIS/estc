
# Download world city data from Geoname database
tmpdir <- tempdir()
f <- paste(tmpdir, "cities1000.zip", sep = "/")
tmp <- download.file("http://download.geonames.org/export/dump/cities1000.zip", destfile = f)
# Unzip the downloaded zip file
unzip(f, exdir = tmpdir)
# Pick the cities data
cities <- read.csv(paste(tmpdir, "cities1000.txt", sep = "/"), sep = "\t")
# Name the columns
names(cities) <- c("geonameid", "name", "asciiname", "alternatenames", "latitude", "longitude", "feature.class", "feature.code", "country.code", "cc2", "admin1", "admin2", "admin3", "admin4", "population", "elevation", "dem", "timezone", "modification.date")

# Pick the data of interest
df <- cities[, c("country.code", "asciiname")]
df$latitude <- as.numeric(as.character(cities$latitude))
df$longitude <- as.numeric(as.character(cities$longitude))

library(dplyr)
df <- subset(df, country.code %in% c("FI"))

library(leaflet)
library(maps)
colnames(df) <- unique(c("country.code", "city", "latitude", "longitude"))
df$size <- runif(nrow(df))
df$color <- sample(colors(), nrow(df), replace = TRUE)
m <- leaflet(df) %>% addTiles()
m %>% addCircleMarkers(radius = ~size, color = ~color, fill = FALSE)
m %>% addCircleMarkers(radius = runif(100, 4, 10), color = c('red'))

library(maps)
mymap <- map("world", fill = TRUE, plot = FALSE)
leaflet(data = mymap) %>% addTiles() %>%
  addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE) %>%
  addCircles(data = df, lat = ~ latitude, lng = ~ longitude)



# Install libs
#require(devtools)
#install_github('ramnathv/rCharts@dev')
#install_github('ramnathv/rMaps')
library(rMaps)

#crosslet(
#  x = "country", 
#  y = c("web_index", "universal_access", "impact_empowerment", "freedom_openness"),
#  data = web_index
#)

# Interactive animation !
ichoropleth(Crime ~ State, data = violent_crime, animate = "Year", play = TRUE)


# Install
install_github("rstudio/leaflet")
library(leaflet)





# -----------------------

m = leaflet() %>% addTiles()
df = data.frame(
  lat = rnorm(100),
  lng = rnorm(100),
  size = runif(100, 5, 20),
  color = sample(colors(), 100)
)
m = leaflet(df) %>% addTiles()
m %>% addCircleMarkers(radius = ~size, color = ~color, fill = FALSE)
m %>% addCircleMarkers(radius = runif(100, 4, 10), color = c('red'))

#-------------------------------------------------

#1. geonameid         : integer id of record in geonames database
#2. name              : name of geographical point (utf8) varchar(200)
#3. asciiname         : name of geographical point in plain ascii characters, varchar(200)
#4. alternatenames    : alternatenames, comma separated, ascii names automatically transliterated, convenience attribute from alternatename table, varchar(10000)
#5. latitude          : latitude in decimal degrees (wgs84)
#6. longitude         : longitude in decimal degrees (wgs84)
#7. feature class     : see http://www.geonames.org/export/codes.html, char(1)
#8. feature code      : see http://www.geonames.org/export/codes.html, varchar(10)
#9. country code      : ISO-3166 2-letter country code, 2 characters
#10. cc2               : alternate country codes, comma separated, ISO-3166 2-letter country code, 200 characters
#11. admin1 code       : fipscode (subject to change to iso code), see exceptions below, see file admin1Codes.txt for display names of this code; varchar(20)
#12. admin2 code       : code for the second administrative division, a county in the US, see file admin2Codes.txt; varchar(80) 
#13. admin3 code       : code for third level administrative division, varchar(20)
#14. admin4 code       : code for fourth level administrative division, varchar(20)
#15. population        : bigint (8 byte int) 
#16. elevation         : in meters, integer
#17. dem               : digital elevation model, srtm3 or gtopo30, average elevation of 3''x3'' (ca 90mx90m) or 30''x30'' (ca 900mx900m) area in meters, integer. srtm processed by cgiar/ciat.
#18. timezone          : the timezone id (see file timeZone.txt) varchar(40)
#19. modification date : date of last modification in yyyy-MM-dd format

#-----------------------------------------







# ANOTHER DATABASE (deprecated but bigger)
# Read world city information
# https://www.maxmind.com/en/free-world-cities-database
#f <- "worldcitiespop.txt.gz"
#tmp <- download.file("http://download.maxmind.com/download/worldcities/worldcitiespop.txt.gz", destfile = f)
#cities <- read.csv(gzfile(f))

