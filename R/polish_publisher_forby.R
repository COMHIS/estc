#' @title Polish Publisher 
#' @description Polish publisher field separating for/by.
#' @param x Publisher vector
#' @return Polished vector
#' @export
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

  # Change print statements into lowercase
  x1 <- tolower(x1)
  
  x1 <- gsub("printed: and sold by ","printed and sold by ",x1)
  x1 <- gsub("printed, and sold by ","printed and sold by ",x1)
  
  # Other text replacements add more if found from results at rest
  xsoldby <- sapply(pick_print_fields(x1, c("sold by ","printed and sold by ")), function (x) {x})
  xby <- sapply(pick_print_fields(x1, c("printed by ","printed and sold by ")), function (x) {x})
  xfor <- sapply(pick_print_fields(x1, c("printed for ","printed for and sold by ")), function (x) {x})
  
  #extra rules for splitting fields
  for(ind2 in 1:length(x1)){
    # comparison if there is no sold by and printed by then by is accepted as [printed by]
    if(is.na(xsoldby[ind2]) & is.na(xby[ind2])){
      xby[ind2]=pick_print_fields(x1[ind2],'by ')
      #if [printed by] is not empty and contains also "for"
    } else if(!is.na(xby[ind2]) & is.na(xfor[ind2])) {
      xfor[ind2]=pick_print_fields(x1[ind2],'for ')
      text=xby[ind2]
      #the part before is only printed for; so the end part is removed
      xby[ind2]=strsplit(text,'for ')[[1]][1]
    } 
  
    #here if want to try split the [printed for] results more into more detailed categories such as
    #Jer. Batley, at the Dove in Pater-Noster Row.
    #it is problematic with another row such as
    # [t. cadell], in the strand; richardson and urquhart, under the royal exchange; and [t. wilson], at york"
    # possibly split with , in , at , and ...? --> 
    # "printed for j. cooke[, at] shakespeare's head[, in] pater-noster-row"
    
    #if(!is.na(xfor[ind]))
    #{
    #  text2=xfor[ind2]
    #  
    #  xby[ind2]=strsplit(text2,', in ')[[1]][1] ??
    #}
  }
  
  xfor <- gsub(", and ", ",", xfor)
  xfor <- gsub(" and ", ",", xfor)
  xfor <- gsub(";,", " ", xfor)
  xfor <- gsub("; ", "", xfor)
  xfor <- gsub(", ", ",", xfor)
 
  for (ind in 1:length(xfor)){
    len=nchar(xfor[ind])
    xfor[ind]=ifelse(substr(xfor[ind],len,len)==",", substr(xfor[ind],1,len-1),xfor[ind])
  }
  
  xby <- gsub(", and ", ",", xby)
  xby <- gsub(" and ", ",", xby)
  xby <- gsub(";,", " ", xby)
  xby <- gsub("; ", "", xby)
  xby <- gsub(", ", ",", xby)
  
  for (ind in 1:length(xby)){
    len=nchar(xby[ind])
    xby[ind]=ifelse(substr(xby[ind],len,len)==",", substr(xby[ind],1,len-1),xby[ind])
  }
  
  xsoldby <- gsub(", and ", ",", xsoldby)
  xsoldby <- gsub(" and ", ",", xsoldby)
  xsoldby <- gsub(";,", " ", xsoldby)
  xsoldby <- gsub("; ", "", xsoldby)
  xsoldby <- gsub(", ", ",", xsoldby)

    for (ind in 1:length(xsoldby)){
    len=nchar(xsoldby[ind])
    xsoldby[ind]=ifelse(substr(xsoldby[ind],len,len)==",", substr(xsoldby[ind],1,len-1),xsoldby[ind])
  }
  
  xorig[xorig == ""] <- NA
  xrest <- xorig
  xrest[which(!is.na(xfor) | !is.na(xby) | !is.na(xsoldby))] <- NA
  res <- list(original = xorig, printedfor = xfor, printedby = xby, soldby=xsoldby, rest = xrest)
  as.data.frame(res)

}




