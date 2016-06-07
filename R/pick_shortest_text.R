#' @title Pick shorter text
#' @description returns text which is shortest from vector of  strings
#' @param vector of strings
#' @return shortest string
#' @export
#' @author Mika Koistinen, Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @keywords utilities

pick_shortest_text <- function(vec){
  vec2=nchar(vec)
  idx=which.min(vec2)
  txt = vec[idx]
  return(txt)
}    