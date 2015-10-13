#' @title mean_pagecounts_issue
#' @description Estimate page counts for issues
#'
#' @param df data frame
#' @return Average page count information
#'
#' @export
#'
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples # m <- mean_pagecounts_issue(df)
#' @keywords utilities
mean_pagecounts_issue <- function (df) {

  items <- volnumber <- parts <- volcount <- gatherings <- pagecount <- NULL

  pagecounts <- filter(df, 
  	     volcount == 1 & 
	     pagecount >= 8 & 
	     pagecount <= 50) %>% 
	     group_by(gatherings) %>% 
	     summarize(
	  mean.pages.per.vol = mean(pagecount/volcount, na.rm = T), 
	  median.pages.per.vol = median(pagecount/volcount, na.rm = T), 
	  n = n())

  colnames(pagecounts) <- c("doc.dimension", "mean.pages.issue", "median.pages.issue", "n.issue")

  pagecounts


}

#' @title mean_pagecounts_multivol
#' @description Calculate mean page counts for multi-volume documents
#'
#' @param df data frame
#' @return Average page count information
#'
#' @export
#'
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples # m <- mean_pagecounts_multivol(df)
#' @keywords utilities
mean_pagecounts_multivol <- function (df) {

  items <- volnumber <- parts <- volcount <- gatherings <- pagecount <- NULL
  
  # Include only those items that have multiple volumes
  #    (multi-volume books tend to have more pages)
  #    and calculate pages per volume
  #    we ignore the fact that in some cases volumes have multiple parts
  #    ie. parts may be different from volcount
  #    Also: "449 v., plates :" -> pagecount = 4; ignore these
  pagecounts <- filter(df, 
  		(volcount > 1 | !is.na(volnumber)) &
		pagecount > 10
		) %>% 
		group_by(gatherings) %>% 
		summarize(
  mean.pages.per.vol = mean(na.omit(pagecount/volcount)),
  median.pages.per.vol = median(na.omit(pagecount/volcount)),
  n = n())
  colnames(pagecounts) <- c("doc.dimension", "mean.pages.multivol", "median.pages.multivol", "n.multivol")

  pagecounts

}


#' @title mean_pagecounts_univol
#' @description Calculate mean page counts for multi-volume documents
#'
#' @param df data frame
#' @return Average page count information
#'
#' @export
#'
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples # m <- mean_pagecounts_univol(df)
#' @keywords utilities
mean_pagecounts_univol <- function (df) {

  items <- volnumber <- parts <- volcount <- gatherings <- pagecount <- NULL

  # Ensure that
  # Include only docs that have a single volume in one part
  # (multi-volume books tend to have more pages)
  pagecounts <- filter(df, 
		is.na(volnumber)) %>% 
		group_by(gatherings) %>% 
		summarize(
	mean.pages.per.vol = mean(na.omit(pagecount)), 
 	median.pages.per.vol = median(na.omit(pagecount)), 
		n = n())
  colnames(pagecounts) <- c("doc.dimension", "mean.pages.singlevol", "median.pages.singlevol", "n.singlevol")

  pagecounts

}

