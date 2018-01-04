#' @title polish_geography
#' @description Polish geography
#' @param x A vector of geographic names
#' @return Polished vector
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples \dontrun{x2 <- polish_geography(x)}
#' @keywords utilities
polish_geography <- function (x) { 

  # FIXME: could perhaps be combined with more generic cleanup functions?

  x <- as.character(x)
  
  x <- gsub("\\[", "", x)
  x <- gsub("\\]", "", x)
  x <- gsub("\\.$", "", x)
  x <- gsub("\\,$", "", x)

  # Remove leading spaces
  x <- sapply(strsplit(x, ";"), function (s) {paste(str_trim(s), collapse = ";")})

  x <- gsub(";;", ";", x)

  x

}

