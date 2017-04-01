#' @title Pick print fields
#' @description Pick print fields from publisher vector.
#' @param x list of strings
#' @param fields2 c(string_field1, string_field2...)
#' @return for each x, the string after last field that has been found, else the string after first one, else NA
#' @export
#' @author Mika Koistinen, Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc") 
#' @examples \dontrun{x2 <- pick_print_fields(x, field)}
#' @keywords utilities


pick_print_fields <- function (x, fields2){
  # Init		
  fields <- rep(NA, length(x))		  
  
  for(field in fields2){
    #print(field)
    # Pick entries with this field
    inds <- grep(field, x) 
    if (length(inds) > 0) {
      for (ind in inds){
        # Split by field (if split succeeds then return the value else return NA)
        txt <- strsplit(x[ind], field)[[1]][2] #, function (x) {if(length(x) >1){ return(x[[2]]) }else{return(NA)}}) # [[2]]})
        
        # Avoid splitting problems
        txt[txt == ""] <- " "
        
        #split the found strings if they contain some of the other tags 
        # "sold by" "printed for" "printed by" inside
        # then choose the shorter one
        if (field == "printed and sold by "){
          txt = sapply(strsplit(txt, "printed and sold by"), function (x) {x[[1]]}) 
        }else if (field=="printed for sold by " ){
          txt = sapply(strsplit(txt, "printed for sold by"), function (x) {x[[1]]}) 
        }else if (field=="printed by " ){
          txt2 = sapply(strsplit(txt, "sold by "), function (x) {x[[1]]}) 
          txt3 = sapply(strsplit(txt, "printed for "), function (x) {x[[1]]}) 
          txt = sapply(pick_shortest_text(c(txt2,txt3)), function (x) {x[[1]]})
        } else if(field=="sold by " ) {
          txt2 = sapply(strsplit(txt, "printed by "), function (x) {x[[1]]}) 
          txt3 = sapply(strsplit(txt, "printed for "), function (x) {x[[1]]}) 
          txt = sapply(pick_shortest_text(c(txt2,txt3)), function (x) {x[[1]]})
        } else if(field=="printed for ") {
          txt2 = sapply(strsplit(txt, "sold by "), function (x) {x[[1]]}) 
          txt3 = sapply(strsplit(txt, "printed by "), function (x) {x[[1]]}) 
          txt = sapply(pick_shortest_text(c(txt2,txt3)), function (x) {x[[1]]})
        } else if(field=="re-printed ") {
          txt = sapply(strsplit(txt, "re-printed "), function (x) {x[[1]]}) 
          #txt3 = sapply(strsplit(txt, "printed by "), function (x) {x[[1]]}) 
          #txt = sapply(pick_shortest_text(c(txt2,txt3)), function (x) {x[[1]]})
        }
        
        
        
        #avoid empty string problem
        if(length(txt) == 0){
          txt=" "
        } 

        fields[ind] <- txt
      }
    }
  }
  
  return(fields)
  
}

