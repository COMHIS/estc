# Read the custom ID list
# idfile <- "estc_id_list.txt"
# ids <- as.character(unlist(read.csv(idfile), use.names = FALSE))

# Corresponding metadata field for the IDs
# idfield <- "control_number"
# idfield <- "system_control_number"

# ----------------------------------

library(rmarkdown)
rmarkdown::render("report.Rmd", params = list(min.year = 1488, max.year = 1828, data = "df.Rds"))


