
library(leaflet)
library(maps)
m <- leaflet(df2) %>%
	     addTiles() %>%
	     addCircles(lng = ~longitude, lat = ~latitude, weight = 1,
    	     	radius = ~log10(n) * 30, popup = ~publication.place, color = "red")
	     # setView(lng = -, lat = 42.3601, zoom = 2) %>%
	     # setView(zoom = 2) %>%		  
	     # addCircleMarkers(radius = ~log10(n), color = c("blue"), fill = FALSE)

print(m)

#library(rgdal)
## From http://data.okfn.org/data/datasets/geo-boundaries-world-110m
#countries <- readOGR("json/countries.geojson", "OGRGeoJSON")
#map <- leaflet(countries)

