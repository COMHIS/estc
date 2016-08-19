source.data.file <- "data/estc.csv.gz"

# Install and load the required custom libraries
library(devtools)
install_github("ropengov/sorvi")
install.packages(c("gender", "genderdata"),
                 repos = "http://packages.ropensci.org",
                 type = "source")
install_github("ropengov/bibliographica")
install_github("ropengov/estc")

#library(estc)
library(bibliographica)

# Read the raw data
source.data.file= '/home/mckoistt/Documents/ESTC/estc-master/estc.csv'
df.orig <- read_bibliographic_metadata(source.data.file)
df100 = df.orig[0:100,]
df1000 = df.orig[0:1000,]

# Load the polishing function
source("/home/mckoistt/Documents/r_scripts_mk/ESTC__/estc/R/polish_publisher_forby.R") # Modify freely polish_forby.R
source("/home/mckoistt/Documents/r_scripts_mk/ESTC__/estc/R/pick_print_fields.R") # Modify freely polish_forby.R
source("/home/mckoistt/Documents/r_scripts_mk/ESTC__/estc/R/pick_shortest_text.R") # Modify freely polish_forby.R
source("/home/mckoistt/Documents/r_scripts_mk/ESTC__/estc/R/remove_ending_chars.R") # Modify freely polish_forby.R
source("/home/mckoistt/Documents/r_scripts_mk/ESTC__/estc/R/split_doer_and_place.R") # Modify freely polish_forby.R
source("/home/mckoistt/Documents/r_scripts_mk/ESTC__/estc/R/choose_first_index.R") # Modify freely polish_forby.R

# Polish the publisher field
# TODO Printed by to be added
pub100 = polish_publisher_forby(df100$publisher)
pub1000 = polish_publisher_forby(df1000$publisher)
pub = polish_publisher_forby(df.orig$publisher)
# Write summaries:
## Publishers ordered from most to least common

tmp <- write_xtable(pub$printedfor, file = "publisher_printedfor_accepted.csv", count = TRUE)
tmp <- write_xtable(pub$printedby, file = "publisher_printedby_accepted.csv", count = TRUE)
tmp <- write_xtable(pub$soldby, file = "publisher_soldby_accepted.csv", count = TRUE)
tmp <- write_xtable(pub$rest, file = "publisher_rest.csv", count = TRUE)

## Discarded fields: those where no output is generated
disc <- df.orig$publisher[rowSums(is.na(pub) | is.null(pub)) == ncol(pub)]
tmp <- write_xtable(disc, file = "publisher_discarded.csv")

## Conversions from raw to final version
tab <- cbind(original = df.orig$publisher, pub)
tmp <- write_xtable(tab, file = "publisher_conversions.csv")