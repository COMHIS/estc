library(gdata)
my.authors <- c(Shakespeare = "Shakespeare, William (1564-1616)",
	        Cervantes = "Cervantes Saavedra, Miguel De (1547-1616)")

# Polished Shakespeare and Cervantes
tabs <- list()
nraw <- c()
for (auth in names(my.authors)) {
  tab <- read.xls(paste(auth, "_estc.xls", sep = ""))
  nraw[[auth]] <- nrow(tab)
  inds <- grep("NOT TO BE", tab$title)
  if (length(inds) > 0) {
    tab <- tab[-inds,]
  }
  tab$publication_decade <- floor(tab$publication_year/10) * 10   
  tabs[[auth]] <- tab
}

# Full data, excluding the selected authors
dff <- df.preprocessed %>% filter(!author %in% my.authors)

