
library(rmarkdown)
rmarkdown::render("report.Rmd", params = list(min.year = 1470, max.year = 1880, subtitle = "Consciousness entries", data = "df.Rds", idsource = "estc_id_list.txt"))

