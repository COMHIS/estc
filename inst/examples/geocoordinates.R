
# Download geonames data (city coordinates etc)
geonames <- get_geonames("cities1000", tempdir())
geon <- geonames[, c("name", "asciiname", "alternatenames")]
gs <- geonames[, c("asciiname", "alternatenames")]
names(gs) <- c("name", "synonymes")
source("funcs.R")
geon <- synonyme_list2df(gs, sep = ",", include.lowercase = TRUE)


# Match publication places to geonames
# First match all based on asciiname, then name, only then synonymes.
# Otherwise too many mismatches with identical city names from different
# continents

places <- sort(as.character(unique(df$publication_place)))

places.geonames <- c()

for (place in places) {

  print(place)

  asciiname <- as.character(unique(geonames[geonames$asciiname == place, "asciiname"]))
  if (length(asciiname) == 0 || is.na(asciiname)) {
    asciiname <- as.character(unique(geonames[geonames$name == place, "asciiname"]))
  }
  if (length(asciiname) == 0 || is.na(asciiname)) {  
    asciiname <- as.character(harmonize_names(place, geon, remove.unknown = TRUE, check.synonymes = FALSE)$name)
  }
  if (length(asciiname) == 0 || is.na(asciiname)) {    
    # Drop the last part of the name to geonames if match was not found
    # "New York N.Y" -> "New York" etc.
    spl <- strsplit(place, " ")
    place2 <- paste(spl[-length(spl)], collapse = " ")
    asciiname <- harmonize_names(place2, geon, remove.unknown = TRUE, check.synonymes = FALSE)$name
  }

  # Now all places are matched with geonames.
  # Hopefully they match to correct continents etc.
  inds <- which(geonames$asciiname == asciiname)

  if (length(inds) == 1) {
    places.geonames[[place]] <- asciiname
  } else {
    # If the place is ambiguous then use the most common one
    # places.geonames[[place]] <- names(rev(sort(table(pl))))[[1]]
    # If the place is ambiguous then use ""
    places.geonames[[place]] <- NA
  }
}

print("Match to geonames")
geocoordinates <- geonames[match(places.geonames, geonames$asciiname), ]
geocoordinates$latitude <- as.numeric(as.character(geocoordinates$latitude))
geocoordinates$longitude <- as.numeric(as.character(geocoordinates$longitude))
rownames(geocoordinates) <- places

# TODO investigate opportunities to have identifiers for all major cities
# Fill in manually the largest publication places that could not be uniquely matched to a location
# and are hence still missing the coordinates
#top <- rev(sort(table(subset(df, publication_place %in% names(which(is.na(places.geonames)))$publication_place)))
#top[1:20]
#      London          Dublin Philadelphia Pa          Boston          Oxford 
#          34628            3276            1296            1035             913 
#   New York N.Y         Glasgow            York       Cambridge  Providence R.I 
#           702             256             201             175             159 
#    Hartford Ct       Amsterdam       Boston Ma         Bristol         Norwich 
#            145             110              98              96              93 
#      Newcastle        Aberdeen    Watertown Ma           Paris    Baltimore Md 
#             92              92              86              67              65 

print("Manual matching")
library(dplyr)

place <- "London"
f <- filter(geonames, asciiname == place & country.code == "GB")
geocoordinates[place,] <- f

place <- "Edinburgh"
f <- geonames[intersect(grep("Edinburgh", geonames$alternatenames), which(geonames$country.code == "GB")),]
geocoordinates[place,] <- f

place <- "Dublin"
f <- filter(geonames, asciiname == place & country.code == "IE")
geocoordinates[place,] <- f

place <- "Philadelphia Pa"
f <- filter(geonames, asciiname == "Philadelphia" & admin1 == "PA")
geocoordinates[place,] <- f

place <- "Boston"
f <- filter(geonames, asciiname == place & country.code == "GB")
geocoordinates[place,] <- f

# TODO geonames matching might be improved if country code would be included
# in the matching in the first place and not afterwards manually - to be implemented?
place <- "Boston Ma"
f <- filter(geonames, asciiname == "Boston" & country.code == "US")
geocoordinates[place,] <- f

# TODO Many options - in general check all with Mikko
place <- "Oxford"
f <- filter(geonames, asciiname == place & admin1 == "NY")
geocoordinates[place,] <- f

place <- "New York N.Y"
f <- geonames[intersect(grep("New York", geonames$alternatenames), which(geonames$feature.code == "PPL")),]
geocoordinates[place,] <- f

place <- "York"
f <- geonames[intersect(grep("York", geonames$alternatenames), which(geonames$country.code == "GB" & geonames$admin2 == "H3")),]
geocoordinates[place, ] <- f

place <- "Glasgow"
f <- geonames[intersect(grep("Glasgow", geonames$alternatenames), which(geonames$country.code == "GB" & geonames$admin1 == "ENG")),]
geocoordinates[place,] <- f

place <- "York"
f <- geonames[intersect(grep("York", geonames$alternatenames), which(geonames$country.code == "GB" & geonames$admin2 == "H3")),]
geocoordinates[place,] <- f

place <- "Cambridge"
f <- filter(geonames, asciiname == place & country.code == "GB")
geocoordinates[place,] <- f

# Checked manually
place <- "Providence R.I"
geocoordinates[place, ] <- rep(NA, ncol(geocoordinates))
geocoordinates[place, c("latitude", "longitude")] <- c(41.8384163, -71.4256989)

place <- "Hartford Ct"
f <- geonames[intersect(grep("Hartford", geonames$alternatenames), which(geonames$admin1 == "MA")),]
geocoordinates[place,] <- f

place <- "Amsterdam"
f <- filter(geonames, asciiname == place & country.code == "NL")
geocoordinates[place,] <- f

place <- "Bristol"
f <- filter(geonames, asciiname == place & country.code == "GB")
geocoordinates[place,] <- f

place <- "Norwich"
f <- filter(geonames, asciiname == place & country.code == "GB")
geocoordinates[place,] <- f

place <- "Newcastle"
f <- filter(geonames, asciiname == place & country.code == "GB")
geocoordinates[place,] <- f

place <- "Aberdeen"
f <- filter(geonames, asciiname == place & country.code == "GB")
geocoordinates[place,] <- f

place <- "Watertown Ma"
f <- filter(geonames, asciiname == "Watertown" & admin1 == "MA")
geocoordinates[place,] <- f

place <- "Paris"
f <- filter(geonames, asciiname == place & country.code == "FR")
geocoordinates[place,] <- f

place <- "Baltimore Md" 
f <- filter(geonames, asciiname == "Baltimore")
geocoordinates[place,] <- f

print("Read custom mappings from file")
# FIXME integrate all into a single place - country - geocoordinates file
# that will be used in place - country and place - coordinate mappings
# systematically
f <- system.file("extdata/geocoordinates.csv", package = "estc") 
#f <- "../extdata/geocoordinates.csv"
geotab <- read.csv(f, sep = "\t")
rownames(geotab) <- geotab$place
coms <- intersect(geotab$place, rownames(geocoordinates))
geocoordinates[coms, c("latitude", "longitude")] <- geotab[coms, c("latitude", "longitude")]

print("FIXME move to tidy data principles ie. geographic info are in their own data frames..")
df$latitude <- as.numeric(as.character(geocoordinates[as.character(df$publication_place), "latitude"]))
df$longitude <- as.numeric(as.character(geocoordinates[as.character(df$publication_place), "longitude"]))

# Then use our custom synonyme lists for matching if match was not found
# tmp <- harmonize_place(geon$name)
#match(unique(df[is.na(idx), "publication_place"]), as.character(tmp$Region))
# Manually add some entries to geonames synonymes to retrieve locations for our places
#geon <- rbind(geon, c("Philadelphia", "Philadelphia Pa"))
#geon <- rbind(geon, c("New York", "New York N.Y"))
#geon <- rbind(geon, c("Hartford", "Hartford Ct"))
# See also R geonames package?
# Enable the free geonames service
# See https://github.com/ropensci/geonames
#library(geonames)
#options(geonamesUsername="antagomir")
#tmp2 <- GNcities(north=180, east=-180, south=180, west=180, lang = "en", maxRows = 10)

# Places with missing geocoordinates
print("Write places with missing geolocation to file")
absent <- rownames(geocoordinates[is.na(geocoordinates$latitude), ])
missing <- sort(unique(rownames(geocoordinates[is.na(geocoordinates$latitude), ])))

print("List all potential hits in geonames")
hits <- list()
if (length(missing) > 0) {
  for (place in missing) {
    print(place)
    inds <- unique(c(grep(place, geonames$name), grep(place, geonames$asiiname), grep(place, geonames$alternatenames)))

    # Cambridge Ma -> Cambridge
    spl <- unlist(strsplit(place, " "))
    spl <- spl[-length(spl)]
    place2 <- paste(spl, collapse = " ")
    inds2 <- unique(c(grep(place2, geonames$name), grep(place2, geonames$asiiname), grep(place2, geonames$alternatenames)))
    inds <- unique(c(inds, inds2))

    hits[[place]] <- geonames[inds,]
  }
}

print("Places with no hit whatsoever in geonames")
absent <- NULL
if (length(hits) > 0) {
  absent <- names(which(sapply(hits, function (x) {nrow(x) == 0})))
}


print("Write places with missing geolocation to file")
tab <- rev(sort(table(df$publication_place[df$publication_place %in% absent])))
tab <- tab[tab > 0]
tab <- cbind(names(tab), tab)
colnames(tab) <- c("name", "count")
write.table(tab, file = paste(output.folder, "absentgeocoordinates.csv", sep = ""), quote = F, row.names = F, sep = "\t")

print("Places with potential hits in geonames")
tab <- NULL
if (length(hits) > 0) {
  hits <- hits[names(which(sapply(hits, function (x) {nrow(x) > 0})))]
  for (place in names(hits)) {
    print(place)
    tmp <- hits[[place]][, c(1:3, 5:19, 4)]
    tmp$modification.date <- NULL
    tmp$feature.class <- NULL
    tmp$feature.code <- NULL
    tmp$cc2 <- NULL
    tmp$admin3 <- NULL
    tmp$admin4 <- NULL
    tmp$elevation <- NULL
    tmp$dem <- NULL
    tmp <- unique(tmp)  	  
    tab <- rbind(tab, cbind(ESTC = rep(place, nrow(hits[[place]])), tmp))
  }
}

print("Write missing hits")
write.table(tab, file = paste(output.folder, "missinggeocoordinates.csv", sep = ""), quote = F, row.names = F, sep = "\t")

print("Write geocoordinates")
tab2 <- cbind(ESTC = rownames(geocoordinates), geocoordinates[, -c(4, 7, 8, 10, 16, 17, 19)])
write.table(tab2, file = paste(output.folder, "matchedgeocoordinates.csv", sep = ""), quote = F, row.names = F, sep = "\t")

