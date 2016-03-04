
print("Estimate missing dimension info")
# Estimate missing dimension info
dim.orig <- df.preprocessed[, c("gatherings.original", "width.original", "height.original", "obl.original")]
names(dim.orig) <- gsub("\\.original$", "", names(dim.orig))
dim.estimated <- augment_dimension_table(dim.orig, verbose = FALSE)
# Remove earlier versions of these fields
if (any(names(dim.estimated) %in% names(df.preprocessed))) {
  df.preprocessed <- df.preprocessed[, -which(names(df.preprocessed) %in% names(dim.estimated))]
}
# Merge
df.preprocessed <- cbind(df.preprocessed, dim.estimated)  


# ESTC-specific
print("Estimate the number of physical items for each document")
df.preprocessed$document.items <- estimate_document_items(df.preprocessed) # "Physical items per document"

print("Add some useful fields")
df.preprocessed$unity <- rep(1, nrow(df.preprocessed))

# publication_year
# Use from field; if from year not available, then use till year
df.preprocessed$publication_year <- df.preprocessed$publication_year_from
inds <- which(is.na(df.preprocessed$publication_year))
df.preprocessed$publication_year[inds] <- df.preprocessed$publication_year_till[inds]

# ESTC-specific
print("Approximate publication year where missing (c. 395 entries)")
df.preprocessed$publication_year <- approximate_pubyear(df.preprocessed)

# publication_decade
df.preprocessed$publication_decade <- floor(df.preprocessed$publication_year/10) * 10 # 1790: 1790-1799

print("Enrich geo info: Geocoordinates")
#source("geocoordinates.R")
library(bibliographica)
load("geonames.RData")
load("places.geonames.RData") # places.geonames
geoc <- bibliographica::get_geocoordinates(df.preprocessed$publication_place, geonames, places.geonames)
# Remove earlier versions of these fields
if (any(names(geoc) %in% names(df.preprocessed))) {
  df.preprocessed <- df.preprocessed[, -which(names(df.preprocessed) %in% names(geoc))]
}
# Merge
df.preprocessed <- cbind(df.preprocessed, geoc)  
print("geoc OK")

print("Add publication country")
df.preprocessed$country <- get_country(df.preprocessed$publication_place)$country
# We could standardize country names but problem is that e.g. England, Scotland
# etc are not mapped (as UK). But is potentially useful later.
#devtools::install_github("dsself/standardizecountries")
# library(standard)
# df$publication_country2 <- country_name(df$publication_country)
# df$publication_country.code <- country_code(df$publication_country, "country", "iso3c")

print("Add estimated paper consumption")
# One m2 is 100 * 100 cm2 = 1e4 cm2
# One km2 is 1000 * 1000 m2 = 1e6 m2 = 1e10 cm2
# Estimated average print run per document: 1000
printrun <- 1000
df.preprocessed <- mutate(df.preprocessed, paper.consumption.km2 = width * height * pagecount/2 * (1/1e10) * printrun)

#print("Enrich author info")
# Life years + author_unique field
library(estc)
life.info <- estc::author_info_table()
ambiguous.authors <- estc::ambiguous_authors_table()
## Combine synonymous authors; augment author life years where missing etc.
df.preprocessed <- augment_author(df.preprocessed, life.info, ambiguous.authors)

# TODO improve: many names are missing gender now
print("Estimate author genders")
# Assumes that the author name is in the form "Last, First".
df.preprocessed$author_gender <- get_gender(pick_firstname(df.preprocessed$author_name, format = "last, first"))

print("Calculate average page counts based on available data")
source("mean.pagecounts.R") # TODO make a function that quickly returns this. No need to precalculate it.

print("Estimate total pages for the docs where it is missing")
source("estimate.missing.pages.R")

# ESTC-specific
print("add manually checked pages for some documents") 
source("add.manual.pagecounts.R")
