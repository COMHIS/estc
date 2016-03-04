# Load packages
library(devtools)
library(dplyr)
library(bibliographica)
library(sorvi)
load_all("~/proj/2014-Aatelouhinta/bibliographica")

#devtools::install_github("ropensci/genderdata")
#devtools::install_github("ropengov/sorvi")
#devtools::install_github("ropengov/bibliographica")

# Create the output directory if not yet exists
dir.create(output.folder)

