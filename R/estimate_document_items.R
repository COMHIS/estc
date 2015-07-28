#' @title estimate_document_items
#' @description Estimate number of physical items for a document
#'
#' @param df data frame
#' @return Vector of estimated number of items for each document.
#'
#' @export
#'
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples # x <- estimate_document_items(df)
#' @keywords utilities
estimate_document_items <- function (df) {

  # Default number of documents is given by the volcount
  # If the parts differs from volcount or given volnumber (volcount = 1), 
  # then parts overrides the volcount
  df$document.items <- df$document.volcount
  inds <- which(is.na(df$document.items) | !df$document.volcount == df$document.parts)
  df$document.items[inds] <- df$document.parts[inds]
  # Volnumber given (e.g. "v.3 2,[5]") default assumption is 1 part
  # but if multiple parts listed then use that instead
  inds <- which(!is.na(df$document.volnumber) & df$document.parts > 1)
  df$document.items[inds] <- df$document.parts[inds]

  df$document.items
}
