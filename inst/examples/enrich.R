print("Add some useful fields")
df$unity <- rep(1, nrow(df))
df$publication_decade <- floor(df$publication_year/10) * 10 # 1790: 1790-1799

print("Publication country")
# TODO we can probably add here some more countries from geonames
# (see geocoordinates.R)
print("Enrich geo info: Geocoordinates")
source("geocoordinates.R")

print("Add publication country")
df$publication_country <- get_country(df$publication_place)$country

# We could standardize country names but problem is that e.g. England, Scotland
# etc are not mapped (as UK). But is potentially useful later.
#devtools::install_github("dsself/standardizecountries")
# library(standard)
# df$publication_country2 <- country_name(df$publication_country)
# df$publication_country.code <- country_code(df$publication_country, "country", "iso3c")

print("Write missing country mappings to file")
write_xtable(as.character(df$publication_place)[is.na(df$publication_country)], file = paste(output.folder, "country_missing.csv", sep = ""))
write_xtable(as.character(df$publication_country), file = paste(output.folder, "country_accepted.csv", sep = ""))

print("Estimate the number of physical items for each document")
df$document.items <- estimate_document_items(df) # "Physical items per document"

print("add manually checked pages for some documents") 
source("add.manual.pagecounts.R")
print("List discarded pages")
source("list.discarded.pages.R")

print("Calculate average page counts based on available data")
source("mean.pagecounts.R")

print("Estimate total pages for the docs where it is missing")
source("estimate.missing.pages.R")

print("Enrich author info")
source("author.unique.R")
source("author.gender.R")

print("Approximate publication year where missing (c. 395 entries)")
df$publication_year <- approximate_pubyear(df)

print("Add estimated paper consumption")
# One m2 is 100 * 100 cm2 = 1e4 cm2
# One km2 is 1000 * 1000 m2 = 1e6 m2 = 1e10 cm2
# Estimated average print run per document: 1000
printrun <- 1000
df <- mutate(df, paper.consumption.km2 = width * height * pagecount/2 * (1/1e10) * printrun)


