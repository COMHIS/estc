source("initialize.R")

field <- "pagecount"
df <- df.orig

  # Specific preprocessing implemented for these fields

  } else if (field == "title") {

    df.tmp <- data.frame(title = polish_title(df[[field]]))

  } else if (field == "note_dissertation") {
   
    df.tmp <- mark_dissertations(df[[field]])
     
  } else if (field == "corporate") {

    df.tmp <- data.frame(corporate = polish_corporate(df[[field]]))

  } else if (field == "note_granter") {

    # Use the university function for note_granter
    df.tmp <- data.frame(note_granter = polish_university(df[[field]]))

  } else if (field == "author_date") {

    # TODO make a tidy cleanup function to shorten the code here
    df.tmp <- polish_years(df[[field]], check = TRUE, verbose = verbose)
    df.tmp <- dplyr::rename(df.tmp, author_birth = from)
    df.tmp <- dplyr::rename(df.tmp, author_death = till)	
      	
  } else if (field == "publication_time") {
    
    tmp <- polish_years(df[[field]], check = TRUE)
      
    # Add to data.frame
    df.tmp <- data.frame(publication_year_from = tmp$from,
              		 publication_year_till = tmp$till
        )

  } else if (field == "publication_interval") {
    
    tmp <- polish_years(df[[field]], check = TRUE)
      
    # Add to data.frame
    df.tmp <- data.frame(publication_interval_from = tmp$from,
              		 publication_interval_till = tmp$till
        )
    
  } else if (field == "publication_frequency") {

    tmp <- polish_publication_frequency(df[[field]])

    # Add to data.frame
    df.tmp <- data.frame(
      publication_frequency_annual = tmp$annual,
      publication_frequency_text   = tmp$freq)    

            }


df.preprocessed$original.row <- df.orig$original_row
saveRDS(df.preprocessed, paste(polish_folder, field, ".Rds", sep = ""), compress = TRUE)

data.validated <- validate_preprocessed_data(preprocessed.data)
data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
# Custom enrich for ESTC
data.enriched.estc <- enrich_estc(data.enriched, df.orig)
data.validated2 <- validate_preprocessed_data(data.enriched.estc)
# Pick the final data
df.preprocessed <- data.validated2$df.preprocessed
# Combine separately processed fields
df.preprocessed <- merge(df.preprocessed, preprocessed$publication_place, by = "original_row")

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, paste(polish_folder, field, ".Rds", sep = ""), compress = TRUE)

print("Generic summaries") # Markdown
# Summary tables
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# ------------------------------------------------------

# Summary files
sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author,
      			output.folder = output.folder, ntop = ntop)




