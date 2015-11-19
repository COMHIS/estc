#' @title ambiguous_authors_table
#' @description Read table of ambiguous author name synonymes
#' @param ... Arguments to be pased
#' @return Author synonyme data frame with fields 'name' and 'synonyme' 
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples aa <- ambiguous_authors_table()
#' @keywords utilities
author_info_table <- function (...) {

  # Read author synonymes for ambiguous authors
  f <- system.file("extdata/author_info.csv", package = "estc")
  tab <- read.csv(f, sep = "\t", header = TRUE)
  tab
}

