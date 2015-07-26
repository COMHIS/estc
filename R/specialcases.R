#' @title handle_special_cases
#' @description Handle special cases in preprocessing
#'
#' @param x vector
#' @return polished vector
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{x2 <- handle_special_cases(x)}
#' @keywords utilities
handle_special_cases <- function (x) {

  x <- gsub("Belfast, reprinted for William Mitchell", "Belfast", x)
  x <- gsub("Stanford,  Newcomb and Peat; sold for the benefit of the charity", "Stanford", x)
  x <- gsub("Dublin, Thomas. Walsh, in Skinner-Row;where advertisements are taken in, and all manner of printing work perform'd, at reasonable rates", "Dublin", x) 
  x <- gsub("Dublin Ireland, Thomas. Walsh, in Skinner-Row;where advertisements are taken in, and all manner of printing work perform'd, at reasonable rates", "Dublin", x)
  x <- gsub("Massachuset;Boston", "Boston", x)
  x <- gsub("Salem Mass.;N.E", "Salem Mass", x)
  x <- gsub("Dresden, Vt.;i.e., Hanover, N.H", "Hanover", x)
  x <- gsub("Stanford, Newcomb and Peat;and sold for the benefit of the charity", "Stanford", x)
  x <- gsub(" in New England", ", New England", x)

  x

}
