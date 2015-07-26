#' @title polish_title
#' @description Polish title field
#'
#' @param x Vector of titles
#' @return Vector of titles polished
#'
#' @export
#' @details Remove ending commas, periods, spaces and parentheses, 
#' 	    starting prepositions etc.
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{x2 <- polish_title(x)}
#' @keywords utilities
polish_title <- function (x) {

  x <- as.character(x)

  x <- gsub("\\,$", "", x)
  x <- gsub("\\.$", "", x)

  x <- gsub(":$", "", x)
  x <- gsub(";$", "", x)

  x <- gsub("^a ", "^A ", x)
  x <- gsub("^\\[A\\] ", "^A ", x)
  x <- gsub("^\\[a\\] ", "^A ", x)
  x <- gsub("^\\[d\\] ", "^D ", x)
  x <- gsub("^\\[D\\] ", "^D ", x)
  x <- gsub("^the ", "^The ", x)
  x <- gsub("\\. A  ", ", a ", x)
  x <- gsub(" TEST TEST TEST ", " ", x)

  x <- gsub("\\]$", "", x)
  x <- gsub("^\\[", "", x)
  x <- gsub("\\)$", "", x)
  x <- gsub("^\\(", "", x)

  x
}