#' @title Estimate document items
#' @description Estimate number of physical items for a document
#' @param df data frame
#' @return Vector of estimated number of items for each document.
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples # x <- estimate_document_items(df)
#' @keywords utilities
estimate_document_items <- function (df) {

  # Default number of documents is given by the volcount
  # If the parts differs from volcount or given volnumber (volcount = 1), 
  # then parts overrides the volcount
  df$items <- df$volcount
  inds <- which(is.na(df$items) | !df$volcount == df$parts)
  df$items[inds] <- df$parts[inds]
  # Volnumber given (e.g. "v.3 2,[5]") default assumption is 1 part
  # but if multiple parts listed then use that instead
  inds <- which(!is.na(df$volnumber) & df$parts > 1)
  df$items[inds] <- df$parts[inds]

  df$items
}
