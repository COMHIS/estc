
geobox <- function (region) {

  if (length(region) == 1 && region == "Europe.main") {
    bbox <- c(-12, 35, 25, 60) # Main Europe with UK
  } else if (length(region) == 1 && region == "Europe") {
    bbox <- c(-15, 35, 30.5, 70) # Europe
  } else if (length(region) == 1 && region == "UK") {
    #bbox <- c(-10.5, 49.5, 2.5, 59) # UK
    bbox <- c(-10.7, 49.7, 2.3, 59) # UK      
  } else if (length(region) == 1 && region == "West") {
    bbox <- c(-120, 25, 30.5, 70) # West  
  } else if (length(region) == 1 && region == "World") {
    bbox <- c(-150, -70, 150, 70) # World
  } else {
    bbox <- region
  }
  names(bbox) <- c("left", "bottom", "right", "top")
  bbox
}

