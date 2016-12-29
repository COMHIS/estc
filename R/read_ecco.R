#' @title Read ECCO
#' @description Read ECCO data dump.
#' @param version Version number 1: ECCOI; 2: ECCOII
#' @return ECCO data.frame
#' @export
#' @details Assumes that the working directory includes the source data file.
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples \dontrun{ecco <- read_ecco(version = 2)}
#' @keywords utilities
read_ecco <- function (version = 1) {

  # ECCOI	  
  if (version == 1) {

    f <- "ecco.csv.gz"
    message(paste("Reading file", f))
    ecco <- read.csv(f) # Old dump CSV
    
  } else if (version == 2) {

    f <- "ecco2.json.gz"
    message(paste("Reading file", f))

    ecco <- fromJSON(file = f, method = "C")
    ecco <- as.data.frame(t(sapply(ecco, identity)), stringsAsFactors = FALSE)
    # Ignore column 11 "containsGraphicOfType" which is hierarchical
    ecco <- as.data.frame(sapply(ecco[1:10], function (x) {unlist(x)}))

  }

    # Polish ecco ID
    ecco$id <- as.character(ecco$ESTCID)
    ecco$documentID <- as.character(ecco$documentID)
    ecco$ESTCID <- as.character(ecco$ESTCID)
    ecco$totalPages <- as.numeric(as.character(ecco$totalPages))
    # Remove leading zeroes (T012345 -> T12345)
    ecco$id <- sapply(ecco$id, function (x) {paste(substr(x, 1, 1), gsub("^0+", "", substr(x, 2, nchar(x))), sep = "")}, USE.NAMES = FALSE)
 
  ecco 
}


