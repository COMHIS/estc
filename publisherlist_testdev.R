library(devtools)
load_all()

# source("R/get_publisher.R")
source("get_publisher_functions.R")
source("get_publisher_tokens_functions.R")
# estc_df <- readRDS(file = "~/projects/comhis/data-output-temp/testdata_estc.RDS")

publisher_strings <- as.character((readRDS(file = "~/projects/comhis/data-output-temp/testdata_estc.RDS"))$publisher)
publisher_strings_short <- publisher_strings[1:5000]
publisher_strings_short_sample <- sample(publisher_strings, 1000)
publisher_location_table <- read.csv("inst/extdata/publisher_locations.csv", header = TRUE, stringsAsFactors = FALSE)
tokentype_data <- read.csv("inst/extdata/tokentype_data.csv", header = TRUE, stringsAsFactors = FALSE)
fullstop_keeplist <- as.character(read.csv("inst/extdata/tokens_keep_fullstop.csv")$tokens)

# process single string:
# ---------------------
# publisher_string <- "sold by J. Roberts, near the Oxford Arms in Warwick lane"
# publisher_string <- publisher_strings[[10]]
# print(publisher_string)

publisher_strings_df <- get_blank_verb_df()

for (publisher_string in publisher_strings_short_sample) {
  print(publisher_string)
  cleaned_publisher_string <- clean_publisher_datastring(publisher_string)
  tokens <- tokenize_publisher_string(cleaned_publisher_string, fullstop_keeplist)
  tokens_and_types <- get_tokens_types(tokens, tokentype_data)
  verbs <- get_verbs(tokens_and_types, publisher_location_table)
  verbs_final <- add_verbs_actors(verbs, publisher_location_table)
  verbs_final_filtered <- filter_pubdata_actors(verbs_final)
  verbs_df <- get_verbs_df(verbs_final_filtered, publisher_string)
  publisher_strings_df <- rbind(verbs_df, publisher_strings_df)
}

View(publisher_strings_df)
write.csv(publisher_strings_df, "./publisher_strings_test.csv", row.names = FALSE)
