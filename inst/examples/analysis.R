library(ggplot2)
library(tidyr)
library(dplyr)
library(stringr)
library(bibliographica)
library(estc)
library(magrittr)
library(sorvi)
library(reshape2)
library(gridExtra)
library(knitr)

# ---------------------------------

# Load the data
output.folder <- "output.tables/"
df <- readRDS("estc.Rds")

# ---------------------------------

print("Summary")
knit("summary.Rmd")

# ------------------------------------------

# ESTC: TODO / Old material

# Custom definitions
source("general.R") # See estc todo file
#knit("Edinburgh.Rmd")
#knit("NorthAmerica.Rmd")
#knit("Scotland.Rmd")
#knit("Princeton.Rmd")
#knit("pagecounts.Rmd")
#knit("20150624-LIBER.Rmd") # For conference
#knit("20151023-LIBER.Rmd") # For journal
#knit("20150611-Paris.Rmd") # For workshop

# Archived:
# source("timeplot.R") # History vs. all ESTC docs
# source("duplicates.R")

# -------------------------------------------------

system("git add -f figure/*.png")
# system("git add -f output.tables/*.csv")
system("git add output.tables/*.csv")
system("git commit -a -m'Rmd update'")
system("git push")
