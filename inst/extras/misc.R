# TODO remove
add_manual_pagecounts_estc_old <- function (df.preprocessed) {

  library(dplyr)
  added.pages.list <- list()

  gatherings <- as.character(levels(df.preprocessed$gatherings))

  for (g in gatherings) {

    indlist <- list()

    f <- system.file(paste("extdata/pagecounts/MissingPages-", g, ".csv", sep = ""),
                     package = "estc")
    
    if (!f == "") {
    
      pc <- read.csv(f, header = TRUE, sep = "\t")
      pc <- filter(pc, !is.na(document.pages.total))
      pc$document.pages.total <- as.numeric(gsub(" p\\.", "", pc$document.pages.total))

      for (i in 1:nrow(pc)) {
      
        inds <- which(as.character(df.preprocessed$gatherings) == g)

        for (varname in colnames(pc)[1:2]) {
          # Keep only those docs that match at every field
	  # TODO isnt it better match with original_row unique id ?
          inds2 <- which(df.preprocessed[[varname]] == as.character(pc[i, varname]))
          inds <- intersect(inds, inds2)
        }

        # Just keep unique inds where estimated page count is NA
        inds <- unique(inds)
        inds <- inds[is.na(df.preprocessed[inds, "pagecount.orig"])]

        if (length(inds) > 0) {
          df.preprocessed[inds, "pagecount"] <- pc[i, "document.pages.total"]
	  indlist[[i]] <- list(inds = unique(df.preprocessed[inds, "system_control_number"]), pagecount = pc[i, "document.pages.total"])
        }	
      }
    }

    added.pages.list[[g]] <- indlist
    
  }

  return(list(df = df.preprocessed, data = added.pages.list))

}


#' @title combine.times
#' @description Combine time information
#'
#' @param timespan time span
#' @return Combined time span
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{combine.times(timespan)}
#' @keywords utilities
combine.times <- function (timespan) {
  times <- t(apply(timespan, 1, function (x) {y <- na.omit(as.numeric(as.character(x))); if (length(y) > 0) {range(y)} else {c(NA, NA)}}))

  if (max(na.omit(times)) > as.numeric(format(Sys.time(), "%Y"))) {
    warning(paste("Time span extends beyond current year", max(na.omit(times))))
  }

  times

}



#' @title polish.650y(x)
#' @description Polish the field 650y
#'
#' @param x a vector of field 650y
#' @return The polished vector
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{x2 <- polish.650y(x)}
#' @keywords utilities
polish.650y <- function (x) {

  v <- as.character(x)
  v <- unlist(lapply(v, function (s) {x <- unlist(strsplit(s, "\\,")); if (length(x) > 1) {x[[length(x)]]} else {x}})) # Remove descriptions
  v[grep("entury", v)] <- NA # Remove centuries
  v[grep("enturies", v)] <- NA # Remove centuries
  v <- gsub("\\.$", "", v) # Remove periods
  v <- gsub("\\. $", "", v) # Remove periods
  v <- gsub("B.C.", "BC", v) # BC
  v <- gsub("B.C", "BC", v) # BC
  v <- gsub(" BC", "BC", v) # BC
  v <- gsub("A.D.", "", v) # AD
  v <- gsub("A.D", "", v) # AD
  v <- gsub("ca.", "", v) # c.a.
  v <- gsub("To ", "-", v) # To
  v <- gsub("To 1763 (New France)", "1763", v)
  v <- gsub("17600-1820", "1760-1820", v)
  v <- gsub("1660-85", "1660-1685", v)
  v <- gsub("1792-95", "1792-1795", v)
  v <- gsub("Civil War, 1642-1629", "1629-1642", v)
  v <- gsub("1717-1648", "1648-1717", v)
  v <- sapply(strsplit(v, " "), function (s) {s[[length(s)]]})
  v[v == "I"] <- NA
  v[grep("France", v)] <- NA
  v[grep("England", v)] <- NA
  v[grep("India", v)] <- NA
  v[grep("Prevention", v)] <- NA
  v[grep("Britain", v)] <- NA
  v[grep("legislation", v)] <- NA
  v[grep("-$", v)] <- NA # Too ambiguous
  v <- gsub("\\)$", "", v) # Remove brackets
  v <- gsub("^ ", "", v) # Remove spaces
  v <- gsub(" $", "", v) # Remove spaces
  v <- gsub("\\.$", "", v) # Remove periods
  v <- gsub("^;", "", v) # Remove beginning semicolons

  inds <- grep(";", v)
  v[inds] <- sapply(strsplit(v[inds], ";"), function (y) {
			 v[inds] <- paste(range(na.omit(as.numeric(
			 unlist(strsplit(unlist(y), "-"))
			 ))), collapse = "-")})

  if (length(grep(";", v)) > 0) {stop("Handle semicolons")}

  # Years input format:
  # "NA", "1673", "1652-1677"
  # Output:
  # c(NA, NA)
  # c("1673", "1673")
  # c("1652", "1677")  
  yearsplit <- function (v) {

    nainds <- is.na(v) | v == ""

    x <- t(sapply(v[!nainds], function (s) {x <- unlist(strsplit(s, "-")); if (length(x) == 1) {x[[2]] <- x[[1]]}; x}))

    # Sometimes BC given only for the last year; in these cases add it also to the first year  
    # which is always prior to the last 
    inds <- setdiff(grep("BC", x[,2]), grep("BC", x[,1]))
    x[inds, 1] <- paste(x[inds, 1], "BC", sep = "")

    mat <- matrix(NA, nrow = length(v), ncol = 2)
    colnames(mat) <- c("begin", "end")
    mat[!nainds, "begin"] <- polish_years(x[, 1])
    mat[!nainds, "end"] <- polish_years(x[, 2])

    mat
  }

  x <- yearsplit(v)

  # Some years are without dash, consider separately based on the first field
  inds <- which(nchar(x[,1]) == 8)
  x[inds, 1] <- substr(x[inds,1], 1, 4)
  x[inds, 2] <- substr(x[inds,1], 5, 8)

  # Order the years from first to last
  inds <- which(x[,2] < x[,1])
  xtmp <- x[inds, 1]
  x[inds, 1] <- x[inds, 2]
  x[inds, 2] <- xtmp

  x

}

# genderizeR
  #givenNames <- findGivenNames(first.names.unique, progress = TRUE)
  #tab <- genderize(first.names.unique, genderDB=givenNames, blacklist=NULL, progress = TRUE)
  #gen <- tab$gender
  #names(gen) <- tab$text
  #g2 <- gen[first.names]
  # Combine different gender maps
  #g <- data.frame(list(name = first.names, gender = g1, genderizeR = g2)  )
  #g <- g[!is.na(g[, 2]) & !is.na(g[, 3]), ]
  # Unique gender
  #inds <- apply(g[, -1], 1, function (x) {length(unique(x)) == 1})
  #g$majority <- rep(NA, nrow(g))
  #g$majority[inds] <- as.character(g[inds,2])
  #g$majority <- 

