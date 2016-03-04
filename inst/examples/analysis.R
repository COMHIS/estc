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

system("git add -f figure/*.png")
# system("git add -f output.tables/*.csv")
system("git add output.tables/*.csv")
system("git commit -a -m'Rmd update'")
system("git push")
