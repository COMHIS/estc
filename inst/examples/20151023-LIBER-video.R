library(dplyr)
df2 <- df %>%
	 group_by(publication_year, publication_place, latitude, longitude) %>%
	 arrange(publication_year) %>%
	 tally() %>%
         filter(!is.na(latitude) & !is.na(longitude) & n > 0 & !is.na(publication_year))

# Remove London for clarity (10x bigger than other publication places)
mapdata <- df2
# mapdata <- mapdata %>% filter(!publication_place == "London")


source("funcs.R")

video.file <- "liber.mp4"
system(paste("rm", video.file))
fps <- 10 # frames per second in animation
window <- 10 # sliding window size
region <- "UK"
# region <- "Europe.main"

mapdata$size <- mapdata$n
mapdata$year <- mapdata$publication_year
mapdata$highlight <- rep("darkgray", nrow(mapdata))
#mapdata$highlight[mapdata$publication_place %in% c("Edinburgh", "Glasgow")] <- "darkgray"
mapdata$highlight <- factor(mapdata$highlight)

# ----------------------------------

library(dplyr)
library(ggmap)
library(ggplot2)
library(gisfin)

# FIXME
theme_set(get_theme_map())

#---------------------------------------

## MAP PLOTS #######
print("Select region")
#mymap <- get_map(location=geobox(region), color = "bw", source="google",  maptype="terrain")
#mymap <- get_map(location=geobox(region), color = "color", source="google", maptype="terrain")
#mymap <- get_map(location=geobox(region), color = "color", source="osm", maptype="hybrid")
#mymap <- get_map(location=geobox(region), color = "color", source="osm")
#mymap <- get_map(location=geobox(region), color = "bw", source="osm", maptype="hybrid")
#mymap <- get_map(location=geobox(region), color = "bw", source="osm")
mymap <- get_map(location=geobox(region), source="stamen",  maptype="toner-lite")
#mymap <- get_map(location=geobox(region), source="google",  maptype="satellite")
# Map options:
# source: "google", "osm", "stamen", "cloudmade"
# maptype: "terrain", "terrain-background", "satellite", "roadmap", "hybrid", "watercolor",
#	   "terrain=labels", "terrain-lines", "toner-background", "toner-hybrid",
#          "toner-labels", "toner-lines", "toner-lite", "toner"

# ------------------------------------------------------

print("Initialize plot")
p0 <- ggmap(mymap) + theme(legend.position="none")

## ANIMATION ##########

# Package for animation
library(animation)

# Animation options
ani.options(interval = 1/fps,
            nmax = diff(range(mapdata$year)),
            ani.width = 1000, # 1280,
            ani.height = 720)

saveVideo(

  for (i in seq(min(mapdata$year) + window, max(mapdata$year), 1)) {
  
    # Plot map
    p <- p0

    # Pick the investigated period (sliding window)
    # Sum up the years within this sliding window for each element    	    
    dfw <- subset(mapdata, year < i & year >= i - window) %>%
    	   	       group_by(latitude, longitude, highlight) %>%
		       summarize(n = sum(size))

    if (nrow(dfw) > 0) {
      p <- p0 +
      	geom_point(data = dfw,
      	  aes(x = longitude, y = latitude,
	      size = 20*log10(1+n),
	      color = highlight), alpha = 0.8) +
	  ggtitle(i) +
	  scale_size(range = c(1,25)) +
	  scale_color_manual(values = c("black", "darkgray"))	  
    }
    
    print(p)

  }

, video.name = video.file, clean = TRUE, other.opts = "-b:a 300k")


# To produce website materials, check:
#saveHTML({...}, img.name = "anim_plot", imgdir = "anim_dir", htmlfile = "anim.html", autobrowse = FALSE, title = "Country animation", verbose =FALSE, interval = 2)






