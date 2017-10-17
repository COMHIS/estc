#' @title Match place names to geonames database
#' @description Match place names to geonames database.
#' @param places Vector of place names to match
#' @param geonames Geonames table
#' @return Geonames names
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
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
    asciiname <- as.character(map(place, geon, remove.unknown = TRUE)$name)
  }
  if (length(asciiname) == 0 || is.na(asciiname)) {    
    # Drop the last part of the name to geonames if match was not found
    # "New York N.Y" -> "New York" etc.
    spl <- strsplit(place, " ")
    place2 <- paste(spl[-length(spl)], collapse = " ")
    asciiname <- map(place2, geon, remove.unknown = TRUE)$name
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


