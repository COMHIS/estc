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
pub <- polish_publisher_forby(df.orig$publisher)




