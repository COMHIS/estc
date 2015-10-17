#' @title polish_publisher
#' @description Polish publisher field
#'
#' @param x vector
#' @return Polished vector
#'
#' @export
#' @importFrom sorvi condense_spaces
#' @importFrom bibliographica harmonize_print_statements
#' @importFrom sorvi harmonize_names
#' @details Polish publisher field. As a side operation, write the
#' 	    polished summary data in a file
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples # polish_publisher("printed and sold by R. Marchbank")
#' @keywords utilities
polish_publisher <- function (x) {

  x <- as.character(x)
  xorig <- x
  x <- gsub("\\[", "", x)
  x <- gsub("\\]", "", x)
  x <- gsub("\\.$", "", x)
  x <- gsub("\\,$", "", x)
  x <- gsub("^s\\.n$", "s\\.n\\.", x)

  # Harmonize print statements
  xh <- harmonize_print_statements(x)

  # Pick fields by taking the occurrence between
  # printed for and the first comma (printed for N.N, -> N.N)
  # This is a drastic simplification but speeds up preprocessing
  # by orders of magnitude
  x <- xh$name
  xfor <- pick_print_fields(x, " printed for")
  xby <- pick_print_fields(x, " printed by")

  # List the remaining polished entries where "print for" or "print by" 
  # statements were not found 
  x <- condense_spaces(x)
  x[x == ""] <- NA
  xrest <- x
  xrest[which(!is.na(xfor) | !is.na(xby))] <- NA

  data.frame(list(original = xorig, printedfor = xfor, printedby = xby, rest = xrest))
 
}
