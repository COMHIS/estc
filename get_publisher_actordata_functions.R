
get_correct_firstname <- function(firstname, firstnames_table) {
  correct_form <- firstname
  if (firstname %in% firstnames_table$firstname_error) {
    correct_form <- firstnames_table[which(firstnames_table$firstname_error == firstname)]
  }
  return(correct_form)
}


get_actor_nameparts <- function(author_namestring, firstnames_table) {
  first_name <- NA
  last_name <- NA
  if (!is.na(author_namestring)) {
    name_split <- strsplit(author_namestring, " ")
    if (length(name_split[[1]]) == 2) {
      first_name <- name_split[[1]][1]
      last_name <- name_split[[1]][2]
    }
  }
  correct_firstname <- get_correct_firstname(first_name, firstnames_table)
  return(list('first_name' = first_name, 'last_name' = last_name))
}


get_actor_strings <- function(actor_tokens) {
  name_string <- ""
  title_string <- ""
  attribute_string <- ""
  
  for (actor_token in actor_tokens) {
    if (actor_token$type == "person_title") {
      title_string <- trimws(paste(title_string, actor_token$token, sep = " ", collapse = " "))
    } else if (actor_token$type == "person_attribute") {
      attribute_string <- trimws(paste(attribute_string, actor_token$token, sep = " ", collapse = " "))
    } else {
      name_string <- trimws(paste(name_string, actor_token$token, sep = " ", collapse = " "))
    }
  }

  actor_strings <- list('name_string' = name_string, 'title_string' = title_string, 'attribute_string' = attribute_string)
  
  for (key in names(actor_strings)) {
    if (actor_strings[key] == "") {
      actor_strings[key] <- NA
    }
  }
  
  return(actor_strings)
}


get_actor_relation_data <- function(target_tokens, firstnames_table) {
  if (typeof(target_tokens) != "list") {
    return(list('type' = NA, 'target' = NA))
  }
  # look for "successor to" in the nearby target tokens
  # if found, look for nearby names.
  # return a list with relation and target and target type(?):
  # additional_actordata$relation = "successor to"
  # additional_actordata$target = "E. Johnson"
  # additional_actordata$target_type = "actor"
  # "printed for John Churchill (executor of Charles Churchill) and William Flexney"
  relation_starter_tokens <- c("successors", "successor", "heirs", "heir", "executrix", "executor")
  relation_valid_member_types <- c("other", "comma", "joiner", "article")
  skip_adding <- c("late", "the")

  relation_string <- NA
  relation_target <- NA
  target_tokens_remainder <- NA
  
  # look for relation, set relation_string if found
  tt_index <- 0
  for (token in target_tokens) {
    tt_index <- tt_index + 1
    if (!(token$type %in% relation_valid_member_types)) {
      target_tokens_remainder <- target_tokens[tt_index:length(target_tokens)]
      break
    }
    # if a starter token encountered, and no relation string yet exists, start one
    if (is.na(relation_string) & token$token %in% relation_starter_tokens) {
      relation_string <- token$token
      next
    }
    # add members to existing relation string
    if (!is.na(relation_string) & token$type %in% relation_valid_member_types) {
      if (!(token$token %in% skip_adding))
      relation_string <- paste(relation_string, token$token, sep = " ")
    }
  }
  
  # find relation target if relation found
  if (!is.na(relation_string)) {
    next_actor <- get_next_actor(target_tokens_remainder, firstnames_table, stop_on_verb = TRUE)
    relation_target <- next_actor$actor_string
  }
  
  return(list('type' = relation_string, 'target' = relation_target))
}
