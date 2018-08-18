source("initialize.R")

# Generic processing for simple fields
fields <- c("control_number", "system_control_number")
for (field in fields) {

  df <- data.frame(df.orig[[field]])
  names(df) <- field

  # Save polished field
  saveRDS(df, paste(polish_folder, field, ".Rds", sep = ""), compress = TRUE)

  # Generate summary files
  sf <- knit(input = system.file("extdata/generic.Rmd", package = "bibliographica"),
           output = paste(field, ".md", sep = "")) 

}




