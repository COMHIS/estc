source.data.file <- "data/estc.csv.gz"

# Install and load the required custom libraries
library(devtools)

library(estc)
library(bibliographica)

# Read the raw data
df.orig <- read_bibliographic_metadata(source.data.file)

# Polish the publisher field
# TODO Printed by to be added
pub <- polish_publisher_forby(df.orig$publisher)

# Write summaries:
## Publishers ordered from most to least common
tmp <- write_xtable(pub$printedfor, file = "output.tables/publisher_printedfor_accepted.csv", count = TRUE)
tmp <- write_xtable(pub$printedby, file = "output.tables/publisher_printedby_accepted.csv", count = TRUE)
tmp <- write_xtable(pub$soldby, file = "output.tables/publisher_soldby_accepted.csv", count = TRUE)
tmp <- write_xtable(pub$rest, file = "output.tables/publisher_rest.csv", count = TRUE)

## Discarded fields: those where no output is generated
disc <- df.orig$publisher[rowSums(is.na(pub) | is.null(pub)) == ncol(pub)]
tmp <- write_xtable(disc, file = "output.tables/publisher_discarded.csv")

## Conversions from raw to final version
tab <- cbind(original = df.orig$publisher, pub)
tmp <- write_xtable(tab, file = "output.tables/publisher_conversions.csv")

