
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


get_verbs <- function(tokens_and_types) {
  results_list <- list()
  nresults = 0

  for (entry in tokens_and_types) {
    if (is.na(entry$type)) {
      return(results_list)
    }

    if (entry$type == "verb") {
      nresults <- nresults + 1
      if (entry$order == length(tokens_and_types)) {
        final_target_tokens <- NA
        suffix <- NA
      } else {
        target_tokens <- tokens_and_types[(entry$order + 1):length(tokens_and_types)]
        verb_suffix_data <- get_verb_suffix(target_tokens)
        suffix <- verb_suffix_data$suffix
        final_target_tokens <- verb_suffix_data$target_tokens
      }
      result_entry <- list('verb' = entry$token,
                           'order' = entry$order,
                           'actors' = NA,
                           'suffix' = suffix,
                           'target_tokens' = final_target_tokens)
      results_list[[nresults]] <- result_entry
      
      # look for second suffix is first one is not NA
      if (typeof(suffix) == "list") {
        # drop processed suffix from next set of tokens to consider
        second_suffix_data <- get_verb_suffix(
          final_target_tokens[2:(length(final_target_tokens))], stop_at_verb = TRUE,
          accept_prefixes = list("person_prefix"))
        second_suffix <- second_suffix_data$suffix
        second_suffix_target_tokens <- second_suffix_data$target_tokens
        if (typeof(second_suffix) == "list") {
          nresults <- nresults + 1
          second_suffix_result_entry <- list('verb' = entry$token,
                                             'order' = entry$order,
                                             'actors' = NA,
                                             'suffix' = second_suffix,
                                             'target_tokens' = second_suffix_target_tokens)
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


get_next_actor <- function(target_tokens, stop_on_verb = FALSE, accept_roles = TRUE) {
  actor_tokens <- list()
  tokens_processed <- 0
  accept_initials <- TRUE
  expect_person <- TRUE
  has_nameparts <- FALSE
  has_initials <- FALSE
  multipart_cutoff <- 0
  actor_index <- NA
  
  if (typeof(target_tokens) != "list") {
    return(list('target_tokens' = NA, 'actor_string' = NA, 'actor_index' = NA))
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
    
    # if no actor tokens encountered, and joiner found, start accepting roles
    accept_roles <- set_accept_roles_flag(current_token$type,
                                          prev_token$type,
                                          length(actor_tokens),
                                          accept_roles)

    expect_person <- set_expect_person_flag(current_token$type, prev_token$type, expect_person)

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
        # if actor string has nameparts and initals, and initial is encountered again, end actor string
        # (names are not always separated by comma, eg.: "printed for W. Lowndes, J. Nichols S. Bladon, and W. Nicholl")
        } else if (!accept_initials & has_nameparts & has_initials) {
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
  
  return(list('target_tokens' = new_target_tokens, 'actor_string' = actor_token_text, 'actor_index' = actor_index))
}


evaluate_location <- function(location, locations_accepted) {
  if (location == "") {
    return(FALSE)
  }
  if (location %in% locations_accepted) {
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
      type == "location_prefix" ) {
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
  if (type == "initial" & prev_type == "comma" & found_locations_n > 0) {
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
  if (type == "joiner" |
      type == "other") {
    return(TRUE)
  }
  return(FALSE)
}


get_next_location <- function(target_tokens, locations_accepted) {
  if (typeof(target_tokens) != "list") {
    return(list('prefix_string' = NA, 'locations_string' = NA))
  }

  prefix_string <- ""
  prefix_string_final <- NA
  placename_candidate <- ""
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
      if (evaluate_location(placename_candidate, locations_accepted) |
          prev_expect_location_flag) {
        if (nchar(placename_candidate) > 0) {
          found_locations[[length(found_locations) + 1]] <- placename_candidate
          first_token_index[length(first_token_index) + 1] <- first_token_index_candidate
        }
      }
      placename_candidate <- ""
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
      placename_candidate <- trimws(paste(placename_candidate, current_token$token, collapse = " "))
      if (is_first_token) {
        first_token_index_candidate <- current_token$order
        is_first_token <- FALSE
      }
    }
    # add weak tokens if expect location set
    if (add_token_weak_flag & expect_location_flag) {
      placename_candidate <- trimws(paste(placename_candidate, current_token$token, collapse = " "))
      if (is_first_token) {
        first_token_index_candidate <- current_token$order
        is_first_token <- FALSE
      }
    }
  }
  
  # everything finished. check if there is something left in placename_candidate
  # check if it validates, if yes, save
  if (nchar(placename_candidate) > 0) {
    if (evaluate_location(placename_candidate, locations_accepted) | expect_location_flag) {
      found_locations[[length(found_locations) + 1]] <- placename_candidate
      first_token_index[length(first_token_index) + 1] <- first_token_index_candidate
    }
  }

  prefix_string_final <- prefix_string
  locations_string <- paste(found_locations, collapse = " @@ ", sep = " @@ ")
  
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
                         location_prefix = NA)
    verb_df <- rbind(df_row, verb_df)
  } else {
    for (actor in verb_final$actors) {
      actor_string <- actor$actor_string
      location_string <- actor$location$locations_string
      location_prefix_string <- actor$location$prefix_string
      # print(publisher_string)
      # print(verb_string)
      # print(verb_suffix_string)
      # print(actor_string)
      # print(location_string)
      # print(location_prefix_string)
      df_row <- data.frame(publisher_string = publisher_string,
                           verb = verb_string,
                           verb_suffix = verb_suffix_string,
                           actor = actor_string,
                           location = location_string,
                           location_prefix = location_prefix_string)
      verb_df <- rbind(df_row, verb_df)
    }
  }
  return(verb_df)
}


# get actors and their target tokens. loop through target tokens to get locations 
get_all_actors <- function(target_tokens, locations_accepted) {
  if (typeof(target_tokens) != "list") {
    return(NA)
  }
  
  actors <- list()
  accept_person_roles <- TRUE
  finished <- FALSE
  
  tokens_to_search <- target_tokens
  stop_on_verb <- FALSE

  while (!finished) {
    # print(tokens_to_search)
    next_actor <- get_next_actor(tokens_to_search, stop_on_verb, accept_person_roles)
    # returns:
    # return(list('target_tokens' = new_target_tokens, 'actor_string' = actor_token_text))
    # either or both can be NA'
    # loop until no actor found.
    
    # Check if actor is location. If so, continue loop.
    if (next_actor$actor_string %in% locations_accepted) {
      tokens_to_search <- next_actor$target_tokens
      next
    }
    # if no actor is found, finish the loop
    if (is.na(next_actor$actor_string)) {
      # print("no actor string")
      if (length(actors) == 0) {
        # print("1")
        actors[[1]] <- list()
        actors[[1]]$actor_string <- NA
        actors[[1]]$target_tokens <- target_tokens
        actors[[1]]$actor_index <- NA
        finished <- TRUE
      }
      if (length(actors) > 0) {
        # print("2")
        finished <- TRUE
      }
    # save found actor
    } else {
      # print("saved one!")
      actors[[length(actors) + 1]] <- next_actor
      tokens_to_search <- next_actor$target_tokens
      stop_on_verb <- TRUE
      accept_person_roles <- FALSE
    }
  }
  return(actors)  
}


add_locations_to_actor_list <- function(actor_list, locations_accepted) {
  if (typeof(actor_list) != "list") {
    return(NA)
  } else {
    actors_with_locations <- list()
    for (actor in actor_list) {
      actor_location <- get_next_location(actor$target_tokens, locations_accepted)
      actor$location <- actor_location
      actors_with_locations[[length(actors_with_locations) + 1]] <- actor
    }
    return(actors_with_locations)
  }
}


add_verbs_actors <- function(verbs, locations_accepted) {
  retlist <- list()
  if (length(verbs) == 0) {
    print("No verbs found.")
    return(verbs)
  } else {
    for (verb in verbs) {
      verb_actors <- get_all_actors(verb$target_tokens, locations_accepted)
      verb_actors_with_locations <- add_locations_to_actor_list(verb_actors, locations_accepted)
      verb$actors <- verb_actors_with_locations
      retlist[[length(retlist) + 1]] <- verb
    }
    return(retlist)
  }
}


get_verbs_dict_actor_count <- function(verbs_final) {
  actor_count <- 0
  for (verb in verbs_final) {
    if (typeof(verb$actors) != "list") {
      verb_actor_count <- 0
    } else {
      verb_actor_count <- length(verb$actors)
    }
    actor_count <- actor_count + verb_actor_count
  }
  return(actor_count)
}


# find indices of all locations in all verbs. check if actor indices are same, and if so
# discard the actor
filter_pubdata_actors <- function(verbs_final) {
  # if verbs_final has no actors, just return it as it was
  if (get_verbs_dict_actor_count(verbs_final) < 1) {
    return(verbs_final)
  }

  location_indices <- double()
  for (verb in verbs_final) {
    for (actor in verb$actors) {
      if (length(actor$location$location_index) > 0) {
        location_indices <- c(actor$location$location_index, location_indices)
      }
    }
  }
  location_indices <- unique(location_indices)
  
  verbs_filtered <- list()
  for (verb in verbs_final) {
    new_actors <- list()
    for (actor in verb$actors) {
      if (!(actor$actor_index %in% location_indices)) {
        new_actors[[length(new_actors) + 1]] <- actor
      }
    }
    if (length(new_actors) > 0) {
      new_verb <- verb
      new_verb$actors <- new_actors
      verbs_filtered[[length(verbs_filtered) + 1]] <- new_verb
    }
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

