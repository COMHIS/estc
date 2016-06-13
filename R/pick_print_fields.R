#' @title Pick print fields
#' @description Pick print fields from publisher vector.
#' @param x A vector
#' @param field field names
#' @return fields
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc") 
#' @examples \dontrun{x2 <- pick_print_fields(x, field)}
#' @keywords utilities
pick_print_fields <- function (x, field) {

  # Init		  
  fields <- rep(NA, length(x))		  

  # Pick entries with this field
  inds <- grep(field, x) 
  
  if (length(inds) > 0) {

    # Split per field and comma/semicolon; take the occurrence in between
    txt <- sapply(strsplit(x[inds], field), function (x) {x[[2]]})
    txt <- sapply(strsplit(txt, ","), function (x) {x[[1]]})
    # Avoid splitting problems
    txt[txt == ""] <- " "
    txt <- sapply(strsplit(txt, ";"), function (x) {x[[1]]})

    # Remove extra points
    txt <- gsub("\\.", " ", txt)

    # Remove extra statements
    txt <- gsub("and sold by", "", txt)

    # Remove place statements
    for (statement in c(" in", " at", " and sold by", " near")) {
      txt <- sapply(strsplit(txt, statement), function (x) {x[[1]]})
      txt[txt == ""] <- " "
    }

    txt <- condense_spaces(txt)

    fields[inds] <- txt

  }

  fields
}


