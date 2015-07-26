#' @title order.fields
#' @description Put fields in correct order
#'
#' @param df data.frame
#' @param start.field First field name
#' @param end.field Last field name
#' @return data.frame with ordered fields
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{df2 <- order.fields(df, start.field, end.field)}
#' @keywords utilities
order.fields <- function (df, start.field, end.field) {

  x <- as.numeric(as.character(df[[start.field]]))
  y <- as.numeric(as.character(df[[end.field]]))
  inds <- which(x > y)

  tmp <- y[inds]
  y[inds] <- x[inds]
  x[inds] <- tmp
  
  df[[start.field]] <- x
  df[[end.field]] <- y
  
  df

}



