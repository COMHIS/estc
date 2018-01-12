source("get_publisher_actordata_functions.R")

get_verb_suffix <- function(tokens_to_process, stop_at_verb = FALSE,
                            accept_prefixes = list("person_prefix", "location_prefix")) {
  if (typeof(tokens_to_process) != "list") {
    return(list('suffix' = NA, 'target_tokens' = NA))
  } else {
    i <- 1
    max_i <- length(tokens_to_process)
    while (i <= max_i) {
      current_token <- tokens_to_process[[i]]
      # if "in the year" -phrase is encountered, stop on a second verb. eg.:
      # "printed in the year M.DCC.LXXVI. And sold by the booksellers of London and Bath"
      if (current_token$type == "timestamp_prefix") {
        stop_at_verb <- TRUE
      }
      if (current_token$type == "verb" & stop_at_verb) {
        return(list('suffix' = NA, 'target_tokens' = NA))
      }
      if (current_token$type %in% accept_prefixes) {
        target_tokens <- tokens_to_process[(i):length(tokens_to_process)]
        return(list('suffix' = current_token,
                    'target_tokens' = target_tokens))
      }
      i <- i + 1
    }
    return(list('suffix' = NA, 'target_tokens' = tokens_to_process))
  }
}


get_verb_pre_location <- function(entry, tokens_and_types, publisher_location_table) {
  pre_location <- NA
  if (entry$order > 1) {
    if (tokens_and_types[[(entry$order - 1)]]$type == "name") {
      if (tokens_and_types[[(entry$order - 1)]]$token %in% publisher_location_table$location) {
        pre_location <- tokens_and_types[[(entry$order - 1)]]$token
      }
    }
  }
  if (entry$order > 2) {
    if (tokens_and_types[[(entry$order - 1)]]$token == ":") {
      if (tokens_and_types[[(entry$order - 2)]]$type == "name") {
        if (tokens_and_types[[(entry$order - 2)]]$token %in% publisher_location_table$location) {
          pre_location <- tokens_and_types[[(entry$order - 2)]]$token
        }
      }
    }
  }
  return(pre_location)  
}


get_verbs <- function(tokens_and_types, publisher_location_table) {
  results_list <- list()
  nresults = 0

  for (entry in tokens_and_types) {
    if (is.na(entry$type)) {
      return(results_list)
    }
    if (entry$type == "verb") {
      # print(entry$token)
      nresults <- nresults + 1
      pre_location <- get_verb_pre_location(entry, tokens_and_types, publisher_location_table)
      # if verb is last token in list, it can't have suffix or targets
      if (entry$order == length(tokens_and_types)) {
        final_target_tokens <- NA
        suffix <- NA
      } else {
        stop_at_verb <- FALSE
        # if verb has pre_location, dont look for suffix after second verb encountered
        if (!is.na(pre_location)) {
          stop_at_verb <- TRUE
        }
        target_tokens <- tokens_and_types[(entry$order + 1):length(tokens_and_types)]
        verb_suffix_data <- get_verb_suffix(target_tokens, stop_at_verb = stop_at_verb)
        suffix <- verb_suffix_data$suffix
        final_target_tokens <- verb_suffix_data$target_tokens
      }
      result_entry <- list('verb' = entry$token,
                           'order' = entry$order,
                           'actors' = NA,
                           'suffix' = suffix,
                           'target_tokens' = final_target_tokens,
                           'pre_location' = pre_location)
      results_list[[nresults]] <- result_entry
      
      # print("foo")
      
      # look for second suffix if first one is not NA
      if (typeof(suffix) == "list") {
        # drop processed suffix from next set of tokens to consider
        if (length(final_target_tokens) >= 2) {
          second_suffix_data <- get_verb_suffix(
            final_target_tokens[2:(length(final_target_tokens))], stop_at_verb = TRUE,
            accept_prefixes = list("person_prefix"))
        } else {
          second_suffix_data <- list('suffix' = NA, 'target_tokens' = NA)
        }
        second_suffix <- second_suffix_data$suffix
        second_suffix_target_tokens <- second_suffix_data$target_tokens
        if (typeof(second_suffix) == "list") {
          nresults <- nresults + 1
          second_suffix_result_entry <- list('verb' = entry$token,
                                             'order' = entry$order,
                                             'actors' = NA,
                                             'suffix' = second_suffix,
                                             'target_tokens' = second_suffix_target_tokens,
                                             'pre_location' = pre_location)
          results_list[[nresults]] <- second_suffix_result_entry
          
        }
      }
    }
  }

  return(results_list)
}


set_expect_person_flag <- function(current_token_type, prev_token_type, old_value) {
  if (current_token_type == "location_prefix") {
    return(FALSE)
  } else if (current_token_type == "ender") {
    return(TRUE)
  } else if (current_token_type == "joiner" & prev_token_type == "comma") {
    return(TRUE)
  } else if (current_token_type == "person_title") {
    return(TRUE)
  # addition
  } else if (current_token_type == "initial") {
    return(TRUE)
  } else if (old_value == FALSE & current_token_type == "comma") {
    return(TRUE)
  } else {
    return(old_value)
  }
}


set_accept_roles_flag <- function(current_token_type, prev_token_type, actor_tokens_length, old_value) {
  if (actor_tokens_length == 0 &
      current_token_type == "joiner" &
      prev_token_type == "comma") {
    return(TRUE)
  } else {
    return(old_value)
  }
}


set_skip_result_flag <- function(current_token, prev_token, flag_prev_value) {
  if (flag_prev_value == TRUE) {
    return(TRUE)
  }
  # if (tolower(current_token$token) == "to" & tolower(prev_token$token) == "successor") {
  if (tolower(current_token$token) %in% c("successors", "successor", "heirs", "heir", "executrix", "executor")) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}


get_next_actor <- function(target_tokens, stop_on_verb = FALSE, accept_roles = TRUE, actors_found = FALSE) {
  actor_tokens <- list()
  tokens_processed <- 0
  accept_initials <- TRUE
  expect_person <- TRUE
  has_nameparts <- FALSE
  has_initials <- FALSE
  multipart_cutoff <- 0
  actor_index <- NA
  skip_result <- FALSE
  
  if (typeof(target_tokens) != "list") {
    return(list('target_tokens' = NA, 'actor_string' = NA, 'actor_index' = NA, 'skip_result' = skip_result))
  }
  
  prev_token <- target_tokens[[1]]
  next_token <- target_tokens[[1]]
  
  for (i in 1:length(target_tokens)) {
    current_token <- target_tokens[[i]]
    if (i > 1) {
      prev_token <- target_tokens[[i - 1]]
    }
    if (length(target_tokens) > i) {
      next_token <- target_tokens[[i + 1]]
    }
    
    tokens_processed <- tokens_processed + 1
    
    if (stop_on_verb) {
      if (current_token$type == "verb" |
          # current_token$type == "location_prefix" |
          current_token$type == "person_prefix") {
        tokens_processed <- tokens_processed - 1
        break
      }
    }
    
    # handle "sold at"
    if (!actors_found) {
      if (current_token$token == "at") {
        tokens_processed <- tokens_processed - 1
        break
      }
    }
    
    # if no actor tokens encountered, and joiner found, start accepting roles
    accept_roles <- set_accept_roles_flag(current_token$type,
                                          prev_token$type,
                                          length(actor_tokens),
                                          accept_roles)

    expect_person <- set_expect_person_flag(current_token$type, prev_token$type, expect_person)
    skip_result <- set_skip_result_flag(current_token, prev_token, skip_result)

    if (expect_person) {
      # only accept role if nothing in actor name list yet
      if (current_token$type == "person_role" & accept_roles & length(actor_tokens) == 0) {
        actor_tokens[[length(actor_tokens) + 1]] <- current_token
        accept_initials <- FALSE
        if (is.na(actor_index)) {
          actor_index <- current_token$order
        }
        next
      }
      # hand titles (mr., mrs., ...)
      if (current_token$type == "person_title") {
        actor_tokens[[length(actor_tokens) + 1]] <- current_token
        if (is.na(actor_index)) {
          actor_index <- current_token$order
        }
        next
      }
      if (current_token$type == "name") {
        actor_tokens[[length(actor_tokens) + 1]] <- current_token
        has_nameparts <- TRUE
        accept_initials <- FALSE
        if (is.na(actor_index)) {
          actor_index <- current_token$order
        }
        next
      }
      if (current_token$type == "initial") {
        if (accept_initials) {
          actor_tokens[[length(actor_tokens) + 1]] <- current_token
          has_initials <- TRUE
          if (is.na(actor_index)) {
            actor_index <- current_token$order
          }
        # if actor string has nameparts and initials, and initial is encountered again, end actor string
        # (names are not always separated by comma, eg.: "printed for W. Lowndes, J. Nichols S. Bladon, and W. Nicholl")
        # } else if (!accept_initials & has_nameparts & has_initials) {
        # changed to break if actor string has nameparts, and initial encountered
        } else if (!accept_initials & has_nameparts) {
          tokens_processed <- tokens_processed - 1
          break
        }
        next
      }
      # accept name attributes (= senior / junior) if something in there already
      # break at senior / junior -> always at end of name
      if (current_token$type == "person_attribute" & length(actor_tokens) > 0 & has_nameparts) {
        actor_tokens[[length(actor_tokens) + 1]] <- current_token
        break
      }
      # often like this: John Doe, Sen.
      # skip comma, move cursor one position forward, break
      if (current_token$type == "comma" & next_token$type == "person_attribute" & length(actor_tokens) > 0 & has_nameparts) {
        actor_tokens[[length(actor_tokens) + 1]] <- next_token
        tokens_processed <- tokens_processed + 1
        break
      }
      
    }
    
    # if token is not name or initial we are here.
    # break loop if something in actor tokens and non-name/initial encountered 
    if (length(actor_tokens) == 0) {
      next
    } else if (length(actor_tokens) > 0 & has_initials & !has_nameparts) {
      accept_initials <- FALSE
      if (current_token$type == "joiner") {
        multipart_cutoff <- tokens_processed + 1
        next
      } else {
        tokens_processed <- tokens_processed - 1
        break
      }
    } else {
      tokens_processed <- tokens_processed - 1
      break
    }
  }
  
  actor_token_text <- ""
  for (actor_token in actor_tokens) {
    actor_token_text <- trimws(paste(actor_token_text, actor_token$token, sep = " ", collapse = " "))
  }
  if (actor_token_text == "") {
    actor_token_text <- NA
  }

  if (multipart_cutoff > 0 & multipart_cutoff < length(target_tokens)) {
    new_target_tokens <- target_tokens[multipart_cutoff:length(target_tokens)]
  } else if (tokens_processed == length(target_tokens)) {
    new_target_tokens <- NA
  } else {
    new_target_tokens <- target_tokens[(tokens_processed + 1):length(target_tokens)]
  }
  
  if (skip_result) {
    actor_index <- NA
    actor_token_text <- NA
  }
  
  return(list('target_tokens' = new_target_tokens, 'actor_string' = actor_token_text, 'actor_index' = actor_index, 'skip_result' = skip_result))
}


evaluate_location <- function(location, publisher_location_table) {
  if (location == "") {
    return(FALSE)
  }
  if (location %in% publisher_location_table$location) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

loc_eval_expect_location <- function(token, current_value) {
  if (token$type == "location_prefix") {
    return(TRUE)
  }
  if (token$type == "verb" |
      token$type == "ender" |
      token$type == "initial") {
    return(FALSE)
  }
  return(current_value)
}


loc_eval_end_subpart <- function(token) {
  type <- token$type
  if (type == "comma" |
      type == "ender" |
      type == "person_prefix" |
      type == "location_prefix" |
      type == "initial") {
    return(TRUE)
  }
  return(FALSE)
}


loc_eval_search_complete <- function(token, prev_token, found_locations_n) {
  type <- token$type
  prev_type <- prev_token$type
  if (type == "ender" | type == "roman_numeral") {
    return(TRUE)
  }
  if (type == "joiner" & prev_type == "comma" & found_locations_n > 0) {
    return(TRUE)
  }
  # was:
  # if (type == "initial" & prev_type == "comma" & found_locations_n > 0) {
  if (type == "initial" & found_locations_n > 0) {
    return(TRUE)
  }
  if (prev_type == "initial" & found_locations_n > 0) {
    return(TRUE)
  }
  if (type == "person_role" & found_locations_n > 0) {
    return(TRUE)
  }
  if (type == "person_prefix" & found_locations_n > 0) {
    return(TRUE)
  }
  return(FALSE)
}


loc_eval_add_token_strong <- function(token, is_first_token) {
  type <- token$type
  if (type == "name") {
    return(TRUE)
  } else if (!is_first_token & type == "location_component") {
    return(TRUE)
  } else {
    return(FALSE)
  }
}


loc_eval_add_token_weak <- function(token) {
  type <- token$type
  # joiner = & and
  if (type == "joiner" |
      type == "other") {
    return(TRUE)
  }
  return(FALSE)
}


evaluate_location_vs_prelocation <- function(placename_candidate, verb_pre_location, publisher_location_table) {
  if (is.na(verb_pre_location)) {
    return(TRUE)
  }
  if (!(placename_candidate %in% publisher_location_table$location)) {
    return(TRUE)
  }
  candidate_level <- publisher_location_table[publisher_location_table$location == placename_candidate,]$level
  pre_location_level <- publisher_location_table[publisher_location_table$location == verb_pre_location,]$level
  if (is.na(candidate_level) | is.na(pre_location_level)) {
    return(TRUE)
  }
  if (candidate_level <= pre_location_level) {
    return(FALSE)
  } else {
    return(TRUE)
  }
}


get_placename_candidate_string <- function(placename_candidate_tokens) {
  placename_candidate_string <- ""
  if (length(placename_candidate_tokens) == 0) {
    return(placename_candidate_string)
  }
  # if last token in placename candidate is joiner (& and), remove it
  if (placename_candidate_tokens[[length(placename_candidate_tokens)]]$type == "joiner") {
    placename_candidate_tokens <- placename_candidate_tokens[1:(length(placename_candidate_tokens) - 1)]
  }
  for (token in placename_candidate_tokens) {
    placename_candidate_string <- trimws(paste(placename_candidate_string, token$token, collapse = " "))
  }
  return(placename_candidate_string)
}


get_next_location <- function(target_tokens, publisher_location_table, verb_pre_location = NA) {
  if (typeof(target_tokens) != "list") {
    return(list('prefix_string' = NA, 'locations_string' = NA))
  }

  prefix_string <- ""
  prefix_string_final <- NA
  # placename_candidate <- ""
  placename_candidate_tokens <- list()
  found_locations <- list()
  expect_location_flag <- FALSE
  first_token_index <- integer()
  is_first_token <- TRUE
  first_token_index_candidate <- NA
  
  prev_token <- target_tokens[[1]]

  for (i in 1:length(target_tokens)) {
    current_token <- target_tokens[[i]]
    if (i > 1) {
      prev_token <- target_tokens[[i - 1]]
    }
    # skip token if first, and token is ender
    # if (i == 1 & current_token$type == "ender") {
    #   next
    # }

    # set flags based on token type
    prev_expect_location_flag <- expect_location_flag
    expect_location_flag <- loc_eval_expect_location(current_token, expect_location_flag)
    end_subpart_flag <- loc_eval_end_subpart(current_token)
    search_complete_flag <- loc_eval_search_complete(current_token, prev_token, length(found_locations))
    add_token_strong_flag <- loc_eval_add_token_strong(current_token, is_first_token)
    add_token_weak_flag <- loc_eval_add_token_weak(current_token)

    # --- SAVING ---
    # if parsing for location part complete: evaluate, (add) and reset candidate
    if (end_subpart_flag | search_complete_flag) {
      placename_candidate <- get_placename_candidate_string(placename_candidate_tokens)
      if (evaluate_location(placename_candidate, publisher_location_table) | prev_expect_location_flag) {
        prelocation_evaluation <- evaluate_location_vs_prelocation(placename_candidate, verb_pre_location, publisher_location_table)
        if (nchar(placename_candidate) > 0 & prelocation_evaluation) {
          found_locations[[length(found_locations) + 1]] <- placename_candidate
          first_token_index[length(first_token_index) + 1] <- first_token_index_candidate
        }
      }
      # placename_candidate <- ""
      placename_candidate_tokens <- list()
    }
    
    # --- FLOW CONTROL ---
    # break loop and disregard rest of tokens, if search complete
    if (search_complete_flag) {
      break
    }
    # if end of subpart, keep on looking for next part        
    if (end_subpart_flag) {
      is_first_token <- TRUE
      next
    }
    
    # --- LOCATION STRING --- 
    # if add_token_strong set, add token to candidate
    if (add_token_strong_flag) {
      placename_candidate_tokens[[length(placename_candidate_tokens) + 1]] <- current_token
      # placename_candidate <- trimws(paste(placename_candidate, current_token$token, collapse = " "))
      if (is_first_token) {
        first_token_index_candidate <- current_token$order
        is_first_token <- FALSE
      }
    }
    # add weak tokens if expect location set
    if (add_token_weak_flag & expect_location_flag) {
      placename_candidate_tokens[[length(placename_candidate_tokens) + 1]] <- current_token
      # placename_candidate <- trimws(paste(placename_candidate, current_token$token, collapse = " "))
      if (is_first_token) {
        first_token_index_candidate <- current_token$order
        is_first_token <- FALSE
      }
    }
  }
  
  # everything finished. check if there is something left in placename_candidate
  # check if it validates, if yes, save
  # if (nchar(placename_candidate) > 0) {
  if (length(placename_candidate_tokens) > 0) {
    placename_candidate <- get_placename_candidate_string(placename_candidate_tokens)
    if (evaluate_location(placename_candidate, publisher_location_table) | expect_location_flag) {
      if (evaluate_location_vs_prelocation(placename_candidate, verb_pre_location, publisher_location_table)) {
        found_locations[[length(found_locations) + 1]] <- placename_candidate
        first_token_index[length(first_token_index) + 1] <- first_token_index_candidate
      }
    }
  }

  prefix_string_final <- prefix_string
  locations_string <- paste(found_locations, collapse = " @@ ", sep = " @@ ")
  if (locations_string == "") {
    locations_string <- NA
  }
  return(list('prefix_string' = prefix_string_final, 'locations_string' = locations_string, 'location_index' = first_token_index))
}


get_blank_verb_df <- function() {
  verb_df <- data.frame(publisher_string = character(),
                        verb = character(),
                        verb_suffix = character(),
                        actor = character(),
                        location = character(),
                        location_prefix = character())
  return(verb_df)
}


get_verb_df <- function(verb_final, publisher_string) {
  verb_df <-  get_blank_verb_df()
  
  verb_string <- verb_final$verb
  
  if (!typeof(verb_final$suffix) == "list") {
    verb_suffix_string <- NA
  } else {
    verb_suffix_string <- verb_final$suffix$token
  }
  
  if (typeof(verb_final$actor) != "list") {
    df_row <- data.frame(publisher_string = publisher_string,
                         verb = verb_string,
                         verb_suffix = verb_suffix_string,
                         actor = NA,
                         location = NA,
                         actor_relation_type = NA,
                         actor_relation_target = NA
                         # location_prefix = NA
                         )
    verb_df <- rbind(df_row, verb_df)
  } else {
    for (actor in verb_final$actors) {
      actor_string <- actor$actor_string
      location_string <- actor$location$locations_string
      # location_prefix_string <- actor$location$prefix_string
      df_row <- data.frame(publisher_string = publisher_string,
                           verb = verb_string,
                           verb_suffix = verb_suffix_string,
                           actor = actor_string,
                           location = location_string,
                           actor_relation_type = actor$relation$type,
                           actor_relation_target = actor$relation$target
                           # location_prefix = location_prefix_string
                           )
      verb_df <- rbind(df_row, verb_df)
    }
  }
  return(verb_df)
}


# get actors and their target tokens. loop through target tokens to get locations 
get_all_actors <- function(target_tokens, publisher_location_table, stop_on_verb = FALSE) {
  # if (typeof(target_tokens) != "list") {
  #   return(NA)
  # }
  
  actors <- list()
  accept_person_roles <- TRUE
  finished <- FALSE
  actors_found <- FALSE
  
  tokens_to_search <- target_tokens
  # stop_on_verb <- FALSE

  while (!finished) {
    # print(tokens_to_search)
    next_actor <- get_next_actor(tokens_to_search, stop_on_verb, accept_person_roles, actors_found)
    # this is to work the cases with "sold at" etc. where the first actor needs to be a blank one
    # to catch the whole target string for location detection
    actors_found <- TRUE
    # returns:
    # return(list('target_tokens' = new_target_tokens, 'actor_string' = actor_token_text))
    # either or both can be NA'
    # loop until no actor found.
    
    # Check if actor is location, or skip_result flag set. If so, continue loop.
    if (next_actor$actor_string %in% publisher_location_table$location |
        next_actor$skip_result) {
      tokens_to_search <- next_actor$target_tokens
      next
    }
    # if no actor is found, finish the loop
    if (is.na(next_actor$actor_string)) {
      if (length(actors) == 0) {
        actors[[1]] <- list()
        actors[[1]]$actor_string <- NA
        actors[[1]]$target_tokens <- target_tokens
        actors[[1]]$actor_index <- NA
        finished <- TRUE
      }
      if (length(actors) > 0) {
        finished <- TRUE
      }
    # save found actor
    } else {
      # print("saved one!")
      actors[[length(actors) + 1]] <- next_actor
      tokens_to_search <- next_actor$target_tokens
      stop_on_verb <- TRUE
      accept_person_roles <- FALSE
      actors_found <- TRUE
    }
  }
  return(actors)  
}


add_additional_data_to_actor_list <- function(actor_list, publisher_location_table, verb_pre_location = NA) {
  if (typeof(actor_list) != "list") {
    return(NA)
  } else {
    actors_with_locations <- list()
    for (actor in actor_list) {
      actor_location <- get_next_location(actor$target_tokens, publisher_location_table, verb_pre_location)
      actor_relation <- get_actor_relation_data(actor$target_tokens)
      # add verb_prelocation to actor_location string if present
      if (!is.na(verb_pre_location)) {
        if (is.na(actor_location$locations_string)) {
          actor_location$locations_string <- verb_pre_location
        } else {
          actor_location$locations_string <- paste(actor_location$locations_string, verb_pre_location, sep = " @@ ")
        }
      }
      actor$location <- actor_location
      actor$relation <- actor_relation
      actors_with_locations[[length(actors_with_locations) + 1]] <- actor
    }
    return(actors_with_locations)
  }
}


add_verbs_actors <- function(verbs, publisher_location_table) {
  retlist <- list()
  if (length(verbs) == 0) {
    print("No verbs found.")
    return(verbs)
  } else {
    for (verb in verbs) {
      stop_on_verb <- FALSE
      # if (!is.na(verb$pre_location)) {
      #   stop_on_verb <- TRUE
      # }
      verb_actors <- get_all_actors(verb$target_tokens, publisher_location_table, stop_on_verb)
      verb_actors_with_additional_data <- add_additional_data_to_actor_list(verb_actors, publisher_location_table, verb$pre_location)
      verb$actors <- verb_actors_with_additional_data
      retlist[[length(retlist) + 1]] <- verb
    }
    return(retlist)
  }
}


get_verb_actor_count <- function(verb) {
  if (typeof(verb$actors) != "list") {
    verb_actor_count <- 0
  } else {
    verb_actor_count <- length(verb$actors)
  }
  return(verb_actor_count)
}


get_verbs_dict_actor_count <- function(verbs_final) {
  actor_count <- 0
  for (verb in verbs_final) {
    actor_count <- actor_count + get_verb_actor_count(verb)
  }
  return(actor_count)
}


# find indices of all locations in all verbs. check if actor indices are same, and if so
# discard the actor
filter_pubdata_actors <- function(verbs_final) {

  location_indices <- double()
  for (verb in verbs_final) {
    for (actor in verb$actors) {
      if (typeof(actor) != "list") {
        next
      }
      if (length(actor$location$location_index) > 0) {
        location_indices <- c(actor$location$location_index, location_indices)
      }
    }
  }
  location_indices <- unique(location_indices)
  
  verbs_filtered <- list()
  for (verb in verbs_final) {
    if (get_verb_actor_count(verb) == 0) {
      new_verb <- verb
    } else {
      new_actors <- list()
      for (actor in verb$actors) {
        # if (typeof(actor) != "list") {
        #   next
        # }
        if (!(actor$actor_index %in% location_indices)) {
          new_actors[[length(new_actors) + 1]] <- actor
        }
      }
      if (length(new_actors) > 0) {
        new_verb <- verb
        new_verb$actors <- new_actors
      }
    }
    verbs_filtered[[length(verbs_filtered) + 1]] <- new_verb
  }
  return(verbs_filtered)
}



get_verbs_df <- function(verbs_final, publisher_string) {
  ret_df <- get_blank_verb_df()
  for (verb_final in verbs_final) {
    verb_df <- get_verb_df(verb_final, publisher_string)
    ret_df <- rbind(verb_df, ret_df)
  }
  return(ret_df)
}

