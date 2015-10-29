#' @title estimate_document_parts
#' @description Estimate document parts
#' @param df data frame
#' @return Vector of estimated number of parts for each document.
#' @importFrom bibliographica polish_pages
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples # x <- estimate_document_parts(df)
#' @keywords utilities
estimate_document_parts <- function (df) {

  # ESTC-specific handling
  pages <- harmonize_pages_specialcases(df$physical_extent)
  # Generic handling
  pest <- polish_pages(pages, verbose = FALSE)$estimated.pages

  # some volumes may have multiple parts
  # sometimes volume number missing (then assuming single volume)
  # but field indicates multiple parts
  parts <- sapply(pest, length)

  # Parts are not necessarily given, therefore exclude parts == 1 as unreliable
  parts <- as.numeric(gsub(1, NA, parts))

  pages <- sapply(pest, function (x) {paste(x, collapse = ";")})

  list(parts = parts, pages_per_part = pages)

}


