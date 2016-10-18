source("analysis.init.R")

df.preprocessed.orig <- df.preprocessed

# ---------------------------------

print("Generic summaries") # Markdown
# Summary tables
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# ------------------------------------------------------

# Summary files
sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author,
      			output.folder = output.folder, ntop = ntop)

# ------------------------------------------

# Dataset-specific analyses

# Custom definitions
source("general.R") # See estc TODO file

df <- df.preprocessed <- df.preprocessed.orig
knit("Edinburgh.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("NorthAmerica.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("Scotland.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("Princeton.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("pagecounts.Rmd")

df <- df.preprocessed <- df.preprocessed.orig

# Archived - done with history data
# do not work (yet) with the full data
# and for archival purposes good to keep it such
#knit("20150624-LIBER.Rmd") # For conference
#knit("20150611-Paris.Rmd") # For workshop
# source("timeplot.R") # History vs. all ESTC docs
# source("duplicates.R")

# Requires local XLS files 
# source("Shakespeare400.R")

# Frozen analyses are commented out.
# Not tested with newer package versions.
# source("20151023-LIBER.R") 

# Data for Tue
source("Tue.R")

# Interactive reports
source("report.R")

# -------------------------------------------------

# system("git add -f figure/*.png")
# # system("git add -f output.tables/*.csv")
# system("git add output.tables/*.csv")
# system("git commit -a -m'Rmd update'")
# system("git push")
