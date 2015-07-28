



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

  document.items <- document.volnumber <- document.parts <- document.volcount <- document.dimension.gatherings.estimated <- document.pages.total <- NULL

  pagecounts <- filter(df, 
  	     document.volcount == 1 & 
	     document.pages.total >= 8 & 
	     document.pages.total <= 50) %>% 
	     group_by(document.dimension.gatherings.estimated) %>% 
	     summarize(
	  mean.pages.per.vol = mean(document.pages.total/document.volcount, na.rm = T), 
	  median.pages.per.vol = median(document.pages.total/document.volcount, na.rm = T), 
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

  document.items <- document.volnumber <- document.parts <- document.volcount <- document.dimension.gatherings.estimated <- document.pages.total <- NULL
  
  # Include only those document.items that have multiple volumes
  #    (multi-volume books tend to have more pages)
  #    and calculate pages per volume
  #    we ignore the fact that in some cases volumes have multiple parts
  #    ie. document.parts may be different from document.volcount
  #    Also: "449 v., plates :" -> pages.total = 4; ignore these
  pagecounts <- filter(df, 
  		(document.volcount > 1 | 
		(document.items == 1 & !is.na(document.volnumber))) &
		document.pages.total > 10
		) %>% 
		group_by(document.dimension.gatherings.estimated) %>% 
		summarize(
  mean.pages.per.vol = mean(na.omit(document.pages.total/document.volcount)),
  median.pages.per.vol = median(na.omit(document.pages.total/document.volcount)),
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

  document.items <- document.volnumber <- document.parts <- document.volcount <- document.dimension.gatherings.estimated <- document.pages.total <- NULL

  # Ensure that
  # Include only docs that have a single volume in one part
  # (multi-volume books tend to have more pages)
  pagecounts <- filter(df, 
		document.items == 1 & is.na(document.volnumber)) %>% 
		group_by(document.dimension.gatherings.estimated) %>% 
		summarize(
	mean.pages.per.vol = mean(na.omit(document.pages.total)), 
 	median.pages.per.vol = median(na.omit(document.pages.total)), 
		n = n())
  colnames(pagecounts) <- c("doc.dimension", "mean.pages.singlevol", "median.pages.singlevol", "n.singlevol")

  pagecounts

}

