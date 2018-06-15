source("analysis.init.R")

df.preprocessed.orig <- df.preprocessed
df <- df.preprocessed <- df.preprocessed.orig
knit("pagecounts.Rmd")

# ---------------------------------

print("Generic summaries") # Markdown
# Summary tables
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# ------------------------------------------------------

# Summary files
sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author,
      			output.folder = output.folder, ntop = ntop)

# ------------------------------------------

print("Dataset-specific analyses")

# Custom definitions
source("general.R") # See estc TODO file

# Takes long time to run (Edinburgh2); not updated every time
# df <- df.preprocessed <- df.preprocessed.orig
# knit("Edinburgh.Rmd")

#df <- df.preprocessed <- df.preprocessed.orig
#knit("NorthAmerica.Rmd")

# Slow:
#df <- df.preprocessed <- df.preprocessed.orig
#knit("Scotland.Rmd")

#df <- df.preprocessed <- df.preprocessed.orig
#knit("Princeton.Rmd")

df <- df.preprocessed <- df.preprocessed.orig
knit("CCQ2018.Rmd")

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

# Interactive reports
library(rmarkdown)
rmarkdown::render("report.Rmd", params = list(min.year = 1470, max.year = 1880, place = "All", language = "any", subtitle = "My subtitle", idsource = "freewill.txt", update.bibliographica = FALSE, time.window = 10, document.type = "All"), envir = new.env())

# -------------------------------------------------

# system("git add -f figure/*.png")
# # system("git add -f output.tables/*.csv")
# system("git add output.tables/*.csv")
#system("git commit -a -m'Rmd update'")
#system("git push")
