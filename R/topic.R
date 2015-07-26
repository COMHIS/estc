#' @title polish.topic
#' @description  Polish topic
#'
#' @param x A vector with topics
#' @return A vector with topics polished
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{x2 <- polish.topic(x)}
#' @keywords utilities
polish.topic <- function (x) {

  x <- as.character(x)
  x <- str_trim(x) # trim
  x <- gsub("\\.$", "", x) # remove ending periods

  # Trim and remove ending periods from all entries
  x <- sapply(x, function (s) {x <- unlist(strsplit(s, ";")); paste(unique(sapply(x, function (y) {gsub("\\.$", "", str_trim(y))})), collapse = ";")})

  # Remove leading spaces
  x <- sapply(strsplit(x, ";"), function (s) {paste(str_trim(s), collapse = ";")})

  x <- gsub("NA", NA, x)
  x <- gsub(";;", ";", x) # Remove empty slots
  x <- gsub(",$", "", x)  # Remove ending commas
  x <- gsub("\\.$", "", x)  # Remove ending periods

  x

}

