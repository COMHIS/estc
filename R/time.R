#' @title harmonize_time_info
#' @description Harmonize time information
#' @param x Vector (time field)
#' @return Polished field
#' @export
#' @details Harmonize month names 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples \dontrun{x2 <- harmonize_time_info(x)}
#' @keywords utilities
harmonize_time_info <- function (x) {
 
  # Harmonize
  x <- gsub("Ianuary", "January", x)
  x <- gsub("Janur.", "January", x)
  x <- gsub("Iune", "June", x)
  x <- gsub("Iuly", "July", x)
  x <- gsub("Aug.", "August", x)
  x <- gsub("N.vemb.", "November", x)
  x <- gsub("Novemb.", "November", x)
  x <- gsub("Octob.", "October", x)
  x <- gsub("Decemb.", "December", x)

}


