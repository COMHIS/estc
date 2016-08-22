#' @title remove_ending_chars
#' @description remove ending characters (and , ;) from every string in a vector.
#' @param vector of strings
#' @return vector cleaned 
#' @export
#' @details removes ending characters and , ; from every string in a vector.
#' @author Mika Koistinen, Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples # remove_ending_comma("printed and sold by R. Marchbank,")
#' @keywords utilities

remove_ending_chars <- function (input_vec) {
  #remove ending spaces
  trim.trailing <- function (x) sub("\\s+$", "", x)
  for (ind in 1:length(input_vec)){
    vec=trim.trailing(input_vec[ind])
    vec=ifelse(substr(vec,nchar(vec)-2,nchar(vec))=="and", substr(vec,1,nchar(vec)-3),vec)
    vec=trim.trailing(vec)
    vec=ifelse(substr(vec,nchar(vec),nchar(vec))==",", substr(vec,1,nchar(vec)-1),vec)
    input_vec[ind]=ifelse(substr(vec,nchar(vec),nchar(vec))==";", substr(vec,1,nchar(vec)-1),vec)
  }
  input_vec      
}
  