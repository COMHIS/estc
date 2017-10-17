# Define the input file and output folder
# The rest should then execute out-of-the box
source.data.file <- "data/estc.csv.gz"

# Install and load the required custom libraries
library(devtools)
install_github("ropengov/sorvi")
install.packages(c("gender", "genderdata"),
                 repos = "http://packages.ropensci.org",
                 type = "source")
install_github("ropengov/bibliographica")
install_github("ropengov/estc")

library(estc)
library(bibliographica)

# Read the raw data
df.orig <- read_bibliographic_metadata(source.data.file)

# Load the polishing function
source("forby.R") # Modify freely

# Polish the publisher field
# TODO Printed by to be added
pub <- polish_publisher_forby(df.orig$publisher)

# Write summaries:
## Publishers ordered from most to least common
tmp <- write_xtable(pub$printedfor, file = "publisher_for_accepted.csv", count = TRUE)

## Discarded fields: those where no output is generated
disc <- df.orig$publisher[rowSums(is.na(pub) | is.null(pub)) == ncol(pub)]
tmp <- write_xtable(disc, file = "publisher_discarded.csv")

## Conversions from raw to final version
tab <- cbind(original = df.orig$publisher, pub)
tmp <- write_xtable(tab, file = "publisher_conversions.csv")








