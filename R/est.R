#' @title read_ESTC_data
#' @description Read parsed British Library ESTC data
#'
#' @param file Source ESTC data file
#' @return data.frame
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{est <- read_ESTC_data(file)}
#' @keywords utilities

read_ESTC_data <- function (file) {

  # Read data
  tab <- read.csv(file, sep = "|", strip.white = TRUE)

  # Convert empty cells to NAs
  tab <- apply(tab, 2, function (x) {y <- x; y[x %in% c(" ", "")] <- NA; y})

  # Pick field clear names
  field.names <- gsub("^X", "", colnames(tab))

  # Form data frame
  df <- as.data.frame(tab)
  names(df) <- field.names

  df

}