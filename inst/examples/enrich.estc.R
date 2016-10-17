print("Estimate the number of physical items for each document")
library(estc)
df.preprocessed$document.items <- estimate_document_items(df.preprocessed) # "Physical items per document"

print("add manually checked pages for some documents") 
source("add.manual.pagecounts.R")



