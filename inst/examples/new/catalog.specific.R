
get_catalog_languages <- function(catalog = "default") {
  helper_languages <- function(catalog, languages) {
    message(sprintf("Catalog is %s, languages: %s",
                    catalog, paste(languages, collapse=", ")))
  }
  
  switch(catalog,
          "estc" = {
           languages <- c("english", "latin")
           helper_languages(catalog, languages)
           return (languages)
          },
           "fennica" = {
           languages <- c("finnish", "latin", "swedish")
           helper_languages(catalog, languages)
           return (languages)
          },
          {
           languages <- c("english")
           helper_languages(catalog, languages)
           return (languages)
          }
        ) 
}


get_catalog_fields <- function (catalog = "default") {
  helper_fields <- function (catalog, update.fields = NULL, ignore.fields = NULL) {
    fields <- list(update.fields = update.fields,
                   ignore.fields = ignore.fields)
    message(sprintf("Catalog is %s, update fields: %s",
                    catalog, paste(update.fields, collapse=", ")))
    message(sprintf("Catalog is %s, ignore fields: %s",
                    catalog, paste(ignore.fields, collapse=", ")))
    return (fields)
  }

  switch (catalog,
          "estc" = {
           update.fields <- NULL
           ignore.fields <- c("title_uniform", "title_uniform2") # ESTC
           fields <- helper_fields(catalog, update.fields, ignore.fields)
           return (fields)
          },
           "fennica" = {
           update.fields <- NULL
           ignore.fields <- c("language2", "title_remainder",
                              "physical_details", "physical_accomppanied",
                              "note_general", "note_year") # Fennica
           fields <- helper_fields(catalog, update.fields, ignore.fields)
           return (fields)
          },
          {
          # default
           fields <- helper_fields(catalog, update.fields, ignore.fields)
           return (fields)
          }
         ) 
}


enrich_catalog_specific <- function (catalog = "default", data.enriched) {
  # helper_enrich <- function (catalog, data.enriched) {
  # }
  # TODO make DRY -vv
    
  switch (catalog,
           "estc" = {
             # catalog.directory <- paste("functions.catalog.specific/", catalog, "/", sep = "")
             # TODO package catalog specific functions in sub directories,
             # write a neat way to load them - in one source() -call, or something
             # make a helper function to load all .R files from a directory? -vv
             source("enrich.estc.R")
             message(sprintf("Catalog is %s, enriching with catalog specific functions.",
                             catalog))
             data.enriched.estc <- enrich_estc(data.enriched)
             return (data.enriched.estc)
           },
           # "fennica" = {
           #   source("enrich.fennica.R")
           #   message(sprintf("Catalog is %s, enriching with catalog specific function.",
           #                   catalog))
           #   data.enriched.fennica <- enrich_fennica(data.enriched)
           #   return (data.enriched.fennica)
           # },
           {
             message("Catalog is default or unknown, no specific enriching.")
             return (data.enriched)
           }
         ) 
}


create_dirs <- function (directories) {
  for (directory in directories) {
    if (!dir.exists(directory)) {
      dir.create(directory)
      message(sprintf("Created directory: %s", directory))
    } else {
      message(sprintf("Directory %s already exists.", directory))      
    }
  }
}
