#' @title approximate_pubyear
#' @description Approximate publication year based on available information
#'
#' @param df data.frame with publication.year field
#' @return data.frame with publication years estimated
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{df2 <- approximate_pubyear(df)}
#' @keywords utilities
approximate_pubyear <- function (df) {

  author_name <- NULL

  # Approximate publication year where it is missing (c. 395 entries)
  inds <- which(is.na(df$publication_year))
  appr <- df$publication_year
  for (i in inds) {
    # Get all docs by this author
    # and take median of the publication years
    author <- df[i, "author_name"]
    subset(df, author_name == author)$publication_year
    approximated.pubyear <- median(na.omit(subset(df, author_name == author)$publication_year))
    appr[[i]] <- approximated.pubyear
  }

  appr <- round(appr)

  appr

}




#' @title harmonize_time_info
#' @description Harmonize time information
#'
#' @param x Vector (time field)
#' @return Polished field
#'
#' @export
#'
#' @details Harmonize month names 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
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


