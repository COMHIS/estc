#' @title Polish publisher 
#' @description Polish publisher field separating for/by
#'
#' @param x Publisher vector
#' @return Polished vector
#'
#' @export
#' @importFrom sorvi condense_spaces
#' @importFrom sorvi harmonize_names
#' @details Polish publisher field. 
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' 
#' @examples # polish_publisher("printed and sold by R. Marchbank")
#' @keywords utilities
polish_publisher_forby <- function (x) {

  x <- as.character(x)
  xorig <- x

  # Remove certain characters
  x <- gsub("\\[", "", x)
  x <- gsub("\\]", "", x)
  x <- gsub("\\.$", "", x)
  x <- gsub("\\,$", "", x)
  x <- gsub("^s\\.n$", "s\\.n\\.", x)

  # Harmonize print statements
  xh <- harmonize_print_statements(x)

  # Pick fields by taking the occurrence between
  # printed for and the first comma (printed for N.N, -> N.N)
  # This is a drastic simplification but speeds up preprocessing
  # by orders of magnitude
  x <- xh$name
  xfor <- pick_print_fields(x, " printed for")

  # Some error
  #xby <- pick_print_fields(x, " printed by")

  # List the remaining polished entries where "print for" or "print by" 
  # statements were not found 
  x <- condense_spaces(x)
  x[x == ""] <- NA
  xrest <- x
  #xrest[which(!is.na(xfor) | !is.na(xby))] <- NA
  xrest[which(!is.na(xfor))] <- NA  

  res <- list(printedfor = xfor, rest = xrest)

  as.data.frame(res)
 
}

#' @title Pick print fields
#' @description Pick print fields from publisher vector.
#' @param x A vector
#' @param field field names
#' @return fields
#' @export
#' @importFrom sorvi condense_spaces
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


#' @title Harmonize print statements
#' @description Harmonize print statements.
#' @param x a vector
#' @param lowercase Set all in lowercase
#' @return Harmonized vector
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples # x2 <- harmonize_print_statements("prentyd in London")
#' @keywords utilities
harmonize_print_statements <- function (x, lowercase = FALSE) {

  x <- as.character(x)

  xorig <- x

  if (lowercase) {x <- tolower(x)}

  ### Get printing terms from tables in various languages

  for (lang in c("finnish", "french", "german", "swedish", "english")) {
    f <- system.file(paste0("extdata/printterms_", lang, ".csv"), package = "bibliographica")
    terms <- read.csv(f, sep = "|")
    x <- tolower(x)

    # Harmonize the terms
    x <- as.character(harmonize_names(x, terms, mode = "recursive", check.synonymes = FALSE))
    x <- condense_spaces(x)

  }

  list(name = x, original = xorig)

}

