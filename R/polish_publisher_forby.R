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
  #x=df100$publisher

  x <- as.character(x)
  xorig <- x
  
  x1 <- gsub("\\[", "", x)
  x1 <- gsub("\\]", "", x1)
  #x1 <- gsub("\\.$", "", x1)
  #x1 <- gsub("\\,$", "", x1)
  #x1 <- gsub("^s\\.n$", "s\\.n\\.", x1)

  # Change print statements into lowercase
  x1 <- tolower(x1)

  # Preprocess [printed and sold by] varying versions
  x1 = gsub("printed: and sold by ","printed and sold by ",x1)
  x1 = gsub("printed, and sold by ","printed and sold by ",x1)
  
  #cc="printed by wilson, spence, and mawman; sold by g. g. j. and j. robinson, t. cadell, b. white, j. robson, and j. murray, london; and by all the booksellers in york"   
  
  # Search for special fields: 
  #Splits every string in vector x1 by last column of c if found else second last then third last until found.
  #for example:
  #str="printed by wilson, spence, and mawman; sold by g. g. j. and j. robinson, t. cadell, b. white, j. robson, and j. murray, london; and by all the booksellers in york"   
  #pick_print_fields(str,c(" by ",", and ")) 
  #"mawman; sold by g. g. j. and j. robinson, t. cadell, b. white, j. robson"
  #pick_print_fields(str,c(" by ","not exist")) 
  #"wilson, spence, and mawman; sold"
  xsoldby <- sapply(pick_print_fields(x1, c("sold by ","sold at the ", 
                                            "printed and sold by ","printed for and sold by ",
                                            "printed for, and sold by ")), function (x) {x})
  xby <- sapply(pick_print_fields(x1, c("printed by ","printed and sold by ",
                                        "printed by and for ")), function (x) {x})
  xfor <- sapply(pick_print_fields(x1, c("printed for ","printed for and sold by ",
                                         "printed for, and sold by ","printed by and for "
                                         )), function (x) {x})
  

  #Check for more specific rules:
  for(ind2 in 1:length(x1)){
    # Check if there is no sold by and printed by then by is accepted as [printed by]
    if(is.na(xsoldby[ind2]) & is.na(xby[ind2])){
      xby[ind2]=pick_print_fields(x1[ind2],'by ')
      #if [printed by] is not empty and contains also "for"
    } else if(!is.na(xby[ind2]) & is.na(xfor[ind2])) {
      xfor[ind2]=pick_print_fields(x1[ind2],'for ')
      text=xby[ind2]
      #the part before is only printed for; so the end part is removed
      xby[ind2]=strsplit(text,'for ')[[1]][1]
    } 
  }
  
  #for(ind2 in 1:length(x1)){
  #  text=xfor[ind2]
  #  xfor[ind2]=strsplit(text,'sold by')
  #}

  #here split the [printed for] results more into more detailed categories such as
  #see below the values that are chosen into split the only first found value is used
  # f.noble at his circulating-library in king-street,coven ->
  # [f.noble] and [his circulating-library in kings-street,coven]
  
  #removes if last character is ","
  xfor=remove_ending_chars(xfor)
  xby=remove_ending_chars(xby)
  xsoldby=remove_ending_chars(xsoldby)
  
  #splitting xfor into xfor_1st and xfor_at
  output=split_doer_and_place(xfor)
  xfor_at=output$x_place
  xfor_1st=output$x_doer
  
  #splitting xby into xby_1st and xby_at
  output2=split_doer_and_place(xby)
  xby_at=output2$x_place
  xby_1st=output2$x_doer
  
  #splitting xfor into xby_1st and xby_at
  output3=split_doer_and_place(xsoldby)
  xsoldby_at=output3$x_place
  xsoldby_1st=output3$x_doer
  
  
  #xfor <- gsub(", and ", ",", xfor)
  #xfor <- gsub(" and ", ",", xfor)
  #xfor <- gsub(";,", " ", xfor)
  #xfor <- gsub("; ", " ", xfor)
  #xfor <- gsub(", ", ",", xfor)
  
  

  
  #xby <- gsub(", and ", ",", xby)
  #xby <- gsub(" and ", ",", xby)
  #xby <- gsub(";,", " ", xby)
  #xby <- gsub("; ", " ", xby)
  #xby <- gsub(", ", ",", xby)


  #xsoldby <- gsub(", and ", ",", xsoldby)
  #xsoldby <- gsub(" and ", ",", xsoldby)
  #xsoldby <- gsub(";,", " ", xsoldby)
  #xsoldby <- gsub("; ", " ", xsoldby)
  #xsoldby <- gsub(", ", ",", xsoldby)


  

  #create final dataframe
  xorig[xorig == ""] <- NA
  xrest <- xorig
  xrest[which(!is.na(xfor) | !is.na(xby) | !is.na(xsoldby))] <- NA
  res <- list(original = xorig, printedfor = xfor,
              printedfor_doer = xfor_1st,printedfor_place = xfor_at, 
              printedby = xby, printedby_doer = xby_1st,
              printedby_place = xby_at, 
              soldby=xsoldby, soldby_doer = xsoldby_1st, 
              soldby_place = xsoldby_at, 
              rest = xrest)
  as.data.frame(res)

}





