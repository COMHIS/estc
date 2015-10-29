#' Match place names to geonames database
#'
#' @param places Vector of place names to match
#' @param geonames Geonames table
#' @return Geonames names
#'
#' @export
#' @importFrom sorvi harmonize_names
#' @importFrom sorvi check_synonymes
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples # TODO
#' @keywords utilities
match_geonames <- function (places, geonames) {

  gs <- geonames[, c("asciiname", "alternatenames")]
  names(gs) <- c("name", "synonymes")
  geon <- synonyme_list2df(gs, sep = ",", include.lowercase = TRUE)
  #geon <- geonames[, c("name", "asciiname", "alternatenames")]
  
  places.geonames <- c()

  for (place in places) {

  print(place)

  asciiname <- as.character(unique(geonames[geonames$asciiname == place, "asciiname"]))
  if (length(asciiname) == 0 || is.na(asciiname)) {
    asciiname <- as.character(unique(geonames[geonames$name == place, "asciiname"]))
  }
  if (length(asciiname) == 0 || is.na(asciiname)) {  
    asciiname <- as.character(harmonize_names(place, geon, remove.unknown = TRUE, check.synonymes = FALSE)$name)
  }
  if (length(asciiname) == 0 || is.na(asciiname)) {    
    # Drop the last part of the name to geonames if match was not found
    # "New York N.Y" -> "New York" etc.
    spl <- strsplit(place, " ")
    place2 <- paste(spl[-length(spl)], collapse = " ")
    asciiname <- harmonize_names(place2, geon, remove.unknown = TRUE, check.synonymes = FALSE)$name
  }

  # Now all place name variants are matched with geonames.
  # Hopefully they match to correct continents etc.
  inds <- which(geonames$asciiname == asciiname)

  if (length(inds) == 1) {
    places.geonames[[place]] <- asciiname
  } else {
    # If the place is ambiguous then use the most common one
    # places.geonames[[place]] <- names(rev(sort(table(pl))))[[1]]
    # If the place is ambiguous then use ""
    places.geonames[[place]] <- NA
  }
  }

  places.geonames

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

