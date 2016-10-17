#' @title Split doer and place
#' @description Splits string by the first index values of split_w <- c(" in "," at ",", at ","; at ", ",at", ",in", ", in",", near ",",no. ",", no. ").
#' @param data vector of strings
#' @return list(x_doer,x_place)
#' @export
#' @details split_doer_and_place 
#' @author Mika Koistinen, Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples # split_does_and_place("printed and sold by R. Marchbank")
#' @keywords utilities
split_doer_and_place <- function(data){
  x_doer=rep(NA,length(data))
  x_place=rep(NA,length(data))
  
  for(ind2 in 1:length(data)){
    text2=data[ind2]
    if(text2!="" | !is.na(text2) | !is.null(text2)) {
      #these are used in for split to the xfor_1st and xfor_at, 
      #only "no" and "  is no removed from beginning of xfor_at
      split_w <- c(" in "," at ",", at ","; at ", ",at", ",in", ", in",", near ",",no. ",", no. ")
      smallest_w=choose_first_index(text2,split_w)
      
      if(grepl(smallest_w,text2)==TRUE & smallest_w!=""){
        x_doer[ind2]=strsplit(text2,smallest_w)[[1]][1]
        x_place[ind2]=strsplit(text2,smallest_w)[[1]][2] 
        if(smallest_w==",no. " | smallest_w==", no. "){
          x_place[ind2]=paste("no.",x_place[ind2],sep=" ")
        }
      }
      else{
        x_doer[ind2]=text2
        x_place[ind2]=NA
      }
    }
    else {
    #  print("here")
      x_place[ind2]=NA
      x_doer[ind2]=text2
    }
  }
  output=list("x_doer"=x_doer,"x_place"=x_place)
  return(output)
}
