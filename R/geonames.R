#' @title get_geonames
#' @description Download geonames data sets.
#' @param dataset Name of the geonames data set to download (for instance "cities1000")
#' @param download.dir Optional. Specify download directory.
#' @return Polished data frame
#' @details For the data fields descriptions, see: http://download.geonames.org/export/dump/
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("estc")
#' @examples \dontrun{geonames <- get_geonames("cities1000")}
#' @keywords utilities
get_geonames <- function (dataset = "cities1000", download.dir = NULL) {

  # Create temporary directory if download folder is not specified
  if (is.null(download.dir)) {
    download.dir <- tempdir()
  } 
 
  f <- paste(download.dir, "/", dataset, ".zip", sep = "")

  # File to download
  remote.zip <- paste("http://download.geonames.org/export/dump/", dataset, ".zip", sep = "")

  message(paste("Downloading", remote.zip, "into", f))
  download.file(remote.zip, destfile = f, mode = "wb")

  # Unzip the downloaded zip file
  suppressWarnings(unzip(f, exdir = download.dir))

  # Try reading the file
  dat <- read.csv(paste(download.dir, "/", dataset, ".txt", sep = ""), sep = "\t", header = FALSE)

  if (dataset == "cities1000") {
    names(dat) <- c("geonameid", "name", "asciiname", "alternatenames", "latitude", "longitude", "feature.class", "feature.code", "country.code", "cc2", "admin1", "admin2", "admin3", "admin4", "population", "elevation", "dem", "timezone", "modification.date")
    dat$alternatenames <- as.character(dat$alternatenames)
    dat$latitude <- as.numeric(as.character(dat$latitude))
    dat$longitude <- as.numeric(as.character(dat$longitude))    

    #geonameid         : integer id of record in geonames database
    #name              : name of geographical point (utf8) varchar(200)
    #asciiname         : name of geographical point in plain ascii characters, varchar(200)
    #alternatenames    : alternatenames, comma separated, ascii names automatically #transliterated, convenience attribute from alternatename table, varchar(10000)
    #latitude          : latitude in decimal degrees (wgs84)
    #longitude         : longitude in decimal degrees (wgs84)
    #feature class     : see http://www.geonames.org/export/codes.html, char(1)
    #feature code      : see http://www.geonames.org/export/codes.html, varchar(10)
    #country code      : ISO-3166 2-letter country code, 2 characters
    #cc2               : alternate country codes, comma separated, ISO-3166 2-letter country code, 200 characters
    #admin1 code       : fipscode (subject to change to iso code), see exceptions below, see file admin1Codes.txt for display names of this code; varchar(20)
    #admin2 code       : code for the second administrative division, a county in the US, see file admin2Codes.txt; varchar(80) 
    #admin3 code       : code for third level administrative division, varchar(20)
    #admin4 code       : code for fourth level administrative division, varchar(20)
    #population        : bigint (8 byte int) 
    #elevation         : in meters, integer
    #dem               : digital elevation model, srtm3 or gtopo30, average elevation of 3''x3'' (ca 90mx90m) or 30''x30'' (ca 900mx900m) area in meters, integer. srtm processed by cgiar/ciat.
    #timezone          : the timezone id (see file timeZone.txt) varchar(40)
    #modification date : date of last modification in yyyy-MM-dd format

  } else {
    warning(paste("Naming of the data fields not specified for ", dataset, ". See http://download.geonames.org/export/dump/ for details.", sep = ""))
  }

  dat

}
