#' @title polish_author_duplicates
#' @description Harmonize synonymous author ids
#' @param authors Vector of author names
#' @param author.synonyme.table Author synonyme data frame with fields 'name' and 'synonyme' 
#' @return Vector of harmonized author names
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples \dontrun{s2 <- polish_author_duplicates(s)}
#' @keywords utilities
polish_author_duplicates <- function (authors, author.synonyme.table = NULL) {

  if (is.null(author.synonyme.table)) {
    author.synonyme.table <- ambiguous_authors_table()
  }

  # For the authors listed in ambiguous author synonyme table
  # pick the unique author name to be used in the analyses			 
  ids <- author.synonyme.table$name[match(authors, author.synonyme.table$synonyme)]
  inds <- which(!is.na(ids))
  authors[inds] <- as.character(ids[inds])
  authors

}


