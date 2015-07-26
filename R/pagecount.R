#' @title estimate_document_parts
#' @description Estimate document parts
#'
#' @param df data frame
#' @return Vector of estimated number of parts for each document.
#'
#' @export
#'
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples # x <- estimate_document_parts(df)
#' @keywords utilities
estimate_document_parts <- function (df) {
  
  # some volumes may have multiple parts
  # sometimes volume number missing (then assuming single volume)
  # but field indicates multiple parts
  parts <- sapply(pages$estimated.pages, length)

  # Parts are not necessarily given, therefore exclude parts == 1 as unreliable
  parts <- as.numeric(gsub(1, NA, parts))

  pages <- sapply(pages$estimated.pages, function (x) {paste(x, collapse = ";")})

  list(parts = parts, pages = pages)

}


#' @title estimate_document_items
#' @description Estimate number of physical items for a document
#'
#' @param df data frame
#' @return Vector of estimated number of items for each document.
#'
#' @export
#'
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples # x <- estimate_document_items(df)
#' @keywords utilities
estimate_document_items <- function (df) {

  # Default number of documents is given by the volcount
  # If the parts differs from volcount or given volnumber (volcount = 1), 
  # then parts overrides the volcount
  df$document.items <- df$document.volcount
  inds <- which(is.na(df$document.items) | !df$document.volcount == df$document.parts)
  df$document.items[inds] <- df$document.parts[inds]
  # Volnumber given (e.g. "v.3 2,[5]") default assumption is 1 part
  # but if multiple parts listed then use that instead
  inds <- which(!is.na(df$document.volnumber) & df$document.parts > 1)
  df$document.items[inds] <- df$document.parts[inds]

  df$document.items
}




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

