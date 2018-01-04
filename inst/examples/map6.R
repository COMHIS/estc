top.places <- names(rev(sort(table(df$publication.place)))[1:10])

library(dplyr)
mapdata <- df %>%
         filter(publication.place %in% top.places) %>%
	 group_by(publication.place, latitude, longitude) %>%
	 tally() %>%
         filter(!is.na(latitude) & !is.na(longitude))

region <- "UK"
mymap <- get_map(location=geobox(region), source="google", maptype="terrain")

p <- ggmap(mymap) + theme(legend.position="none")

    # Pick the investigated period (sliding window)
    # Sum up the years within this sliding window for each element    	    
    dfw <- mapdata %>%
    	     group_by(publication.place, latitude, longitude) %>%
	     summarize(n = sum(n))
	     
      p <- p + geom_point(data = dfw,
      	  aes(x = longitude, y = latitude,
	      size = log10(1+n)),
	      color = "blue", alpha = 0.8) +
	  scale_size(range = c(5,30)) 

png("figure/UK1.png")
print(p)
dev.off()
    


