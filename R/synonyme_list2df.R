#' @title synonyme_list2df
#' @description Synonyme list to data.frame
#' @param synonyme.list synonyme list 
#' @param sep separator
#' @param include.lowercase include lowercase
#' @return data.frame
#' @export
#' @importFrom sorvi check_synonymes
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples # TODO
#' @keywords utilities
synonyme_list2df <- function (synonyme.list, sep = ",", include.lowercase = FALSE) { 

  # conversion function that can convert comma separated synonyme lists into data frame

  # synonyme.list is a data.frame with two fields:
  # name: proper name
  # synonymes: synonymes separated by the sep argument
  
  # Generate a synonyme list for synonyme.list 
  alternates <- lapply(as.character(synonyme.list$synonymes), function (x) {strsplit(x, split = sep)})
  names(alternates) <- as.character(synonyme.list$name)
  
  sdf <- do.call("rbind", sapply(names(alternates), function (nam) {
      	   cbind(rep(nam, length(unlist(alternates[[nam]]))), unlist(alternates[[nam]]))}))
  sdf <- unique(sdf)

  colnames(sdf) <- c("name", "synonyme")
  sdf <- as.data.frame(sdf)
  
  # Polish the synonyme list (remove duplicates, add self-synonymes etc.)
  sdf <- check_synonymes(sdf, include.lowercase = include.lowercase)

  sdf
}

