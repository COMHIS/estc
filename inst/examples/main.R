# Update the pkg
#library(devtools); install_github("ropengov/estc")
library(estc)
library(ggplot2)
library(knitr)
#library(plyr)
library(dplyr)

# Define here the input file and output folder
# The rest should then execute out-of-the box
source.data.file <- "data/estc.csv.gz"
output.folder <- "output.tables/"

# Create the output directory if not yet exists
dir.create(output.folder)

print("Read raw data")
df.orig <- read_bibliographic_metadata(source.data.file)


# Preprocess the raw data
source("preprocessing.R")

# Enrich the data
# (add missing information and augment with external data)
source("enrich.R")

# Summarize the data and discarded entries
source("summarize.R")

# Analyze the preprocessed data
source("analysis.R")

# Test map visualizations
# source("map.R")
