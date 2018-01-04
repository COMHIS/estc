# Define the region and color variables and title:
region <- "kuntanimi"
color <- "Sairastavuusindeksi"
main <- "THL:n Sairastavuusindeksi"

# Define color palette
palette <- colorNumeric(c("blue", "white", "red"), NULL)

# Define the text for popup box
state_popup <- paste0("<strong>Kunta: </strong>", sp[[region]], 
                        "<br><strong>", main, ": </strong>", 
                        round(sp@data[,c(color)], digits=2))

# Generate interactive visualization
p <- leaflet(data = sp) %>%
       addTiles() %>% 
       addPolygons(fillColor = ~palette(get(color)), 
                fillOpacity = 0.7, 
                color = "#000000", 
                weight = 1,
                popup = state_popup)

# Open in browser
print(p)