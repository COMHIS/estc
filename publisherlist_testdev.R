library(devtools)
load_all()

# source("R/get_publisher.R")
source("get_publisher_functions.R")
source("get_publisher_tokens_functions.R")
# estc_df <- readRDS(file = "~/projects/comhis/data-output-temp/testdata_estc.RDS")

estc_df <- read.csv("../../comhis/data-restricted/estc_csv_dumps/estc_processed_080517.csv")
publisher_inputdata <- estc_df[, c("id", "author", "publisher", "publication_year", "title", "publication_place", "country")]
publisher_inputdata <- publisher_inputdata[!is.na(publisher_inputdata$publisher),]
for (column in colnames(publisher_inputdata)) {
  if (column != "publication_year") {
    publisher_inputdata[, column] <- as.character(publisher_inputdata[, column])
  } else {
    publisher_inputdata[, column] <- as.numeric(publisher_inputdata[, column])
  }
}
# publisher_inputdata_subset <- publisher_inputdata[308200:310000,]
publisher_inputdata_sample <- publisher_inputdata[sample(nrow(publisher_inputdata), 1000), ]
# publisher_strings <- as.character((readRDS(file = "~/projects/comhis/data-output-temp/testdata_estc.RDS"))$publisher)
# publisher_strings_short <- publisher_strings[1:5000]
# publisher_strings_short_sample <- sample(publisher_strings, 1000)
publisher_location_table <- read.csv("inst/extdata/publisher_locations.csv", header = TRUE, stringsAsFactors = FALSE)
tokentype_data <- read.csv("inst/extdata/tokentype_data.csv", header = TRUE, stringsAsFactors = FALSE)
fullstop_keeplist <- as.character(read.csv("inst/extdata/tokens_keep_fullstop.csv")$tokens)
firstnames_table <- read.csv("~/projects/comhis/estc-publishers/catagory_tables/firstnames.csv")


# process single string:
# ---------------------
# publisher_string <- "sold by J. Roberts, near the Oxford Arms in Warwick lane"
# publisher_string <- publisher_strings[[10]]
# print(publisher_string)

# publisher_strings_df <- get_blank_verb_df()

inputdata <- publisher_inputdata
# inputdata <- publisher_inputdata_subset
# inputdata <- publisher_inputdata_sample

start_time <- Sys.time()
this_time <- start_time
df_list <- list()
for (row_number in 1:nrow(inputdata)) {
  publisher_string <- inputdata[row_number, "publisher"]
  if (row_number %% 100 == 0) {
    prev_time <- this_time
    this_time <- Sys.time()
    print(paste0("Processing item: ", as.character(row_number)))
    print("Since start:")
    print(this_time - start_time)
    print("Since prev 100:")
    print(this_time - prev_time)
    print(publisher_string)
  }
  cleaned_publisher_string <- clean_publisher_datastring(publisher_string)
  tokens <- tokenize_publisher_string(cleaned_publisher_string, fullstop_keeplist)
  tokens_and_types <- get_tokens_types(tokens, tokentype_data)
  verbs <- get_verbs(tokens_and_types, publisher_location_table)
  verbs_final <- add_verbs_actors(verbs, firstnames_table, publisher_location_table)
  verbs_final_filtered <- filter_pubdata_actors(verbs_final)
  verbs_df <- get_verbs_df(verbs_final_filtered, publisher_string)
  if (nrow(verbs_df) > 0) {
    verbs_df[, "id"] <- inputdata[row_number, "id"]
    verbs_df[, "author"] <- inputdata[row_number, "author"]
    verbs_df[, "publication_year"] <- inputdata[row_number, "publication_year"]
    verbs_df[, "title"] <- inputdata[row_number, "title"]
    verbs_df[, "publication_place"] <- inputdata[row_number, "publication_place"]
    verbs_df[, "country"] <- inputdata[row_number, "country"]
    # publisher_strings_df <- rbind(verbs_df, publisher_strings_df)
    df_list[[length(df_list) + 1]] <- verbs_df
  }
}
publisher_strings_df <- plyr::rbind.fill(df_list)
print(paste0("Total processing items: ", as.character(nrow(inputdata))))
print("Total time:")
print(Sys.time() - start_time)

timestr <- format(Sys.time(), "%Y-%m-%d_%H%M")
outpath <- "~/projects/comhis/estc-publishers/csv_outputs/"

# View(publisher_strings_df)
write.csv(publisher_strings_df, paste0(outpath, "publisher_strings_", timestr, ".csv"), row.names = FALSE)

# subsets
pubstrings_c <- publisher_strings_df[(tolower(substr(publisher_strings_df$actor, 1, 1)) == "c" & !is.na(publisher_strings_df$actor)),]
pubstrings_london <- publisher_strings_df[(grepl("@@ london$", tolower(publisher_strings_df$location)) & !is.na(publisher_strings_df$location)),]
write.csv(pubstrings_c, paste0(outpath, "publisher_strings_actors_c_", timestr, ".csv"), row.names = FALSE)
write.csv(pubstrings_london, paste0(outpath, "publisher_strings_london_", timestr, ".csv"), row.names = FALSE)

# summaries
last_names_counts <- plyr::count(publisher_strings_df$actor_last_name)
write.csv(last_names_counts, paste0(outpath, "last_names_counts_", timestr, ".csv"), row.names = FALSE)
first_names_counts <- plyr::count(publisher_strings_df$actor_first_name)
write.csv(first_names_counts, paste0(outpath, "first_names_counts_", timestr, ".csv"), row.names = FALSE)
act_ats <- publisher_strings_df$actor_attribute
act_ats[is.na(act_ats)] <- ""
names_format_last_first <- trimws(paste0(publisher_strings_df$actor_last_name, ", ", publisher_strings_df$actor_first_name, " ", act_ats))
combined_names_counts <- plyr::count(names_format_last_first)
write.csv(names_format_last_first, paste0(outpath, "names_format_last_first_counts_", timestr, ".csv"), row.names = FALSE)


