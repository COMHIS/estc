source("get_publisher_functions.R")


estc_data <- readRDS("inst/examples/df0.Rds")
publishers_field_data <- as.character(estc_data$publisher)
# publishers_field_data <- publishers_field_data[1:10000]

pf_tokens <- list()

for (pf in publishers_field_data) {
  tokens <- tokenize_publisher_string(pf)
  if (typeof(tokens) != "character") {
    next
  }
  for (token in tokens) {
    if (grepl("\\.$", token)) {
      if(token %in% names(pf_tokens)) {
        pf_tokens[[token]] <- pf_tokens[[token]] + 1 
      } else {
        pf_tokens[[token]] <- 1
      }
    }
  }
}

pf_tokens_df <- data.frame(tokens = names(pf_tokens), amounts = unlist(pf_tokens))
View(pf_tokens_df)
