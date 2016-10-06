
library(rmarkdown)
rmarkdown::render("report.Rmd", params = list(min.year = 1470, max.year = 1880, subtitle = "My subtitle", idsource = "history_of_england_headings.txt"))
# system("evince report.pdf")
