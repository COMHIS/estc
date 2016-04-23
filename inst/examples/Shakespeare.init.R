library(gdata)
my.authors <- c(Shakespeare = "Shakespeare, William (1564-1616)",
	        Cervantes = "Cervantes Saavedra, Miguel De (1547-1616)")

# Polished Shakespeare and Cervantes
# Combine ESTC and CERL lists
tabs <- list()
nraw <- c()
for (auth in names(my.authors)) {

  tab2 <- NULL
  for (source in c("estc", "cerl")) {

    tab <- read.xls(paste(auth, "_", source, ".xls", sep = ""))[, 1:10]
    nraw[[paste(source, auth, sep = "/")]] <- nrow(tab)
    inds <- grep("NOT TO BE", tab$title)
    if (length(inds) > 0) {
      tab <- tab[-inds,]
    }
    colnames(tab) <- gsub("estc_control_number", "control_number", colnames(tab))
    colnames(tab) <- gsub("cerl_control_number", "control_number", colnames(tab))
    tab$source <- source
    tab2 <- rbind(tab2, tab)
  }

  tab2$publication_decade <- floor(tab2$publication_year/10) * 10   
  tabs[[auth]] <- tab2

}

# Tabs combined
tabc <- NULL
for (auth in names(my.authors)) {
  tab <- tabs[[auth]]
  tab$author <- auth
  tabc <- rbind(tabc, tab)
}
tabc$source <- factor(tabc$source)
tabc$author <- factor(tabc$author)
library(sorvi)
tabc$title <- factor(condense_spaces(as.character(tabc$title)))

# ----------------------------------------------------------
