source.data.file <- "data/estc.csv.gz"

# The default assumptions is that these are installed already,
# hence commenting out to speed up
# Install and load the required custom libraries
#library(devtools)
#install_github("ropengov/sorvi")
#install.packages(c("gender", "genderdata"),
#                 repos = "http://packages.ropensci.org",
#                 type = "source")
#install_github("ropengov/bibliographica")
#install_github("ropengov/estc")

library(estc)
library(bibliographica)

message("Reading the raw data")
# Let us not use absolute paths to ensure applicability across platforms
# You can create symbolic link to estc.csv
#source.data.file= '/home/mckoistt/Documents/ESTC/estc-master/estc.csv'
df.orig <- read_bibliographic_metadata(source.data.file)

# Load the polishing function. Otherwise (if commented out)
# this uses the latest version in the estc/R directory
# after updating the package installation
# source("polish_publisher_forby.R") 

message("Polish the publisher field")
# Separate printed for / printed by / sold by / other cases
pub <- polish_publisher_forby(df.orig$publisher)


message("Clean up the individual cases")
pub.orig <- pub 
pub$printedfor <- polish_publisher(pub$printedfor, verbose = TRUE)
pub$printedby <- polish_publisher(pub$printedby, verbose = TRUE)
pub$soldby <- polish_publisher(pub$soldby, verbose = TRUE)
pub$rest <- polish_publisher(pub$rest, verbose = TRUE)


message("Write summaries")
## Publishers ordered from most to least common
output.folder <- "output.tables"
tmp <- write_xtable(pub$printedfor, file = paste(output.folder, "publisher_printedfor_accepted.csv", sep = "/"), count = TRUE)
tmp <- write_xtable(pub$printedby, file = paste(output.folder, "publisher_printedby_accepted.csv", sep = "/"), count = TRUE)
tmp <- write_xtable(pub$soldby, file = paste(output.folder, "publisher_soldby_accepted.csv", sep = "/"), count = TRUE)
tmp <- write_xtable(pub$rest, file = paste(output.folder, "publisher_rest.csv", sep = "/"), count = TRUE)

## Discarded fields: those where no output is generated
disc <- df.orig$publisher[rowSums(is.na(pub) | is.null(pub)) == ncol(pub)]
tmp <- write_xtable(disc, file = paste(output.folder, "publisher_discarded.csv", sep = "/"))

## Conversions from raw to final version
tmp <- write_xtable(pub, file = paste(output.folder, "publisher_conversions.csv", sep = "/"))

