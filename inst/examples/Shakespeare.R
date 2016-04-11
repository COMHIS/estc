
# Pick info sheet for Shakespeare & Cervantes
my.authors <- c("Shakespeare, William (1564-1616)", "Cervantes Saavedra, Miguel De (1547-1616)")

for (my.author in my.authors) {

  df <- df.preprocessed %>%
    dplyr::filter(author %in% my.author) %>%
    dplyr::select(estc_control_number = control_number, title, publication_year, language, 
                  publication_place, country, publisher) %>%
    dplyr::arrange(estc_control_number, title, publication_year, language,
                   publication_place, country, publisher)

  write.table(df, file = paste("~/tmp/", gsub(" ", "_", my.author), ".csv", sep = ""), quote = F, row.names = F, sep = "|")

}



