#' @title Choose first index
#' @description Find the first index of the splitting token arrays in a string.
#' @param text2 string text, vector split_w
#' @param split_w split_w
#' @return the string which is first in the text field (from strings in the vector)
#' @export
#' @details finds the first index of the splitting token arrays in a string 
#' @author Mika Koistinen, Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples # choose_first_index("printed and sold by R. Marchbank") #  split_w=c(" and ", " by ") -> " and "
#' @keywords utilities
choose_first_index=function(text2,split_w){
  pos1=nchar(text2)
  smallest=nchar(text2)
  smallest_w=""
  for(w in split_w) {
    pos1=regexpr(w,text2)[1]
    #print("pos1")
    #print(w)
    if(!is.na(pos1)){
      if((smallest>pos1) && (pos1!=-1)){
        smallest=pos1
        #print("smallest")
        #print(smallest)
        smallest_w=w
        #print(smallest_w)
      }
    }
  }
  return(smallest_w)
}