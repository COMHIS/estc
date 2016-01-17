#' @title get_geocoordinates
#' @description Geocoordinate table
#' @param ... Arguments to be passed
#' @return data.frame
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples # x2 <- get_geocoorcinates()
#' @keywords utilities
get_geocoordinates <- function (...) {

  # Get printing terms from a table
  if (is.null(file)) {
    file <- system.file("extdata/geocoordinates.csv", package = "estc") 
    message(paste("No country file provided. Reading stopwords from file ", file))
  } 
  terms <- read.csv(file, sep = ";")


}