#' @title clean.edition
#' @description Clean edition
#'
#' @param x Edition field (a vector)
#' @return Polished edition info
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples clean.edition("seventh edition")
#' @keywords utilities
clean.edition <- function (x) {
  x <- as.character(x)	    

  x <- gsub(" corrected.", "", x)
  x <- gsub("\\,$", "", x)
  x <- gsub(" $", "", x)
  x <- gsub("edition.", "edition", x)
  x <- gsub("^The ", "", x)
  x <- tolower(x)

  x[grep("second edition", x)] <- "2"
  x[grep("a new edition", x)] <- "2"

  x[grep("third edition", x)] <- "3"
  x[grep("fourth edition", x)] <- "4"
  x[grep("fifth edition", x)] <- "5"
  x[grep("sixth edition", x)] <- "6"
  x[grep("seventh edition", x)] <- "7"
  x[grep("eighth edition", x)] <- "8"
  x[grep("ninth edition", x)] <- "9"
  x[grep("tenth edition", x)] <- "10"
  x[grep("eleventh edition", x)] <- "11"
  x[grep("twelth edition", x)] <- "12"
  x[grep("thirteenth edition", x)] <- "13"


}
