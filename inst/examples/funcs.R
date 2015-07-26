
geobox <- function (region) {

  if (length(region) == 1 && region == "Europe.main") {
    bbox <- c(-12, 35, 25, 60) # Main Europe with UK
  } else if (length(region) == 1 && region == "Europe") {
    bbox <- c(-15, 35, 30.5, 70) # Europe
  } else if (length(region) == 1 && region == "UK") {
    bbox <- c(-10.5, 49.5, 2.5, 59) # UK  
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




synonyme_list2df <- function (synonyme.list, sep = ",", include.lowercase = FALSE) { 

  require(sorvi)

  # conversion function that can convert comma separated synonyme lists into data frame

  # synonyme.list is a data.frame with two fields:
  # name: proper name
  # synonymes: synonymes separated by the sep argument
  
  # Generate a synonyme list for synonyme.list 
  alternates <- lapply(as.character(synonyme.list$synonymes), function (x) {strsplit(x, split = sep)})
  names(alternates) <- as.character(synonyme.list$name)
  
  sdf <- do.call("rbind", sapply(names(alternates), function (nam) {
      	   cbind(rep(nam, length(unlist(alternates[[nam]]))), unlist(alternates[[nam]]))}))
  sdf <- unique(sdf)

  colnames(sdf) <- c("name", "synonyme")
  sdf <- as.data.frame(sdf)
  
  # Polish the synonyme list (remove duplicates, add self-synonymes etc.)
  sdf <- check_synonymes(sdf, include.lowercase = include.lowercase)

  sdf
}

