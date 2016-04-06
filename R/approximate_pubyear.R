#' @title approximate_pubyear
#' @description Approximate publication year based on available information
#' @param df data.frame with publication.year field
#' @return data.frame with publication years estimated
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples \dontrun{df2 <- approximate_pubyear(df)}
#' @keywords utilities
approximate_pubyear <- function (df) {

  author_name <- NULL

  # Approximate publication year where it is missing
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




