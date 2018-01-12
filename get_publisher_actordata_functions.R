

get_actor_relation_data <- function(target_tokens) {
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
    next_actor <- get_next_actor(target_tokens_remainder, stop_on_verb = TRUE)
    relation_target <- next_actor$actor_string
  }
  
  return(list('type' = relation_string, 'target' = relation_target))
}
