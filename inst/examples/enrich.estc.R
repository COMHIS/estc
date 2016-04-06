# ESTC-specific
print("add manually checked pages for some documents") 
source("add.manual.pagecounts.R")

print("Estimate the number of physical items for each document")
library(estc)
df.preprocessed$document.items <- estimate_document_items(df.preprocessed) # "Physical items per document"

print("Approximate publication year where missing (c. 395 entries)")
df.preprocessed$publication_year <- approximate_pubyear(df.preprocessed)
df.preprocessed$publication_decade <- floor(df.preprocessed$publication_year/10) * 10 # 1790: 1790-1799
