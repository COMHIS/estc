library(ggplot2)
library(tidyr)
library(dplyr)
library(estc)
library(bibliographica)
library(stringr)

# Overall preprocessing summary file	
library(knitr)

# ---------------------------------

# Read the final preprocessed ESTC data table
df <- read.csv(file = "estc.csv", sep = "|")
output.folder <- "output.tables/"
mean.pagecounts <- read.csv(paste(output.folder, "estimated_page_counts.csv", sep = ""))

# Order the levels where necessary
mean.pagecounts$doc.dimension <- order_gatherings(mean.pagecounts$doc.dimension)
df$gatherings.original <- order_gatherings(df$gatherings.original)
df$gatherings <- order_gatherings(df$gatherings)
df.preprocessed <- df

# ---------------------------------

print("Summary")
knit("summary.Rmd")

# Custom definitions
source("general.R")

print("Custom plots")
source("timeplot.R")

library(knitr)
knit("Edinburgh.Rmd")
knit("NorthAmerica.Rmd")
knit("Scotland.Rmd")
knit("Princeton.Rmd")
knit("pagecounts.Rmd")
#knit("20150624-LIBER.Rmd") # For conference
#knit("20151023-LIBER.Rmd") # For journal
#knit("20150611-Paris.Rmd") # For workshop

system("git add figure/*.png")
system("git commit -a -m'Rmd update'")
system("git push")

# --------------------------------------------

# source("duplicates.R")