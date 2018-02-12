publishers_testdata_df <- read.csv("~/projects/comhis/estc-publishers/csv_outputs/publisher_strings_2018-02-01_1648.csv")
professions <- read.csv("~/projects/comhis/estc-publishers/professions.csv")
# all_whole_firstnames_subset <- publishers_testdata_df[!grepl("\\.", publishers_testdata_df$actor_first_name),]
# all_whole_firstname_counts <- plyr::count(all_whole_firstnames_subset$actor_first_name)
# all_shortened_firstnames_subset <- publishers_testdata_df[grepl("\\.", publishers_testdata_df$actor_first_name),]
# all_shortened_firstname_counts <- plyr::count(all_shortened_firstnames_subset$actor_first_name)


# firstname_counts_lastname <- plyr::count(familyname_subset$actor_first_name)
# get count of unique non-shortened names

get_shortened_names_summary <- function(publisherdata_df) {
  shortenednames_subset <- publisherdata_df[grepl("\\.$", publisherdata_df$actor_first_name),]
  shortened_firstname_counts <- plyr::count(shortenednames_subset$actor_first_name)
  colnames(shortened_firstname_counts) <- c("name", "count")
  return(shortened_firstname_counts)
}


get_lastname_subset <- function(publisherdata_df, lastname) {
  if (lastname == "") {
    familyname_subset <- publishersdata_df[publishersdata_df$actor_last_name == lastname & !is.na(publishersdata_df$actor_last_name),]
  }
  familyname_subset <- publishersdata_df[publishersdata_df$actor_last_name == lastname & !is.na(publishersdata_df$actor_last_name),]
  return(familyname_subset)
}


get_shortforms_for_lastname <- function(publisherdata_df, lastname) {
  lastname_subset <- get_lastname_subset(publisherdata_df, lastname)
  shortened_names <- as.character(get_shortened_names_summary(lastname_subset)$name)
  return(shortened_names)
}
  

get_false_longforms <- function(wholenames_unique, shortened_unique) {
  shortened_unique_minus_dot <- gsub("\\.$", "", shortened_unique)
  shortened_unique_minus_dot_short <- shortened_unique_minus_dot
  wholenames_unique_possibly_false <- wholenames_unique[nchar(wholenames_unique) < 5]
  wholenames_unique_presumed_false <- wholenames_unique_possibly_false[
    wholenames_unique_possibly_false %in% shortened_unique_minus_dot]
  return(wholenames_unique_presumed_false)
}


get_longform <- function(shortened_name, firstnames) {
  # strip trailing dot
  shortened_name <- gsub("\\.$", "", shortened_name)
  shortened_form_searchstring <- paste0("^", shortened_name)
  firstname_candidates <- firstnames[grepl(shortened_form_searchstring, firstnames)]
  return(firstname_candidates)
}


get_firstname_candidates_for_shortform <- function(publisherdata_df, lastname, shortform_firstname) {
  familyname_subset <- get_lastname_subset(publisherdata_df, lastname)
  wholenames_subset <- familyname_subset[!grepl("\\.", familyname_subset$actor_first_name),]
  wholenames_unique <- unique(as.character(wholenames_subset$actor_first_name))
  shortenednames_subset <- familyname_subset[grepl("\\.", familyname_subset$actor_first_name),]
  shortened_unique <- unique(as.character(shortenednames_subset$actor_first_name))
  false_longforms <- get_false_longforms(wholenames_unique, shortened_unique)
  longform_candidates <- get_longform(shortform_firstname, wholenames_unique)
  longform_candidates_filtered <- longform_candidates[!(longform_candidates %in% false_longforms)]
  # print(longform_candidates_filtered)
  return(longform_candidates_filtered)
}


is_name_shortform <- function(namestring) {
  if (is.na(namestring)) {
    return(FALSE)
  } else if (grep("\\.$", namestring)) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}


get_name_postprocessed_form <- function(firstname, lastname, wholedata_df) {
  lastname_processed <- lastname
  firstname_processed <- firstname
  
  
  firstname_candidates <- get_firstname_candidates_for_shortform(wholedata_df, lastname, firstname)
  if (length(firstname_candidates) == 1) {
    firstname_processed <- firstname_candidates[[1]]
  }
  
  return(list('lastname' = lastname_processed, 'firstname' = firstname_processed))
}


get_nameprocessed_publisherdata_df <- function(publisherdata_df, verbose = TRUE) {
  new_publisherdata_df <- publisherdata_df
  new_publisherdata_df$firstname_processed <- NA
  new_publisherdata_df$lastname_processed <- NA
  print(nrow(publisherdata_df))
  for (entry_row_number in 1:nrow(publisherdata_df)) {
    if (verbose) {
      if (entry_row_number %% 100 == 0) {
        print(entry_row_number)
      }
    }
    firstname <- as.character(publisherdata_df[entry_row_number, "actor_first_name"])
    lastname <- as.character(publisherdata_df[entry_row_number, "actor_last_name"])
    processed_namedata <- get_name_postprocessed_form(firstname, lastname, publisherdata_df)
    new_publisherdata_df[entry_row_number, "firstname_processed"] <- processed_namedata$firstname
    new_publisherdata_df[entry_row_number, "lastname_processed"] <- processed_namedata$lastname
  }
  return(new_publisherdata_df)
}


get_profession <- function(verb, verb_suffix, professions) {
  verb_found <- verb == professions$verb
  suffix_found <- verb_suffix == professions$suffix
  combination_found <- verb_found & suffix_found
  profession_found <- TRUE %in% combination_found
  if (!profession_found) {
    profession <- NA
  } else {
    profession <- as.character(professions$profession[combination_found])
  }
  return(profession)
}


get_bbti_url_for_estc_entry <- function(estc_entry_row, bbtidata) {
  # print(as.character(estc_entry_row$id))
  estc_firstname <- as.character(tolower(estc_entry_row$firstname_processed))
  estc_lastname <- as.character(tolower(estc_entry_row$lastname_processed))
  pubyear <- as.integer(estc_entry_row$publication_year)
  publoc <- as.character(estc_entry_row$publication_place)
  profession <- as.character(estc_entry_row$profession_estc)
  
  firstnames_matching <- tolower(bbtidata$first_name) == estc_firstname
  lastnames_matching <- tolower(bbtidata$last_name) == estc_lastname
  both_names_matching <- lastnames_matching & firstnames_matching
  if (sum(both_names_matching) < 1) {
    # print("No matching names found. Moving on with life.")
    return(NA)
  }
  pubyear_matching <- bbtidata$trading_start_year <= pubyear & bbtidata$trading_end_year >= pubyear
  bioyear_matching <- bbtidata$bio_start_year <= pubyear & bbtidata$bio_end_year >= pubyear
  
  all_matching_pub <- both_names_matching & pubyear_matching
  all_matching_bio <- both_names_matching & bioyear_matching
  
  # if bio finds results, but pub doesn't, use bio. else use pub.
  # if both are 0, grow pub window by 10 years to account for stuff etc
  if (sum(all_matching_pub) < 1 & sum(all_matching_bio) >= 1) {
    # print("Using bio, not pub")
    all_matching <- all_matching_bio
  } else if (sum(all_matching_pub) < 1 & sum(all_matching_bio) < 1) {
    # print("No matches in either year range. growing pub year window by 10")
    pubyear_matching <- (bbtidata$trading_start_year - 10) <= pubyear & (bbtidata$trading_end_year + 10) >= pubyear
    all_matching <- both_names_matching & pubyear_matching
  } else {
    all_matching <- both_names_matching & pubyear_matching
  }
  
  # check if more than one match.
  num_matches <- sum(all_matching)
  if (is.na(num_matches)) {
    num_matches <- 0
  }
  
  if (num_matches == 1) {
    # print("Exactly one match!")
  } else if (num_matches < 1) {
    # print("No matches found for actor.")
  } else if (num_matches > 1) {
    # print("More than one match. Adding location filter ...")
    location_matching <- as.character(bbtidata$town) == publoc
    all_matching <- all_matching & location_matching
    # print("Location filtered. Now matching: ")
    num_matches <- sum(all_matching)
    if (is.na(num_matches)) {
      num_matches <- 0
    }
    # print(num_matches)
  }
  
  # filter for profession if still too many matches
  if (num_matches > 1) {
    # print("Matching profession ...")
    # current_subset <- bbtidata[all_matching,]
    estc_profession_matching <- grepl(profession, bbtidata$book_trades, ignore.case = TRUE)
    stationer_matching <- grepl("stationer", bbtidata$book_trades, ignore.case = TRUE)
    profession_matching <- estc_profession_matching | stationer_matching
    all_matching_profession_incl <- all_matching & profession_matching
    # should "stationer" always match also?
    num_matches <- sum(all_matching_profession_incl)
    if (is.na(num_matches)) {
      num_matches <- 0
    }
    if (num_matches < 1) {
      # print("Well, no matches after profession matching. Too bad. Try something else.")
    } else if (num_matches == 1) {
      # print("just one after profession matching. nice.")
      all_matching <- all_matching_profession_incl
    } else if (num_matches > 1) {
      # print("Still more than one match after profession matching.")
      all_matching <- all_matching_profession_incl
    }
  }
  
  if (num_matches > 1) {
    # print("Still more than one matching. Taking the one with highest year range.")
    results_subset <- bbtidata[all_matching,]
    results_subset$year_range <- results_subset$trading_end_year - results_subset$trading_start_year + 1
    # get first item matching max
    results_subset <- results_subset[results_subset$year_range == max(results_subset$year_range), ]
    result_url <- results_subset[1, "url"]
  } else if (num_matches == 1){
    results_subset <- bbtidata[all_matching,]
    result_url <- results_subset[1, "url"]
  } else {
    result_url <- NA
  }
  
  return(result_url)
}


preprocess_bbti_data <- function(raw_bbti_data) {
  bbti_data <- raw_bbti_data
  # clean and unify some field contens
  # should probably store this info somewhere. for now discarded
  bbti_data$first_name <- gsub(" I+$", "", bbti_data$first_name)
  # senior & junior. should be stored somewhere also. for now discarded
  bbti_data$first_name <- gsub(" jr$", "", bbti_data$first_name)
  bbti_data$first_name <- gsub(" jun$", "", bbti_data$first_name)
  bbti_data$first_name <- gsub(" sr$", "", bbti_data$first_name)
  bbti_data$address[bbti_data$address == "None"] <- NA
  bbti_data$county[bbti_data$county == "?"] <- NA
  bbti_data$town[bbti_data$town == "?"] <- NA
  bbti_data$non_book_trade[bbti_data$non_book_trade == "Not known"] <- NA
  bbti_data$notes[bbti_data$notes == "None"] <- NA
  
  # for now, discard names with no associated dates.
  bbti_data <- bbti_data[!is.na(bbti_data$trading_start_year) &
                           !is.na(bbti_data$trading_end_year) & 
                           !is.na(bbti_data$bio_start_year) &
                           !is.na(bbti_data$bio_end_year) ,]
  return(bbti_data)
}


add_profession_to_publisherdata_df <- function(publisherdata_df, professions) {
  publisherdata_df$profession_estc <- NA
  for (i in 1:nrow(publisherdata_df)) {
    profession <- get_profession(as.character(publisherdata_df[i, "verb"]), as.character(publisherdata_df[i, "verb_suffix"]), professions)
    publisherdata_df$profession_estc[i] <- profession
  }
  return(publisherdata_df)
}


### testing
# newcombes <- get_lastname_subset(publisher_testdata_df, "Newcombe")
# newcombs <- get_lastname_subset(publisher_testdata_df, "Newcomb")
# smiths <- get_lastname_subset(publisher_testdata_df, "Smith")
# shortform_summary <- get_shortened_names_summary(newcombs)
# shortforms <- as.character(shortform_summary$name)
# print(shortforms)
# 
# results_possibly <- sapply(shortforms, get_firstname_candidates_for_shortform, publisherdata_df=publishers_testdata_df, lastname="Newcomb")

# firstnames_table <- read.csv("~/projects/comhis/estc-publishers/catagory_tables/firstnames.csv")

### actual stuff


# firstname_candidates <- get_firstname_candidates_for_shortform(publishers_subset, lastname, shortform)
### all. this takes long.
# starttime <- Sys.time()
# print(starttime)
# all_processed <- get_nameprocessed_publisherdata_df(publishers_testdata_df)
# endtime <- Sys.time()
# print(endtime)
# print(endtime - starttime)
# write.csv(all_processed, "all_processed_publisher_strings.csv", row.names = FALSE)
# 
# all_processed2 <- all_processed
# all_processed2$profession_estc <- NA
# all_processed2$profession_estc <- NA
# 
# for (i in 1:nrow(all_processed)) {
#   profession <- get_profession(as.character(all_processed[i, "verb"]), as.character(all_processed[i, "verb_suffix"]), professions)
#   all_processed2$profession_estc[i] <- profession
# }


### just newcombs
# lastname <- "Newcomb"
# publishers_subset <- get_lastname_subset(publisher_testdata_df, lastname)
# newcombs_processed <- get_nameprocessed_publisherdata_df(publishers_subset)
# newcombs_processed$bbti_reference <- NA
# newcombs_bbtidata <- read.csv("~/projects/comhis/estc-publishers/bbti_querist/output/test_newcombs/testout.csv", stringsAsFactors = FALSE)
# 
# 
# write.csv(newcombs_processed, "newcombs_publisher_strings.csv", row.names = FALSE)

# publisherdata_with_processed_names <- read.csv("~/projects/comhis/estc-publishers/csv_outputs/all_processed_publisher_strings.csv", stringsAsFactors = FALSE)
# publisherdata_with_processed_names <- add_profession_to_publisherdata_df(publisherdata_with_processed_names, professions)
# write.csv(publisherdata_with_processed_names, "~/projects/comhis/estc-publishers/csv_outputs/publisherdata_with_processed_names.csv", row.names = FALSE)
publisherdata_with_processed_names <- read.csv("~/projects/comhis/estc-publishers/csv_outputs/publisherdata_with_processed_names.csv", stringsAsFactors = FALSE)
raw_bbti_data <- read.csv("~/projects/comhis/estc-publishers/bbti_querist/output/raw_bbti_data.csv", stringsAsFactors = FALSE)
bbti_data <- preprocess_bbti_data(raw_bbti_data)

publisherdata_with_processed_names <- publisherdata_with_processed_names[tolower(publisherdata_with_processed_names$lastname_processed) %in% tolower(bbti_data$last_name),]
publisherdata_with_processed_names <- publisherdata_with_processed_names[!is.na(publisherdata_with_processed_names$publication_year),]
# estc_publisher_entries <- estc_publisher_entries[1:100,]
publisherdata_with_processed_names$bbti_reference <- NA

for (estc_entry_row_number in 1:nrow(publisherdata_with_processed_names)) {
  bbti_url <- get_bbti_url_for_estc_entry(publisherdata_with_processed_names[estc_entry_row_number, ], bbti_data)
  publisherdata_with_processed_names[estc_entry_row_number, "bbti_reference"] <- bbti_url
}

write.csv(publisherdata_with_processed_names, "~/projects/comhis/estc-publishers/csv_outputs/estc_publishers_bbti_links_test.csv", row.names = FALSE)
estc_publishers_notna <- publisherdata_with_processed_names[!is.na(publisherdata_with_processed_names$bbti_reference),]
write.csv(estc_publishers_notna, "~/projects/comhis/estc-publishers/csv_outputs/estc_publishers_notna_bbti_links_test2.csv", row.names = FALSE)


estc_entry_row <- estc_publisher_entries[estc_publisher_entries$id == "N14351",][1,]
bbti_match <- get_bbti_matches_for_estc_entry(estc_entry_row, bbti_data)
bbti_reference <- bbti_match$url
estc_entry_row$bbti_reference <- bbti_reference

# shortforms <- get_shortforms_for_lastname(publishers_testdata_df, lastname)
# shortforms_unified <- sapply(shortforms, get_firstname_candidates_for_shortform,
#                              publisherdata_df=publishers_testdata_df,
#                              lastname=lastname)



# familyname_subset <- get_lastname_subset(publishers_testdata_df, lastname)
# wholenames_subset <- familyname_subset[!grepl("\\.", familyname_subset$actor_first_name),]
# wholenames_unique <- unique(as.character(wholenames_subset$actor_first_name))
# shortenednames_subset <- familyname_subset[grepl("\\.", familyname_subset$actor_first_name),]
# shortened_unique <- unique(as.character(shortenednames_subset$actor_first_name))
# false_longforms <- get_false_longforms(wholenames_unique, shortened_unique)
# longform_candidates <- get_longform(shortform, wholenames_unique)
# longform_candidates_filtered <- longform_candidates[!(longform_candidates %in% false_longforms)]
# print(longform_candidates_filtered)


