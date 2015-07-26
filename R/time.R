#' @title approximate_pubyear
#' @description Approximate publication year based on available information
#'
#' @param df data.frame with publication.year field
#' @return data.frame with publication years estimated
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{df2 <- approximate_pubyear(df)}
#' @keywords utilities
approximate_pubyear <- function (df) {

  author.name <- NULL

  # Approximate publication year where it is missing (c. 395 entries)
  inds <- which(is.na(df$publication.year))
  appr <- df$publication.year
  for (i in inds) {
    # Get all docs by this author
    # and take median of the publication years
    author <- df[i, "author.name"]
    subset(df, author.name == author)$publication.year
    approximated.pubyear <- median(na.omit(subset(df, author.name == author)$publication.year))
    appr[[i]] <- approximated.pubyear
  }
  appr
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


#' @title harmonize_time_info
#' @description Harmonize time information
#'
#' @param x Vector (time field)
#' @return Polished field
#'
#' @export
#'
#' @details Harmonize month names 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' 
#' @examples \dontrun{x2 <- harmonize_time_info(x)}
#' @keywords utilities
harmonize_time_info <- function (x) {
 
  # Harmonize
  x <- gsub("Ianuary", "January", x)
  x <- gsub("Janur.", "January", x)
  x <- gsub("Iune", "June", x)
  x <- gsub("Iuly", "July", x)
  x <- gsub("Aug.", "August", x)
  x <- gsub("N.vemb.", "November", x)
  x <- gsub("Novemb.", "November", x)
  x <- gsub("Octob.", "October", x)
  x <- gsub("Decemb.", "December", x)

}


