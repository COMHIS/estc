library(ggmap)
library(ggplot2)
library(animation)

#Create a data frame
countryDF<- data.frame(c("united states", "france", "india"))
colnames(countryDF) <- "countryname"
LatLon <-  c(apply(countryDF, 1, geocode))
LatLonDF <- do.call(rbind.data.frame, LatLon)
countryLatLonDF <- cbind(countryDF, LatLonDF)
countryLatLonDF[,"myDate"]<- c("02/12/13", "03/16/14", "01/10/13")
countryLatLonDF$myDate <- as.Date(countryLatLonDF$myDate , "%m/%d/%y")
countryLatLonDF["counts"] <- as.numeric(c(10,20,30))

#Sort countryLatLonDF based on dates
countryLatLonDF <- countryLatLonDF[ order(countryLatLonDF[,4]), ]

#Create animation in HTML file
saveHTML({
for (i in 1:nrow(countryLatLonDF)) 
{          

#Get the map
myMap <- ggmap(get_map(location = c(lat=0, lon=0), color="color",source="google", maptype="terrain", zoom=2))
myMap <- myMap + geom_point(data = countryLatLonDF[i,], aes(x = lon, y = lat, color = countryname, alpha = 0.5, fill = "red"), size = 5, shape = 21) + geom_text(data = countryLatLonDF[i,], aes(x = lon, y = lat, label = countryname), size = 3, vjust = 0, hjust = -0.1, color = "blue") + scale_colour_discrete(name  = "countryname")
print(myMap)
} 

}, img.name = "anim_plot", imgdir = "anim_dir", htmlfile = "anim.html", autobrowse = FALSE, title = "Country animation", verbose =FALSE, interval = 2)

graphics.off()

