#' @title Polish Publisher 
#' @description Polish publisher field separating for/by.
#' @param x Publisher vector
#' @return Polished vector
#' @export
#' @importFrom bibliographica condense_spaces
#' @importFrom bibliographica harmonize_names
#' @importFrom bibliographica harmonize_print_statements
#' @details Polish publisher field. 
#' @author Mika Koistinen, Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples # polish_publisher("printed and sold by R. Marchbank")
#' @keywords utilities
polish_publisher_forby <- function (x) {
 
  x <- as.character(x)
  xorig <- x
  x1 <- gsub("\\[", "", x)
  x1 <- gsub("\\]", "", x1)
  x1 <- gsub("\\.$", "", x1)
  #x1 <- gsub("\\,$", "", x1)
  #x1 <- gsub("^s\\.n$", "s\\.n\\.", x1)
  #x <- gsub("imprinted", "printed", x)
  #x <- gsub("Jimprinted", "printed", x)
  
  # Change print statements into lowercase
  x1 <- tolower(x1)
  
  
  # Harmonize print statements
  #xh <- harmonize_print_statements(x1) #??

  # Pick fields by taking the occurrence between
  # printed for and the first comma (printed for N.N, -> N.N)
  # This is a drastic simplification but speeds up preprocessing
  # by orders of magnitude
  #x <- xh$name

  # List the remaining polished entries where "print for " or "print by " or "sold by " 
  # statements were not found 
  
  xsoldby <- sapply(pick_print_fields2(x1, "sold by "), function (x) {x})
  xby <- sapply(pick_print_fields2(x1, "printed by "), function (x) {x})
  xfor <- sapply(pick_print_fields2(x1, "printed for "), function (x) {x})

  #x2 <- condense_spaces(x)
  xorig[xorig == ""] <- NA
  xrest <- xorig
  xrest[which(!is.na(xfor) | !is.na(xby) | !is.na(xsoldby))] <- NA

  res <- list(original = xorig, printedfor = xfor, printedby = xby, soldby=xsoldby, rest = xrest)

  as.data.frame(res)
 
}


pick_print_fields2 <- function (x, field) {

  # Init		  
  fields <- rep(NA, length(x))		  

  # Pick entries with this field
  inds <- grep(field, x) 
  if (length(inds) > 0) {
    
    # Split by field (if split succeeds then return the value else return NA)
    txt <- sapply(strsplit(x[inds], field), function (x) {if(length(x) >1){ return(x[[2]]) }else{return(NA)}}) # [[2]]})

    # Avoid splitting problems
    txt[txt == ""] <- " "
    
    #split the found strings if they contain some of the other tags "sold by" "printed for" "printed by" inside
    #then choose the shorter one 
    if (field=="printed by "){
      txt2 = sapply(strsplit(txt, "sold by "), function (x) {x[[1]]}) 
      txt3 = sapply(strsplit(txt, "printed for "), function (x) {x[[1]]}) 
      txt = sapply(find_shorter_text(txt2,txt3), function (x) {x[[1]]})
    } else if(field=="sold by ") {
      txt2 = sapply(strsplit(txt, "printed by "), function (x) {x[[1]]}) 
      txt3 = sapply(strsplit(txt, "printed for "), function (x) {x[[1]]}) 
      txt = sapply(find_shorter_text(txt2,txt3), function (x) {x[[1]]})
    } else if(field=="printed for ") {
      txt2 = sapply(strsplit(txt, "sold by "), function (x) {x[[1]]}) 
      txt3 = sapply(strsplit(txt, "printed by "), function (x) {x[[1]]}) 
      txt = sapply(find_shorter_text(txt2,txt3), function (x) {x[[1]]})
    }
    
    txt <- condense_spaces(txt)
    
    fields[inds] <- txt
    
  }
  
  fields
}

#returns text which is shorter from 2 strings
find_shorter_text <- function(txt1, txt2){
  txt <- ifelse(txt1>txt2,txt2,txt1)
  return(txt)
}      


