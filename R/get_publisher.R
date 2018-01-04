

get_publisher <- function(publisher_data_string) {
  
  # 1. clean string. "[" -> "" etc
  # 2. partition string. [printed for], [name], [location], etc...
  # 3. output results as dict: 'printed_for_person': "Smith, John", 'printed_for_place': ""
  # printed by, printed for, sold by, sold for
  # note:
  # can have multiple people/entities. multiple places. multiple types of printing
  # 

  clean_publisher_datastring <- function(publisher_data_string) {
    publisher_data_string <- gsub("\\[sic\\]", "", publisher_data_string)
    publisher_data_string <- gsub("\\[", "", publisher_data_string)
    publisher_data_string <- gsub("\\]", "", publisher_data_string)
    publisher_data_string <- gsub("printen ", "printed ", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("printend ", "printed ", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("Priuted ", "printed ", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("Prin-ed ", "printed ", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("Prtnted ", "printed ", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("Sold ", "sold ", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("re-printed ", "reprinted ", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("printed, and ", "printed and ", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("^for ", "printed for ", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("^by ", "printed by ", publisher_data_string, ignore.case = TRUE)
    # some street numbers dont have a "." in the as in "No. 11 Some-Street" Add that.
    publisher_data_string <- gsub("( no )+(\\d){1}", " no. \\2", publisher_data_string, ignore.case = TRUE)
    publisher_data_string <- gsub("  ", " ", publisher_data_string)
    publisher_data_string <- paste0("stringstart ", publisher_data_string)
    return(publisher_data_string)
  }
  
    
  get_verb_hits <- function(publisher_data_string) {

    publisher_data_string_lower <- tolower(publisher_data_string)
    verbs <- list("stringstart",
                  "published by",
                  "printed for",
                  "printed by",
                  "sold by",
                  "sold at",
                  "printed and sold by",
                  "printed by and for",
                  "reprinted for",
                  "reprinted at"
                  # "printed in the year",
                  # "in the year"
                  )
    verb_hits <- list()
    verbs_hit <- 0
    
    for (verb in verbs) {
      verb_pos <- as.integer(regexpr(verb, publisher_data_string_lower))
      if (verb_pos != -1) {
        verbs_hit <- verbs_hit + 1
        hit_target <- substr(publisher_data_string,
                             nchar(verb) + (verb_pos),
                             nchar(publisher_data_string))

        hit_target <- trimws(hit_target)
        
        # check if object has verbs still, cut at first
        first_verb_ind <- 1000
        for (verb_b in verbs) {
          obj_lower <- tolower(hit_target)
          object_verb_ind <- as.integer(regexpr(verb_b, obj_lower))
          if ((object_verb_ind != -1) & (object_verb_ind < first_verb_ind)) {
            print(verb_b)
            first_verb_ind <- object_verb_ind
          }
        }
        if (first_verb_ind != 1000) {
          hit_target <- trimws(substr(hit_target, 1, (first_verb_ind - 1)))
        }
        
        verb_results <- list(verb = verb,
                             pos = verbs_hit,
                             verb_char_start_pos = verb_pos,
                             object = hit_target)
        if (verb_results$object == "" & verb_results$verb == "stringstart") {
          verbs_hit <- verbs_hit - 1
          next
        } else {
          verb_hits[[verbs_hit]] <- verb_results
        }
      }
    }
    
    # If no verbs hit and string had something in it, add no_verb -verb with whole string
    
    if (verbs_hit == 0 & nchar(publisher_data_string) > 0 & !(is.na(publisher_data_string))) {
      verb_results <- list(verb = "no_verb_found",
                           pos = 1,
                           verb_char_start_pos = 1,
                           object = publisher_data_string)
      verb_hits[[1]] <- verb_results
    }
    
    return(verb_hits)
  }

    
  get_token_type <- function(token) {
    token_type <- "other"
    token_lower <- tolower(token)
    
    if (token == ",") {
      token_type <- "comma"
      return(token_type)
    }
    
    if (token == ";") {
      token_type <- "ender"
      return(token_type)
    }
    
    if (token_lower == "mess." |
        token_lower == "mrs." |
        token_lower == "messrs." ) {
      token_type <- "person_prefix"
      return(token_type)
    }
    
    if (token_lower == "in" |
        token_lower == "on" |
        token_lower == "near" |
        token_lower == "at" |
        token_lower == "opposite" |
        token_lower == "facing" |
        token_lower == "no." |
        token_lower == "(no.") {
      token_type <- "location_prefix"
      return(token_type)
    }

    if (token_lower == "the" |
        token_lower == "an" |
        token_lower == "a" ) {
      token_type <- "article"
      return(token_type)
    }
    
    if (token_lower == "and" |
        token_lower == "&") {
      token_type <- "joiner"
      return(token_type)
    }

    # Look for initials. -> Capital + full stop
    if ((grepl("^[A-Z]{1}\\.{1}", token)) &
        (nchar(token) == 2)) {
      token_type <- "initial"
      return(token_type)
    }
    
    # Look for names. -> Capital + lowercase
    if (grepl("^[A-Z]{1}[a-z]{1,}", token)) {
      token_type <- "name"
      return(token_type)
    }

    return(token_type)
  }
  
  
  tokenize_hit_object <- function(hit_object) {
    # separate commas, etc as tokens too
    # now only separates out the last one if there are multiple chars in row
    hit_object <- gsub("([,:;])", " \\1 ", hit_object)
    hit_object <- gsub("( )+", " ", hit_object)

    tokenized_string <- strsplit(hit_object, " ")[[1]]
    # discard empty tokens
    tokenized_string <- tokenized_string[tokenized_string != ""]
    return(tokenized_string)
  }

  
  get_token_type_string <- function(token_types) {
    # making a string from token type initials to search for substrings.
    # this is a very silly hack. -vv
    token_types_initials <- lapply(token_types,
                                   function(x) {
                                     substr(x, 1, 1)
                                   }
    )
    token_type_string <- paste(token_types_initials, sep = "", collapse = "")
  }
  
  
  add_tokens_and_types_to_hits <- function(verb_hits) {
    i_max <- length(verb_hits)
    i <- 1
    while (i <= i_max) {
      tokens <- tokenize_hit_object(verb_hits[[i]]$object)
      token_types <- lapply(tokens, get_token_type)
      verb_hits[[i]]$tokens <- tokens
      verb_hits[[i]]$token_types <- token_types
      verb_hits[[i]]$token_type_string <- get_token_type_string(token_types)
      i <- i + 1
    }
    return(verb_hits)
  }

  
  get_next_nametoken_inds <- function(token_type_string, verbtype) {
    
    if (nchar(token_type_string) == 0) {
      return(list(inds = -1,
                  name_type = "none"))
    }
    # name_type <- "unknown"
    
    # look for different name sequences at start of string

    # ignore time types for now    
    if (verbtype == "time") {
      cut_at <- nchar(token_type_string)
      ttsub = substr(token_type_string, 1, cut_at)
      return(list(inds = 1:cut_at,
                  name_type = "time",
                  token_type_substring = ttsub))
    }
    # verb type is location and has name
    if (verbtype == "loc") {
      if (grepl("^.*[n]+", token_type_string)) {
        # get location to cut tokens. cuts at ; or max length
        cut_at <- gregexpr(pattern = "[e]",token_type_string)[[1]][1]
        if (cut_at == -1) {
          cut_at <- nchar(token_type_string)
        } else {
          cut_at <- cut_at - 1
        }
        ttsub = substr(token_type_string, 1, cut_at)
        return(list(inds = 1:cut_at,
                    name_type = "location",
                    token_type_substring = ttsub))
      }
    }

    # starting with location prefix and has name
    if (grepl("^l.*n+", token_type_string)) {
      # get location to cut tokens. cuts at ; or max length
      cut_at <- gregexpr(pattern = "[e]",token_type_string)[[1]][1]
      if (cut_at == -1) {
        cut_at <- nchar(token_type_string)
      } else {
        cut_at <- cut_at - 1
      }
      ttsub = substr(token_type_string, 1, cut_at)
      return(list(inds = 1:cut_at,
                  name_type = "location",
                  token_type_substring = ttsub))
    }
    
    # initial, initial, initial/name
    if (grepl("^ii[in][^in]", token_type_string)) {
      ttsub = substr(token_type_string, 1, 3)
      return(list(inds = 1:3,
                  name_type = "person",
                  token_type_substring = ttsub))
    }

    # initial, initial/name
    if (grepl("^i[in][^in]", token_type_string)) {
      ttsub = substr(token_type_string, 1, 2)
      return(list(inds = 1:2,
                  name_type = "person",
                  token_type_substring = ttsub))
    }

    # name 1+ times and anything notname
    if (grepl("^n+[^n]", token_type_string)) {
      # find last n of string
      cut_at <- gregexpr(pattern = "n[^n]", token_type_string)[[1]][1]
      ttsub = substr(token_type_string, 1, cut_at)
      return(list(inds = 1:cut_at,
                  name_type = "unknown",
                  token_type_substring = ttsub))
    }
    
    # name/initial 1+ times at end
    if (grepl("^[ni]+$", token_type_string)) {
      # find last n of string
      cut_at <- gregexpr(pattern = "n$", token_type_string)[[1]][1]
      ttsub = substr(token_type_string, 1, cut_at)
      return(list(inds = 1:cut_at,
                  name_type = "unknown",
                  token_type_substring = ttsub))
    }

    return(list(inds = -1,
                name_type = "none",
                token_type_substring = ""))
  }

  
  get_verbtype <- function(verb) {
    if (trimws(substr(verb, nchar(verb) - 2, nchar(verb))) == "at") {
      return("loc")
    } else if (verb == "printed in the year" || verb == "in the year" ) {
      return("time")
    } else {
      return("unk")
    }
  }
  
    
  get_names_from_verbhit <- function(verbhit, placenames_checklist) {
    verb <- verbhit$verb
    tokens <- verbhit$tokens
    token_type_string <- verbhit$token_type_string
    verbtype <- get_verbtype(verb)
    
    names_retlist <- list()
    names_found <- 0

    # locations can refer to persons by index
    # add items waiting for location to this vector
    items_waiting_for_attribute <- c()
    
    next_namedata <- get_next_nametoken_inds(token_type_string, verbtype)
    next_nameinds <- next_namedata$inds
    next_nametype <- next_namedata$name_type
    
    # TODO - following is not DRY. refractor
    # creating the list should be a function with
    # input:  next_namedata, tokens, items_waiting_for_attribute
    # output: name_string, name_type, name_prefix, person_ids
    while (next_nameinds[[1]] != -1) {
      
      name_string <- paste0(tokens[next_nameinds], collapse = " ")
      names_found <- names_found + 1
      
      if (next_nametype == "location") {
        loc_namestart <- gregexpr("n+", next_namedata$token_type_substring)[[1]][1]
        print(next_namedata)
        print(next_namedata$token_type_substring)
        print(loc_namestart)
        print(length(next_nameinds))
        name_string <- paste0(tokens[loc_namestart:length(next_nameinds)], collapse = " ")
        loc_prefix_string <- paste0(tokens[1:loc_namestart - 1], collapse = " ")
        # clean leading and trailing rubbish from prefix string
        loc_prefix_string_clean <- sub("^[ ,\\(\\)]+|[ ,\\(\\)]+$", "" ,loc_prefix_string)
        loc_prefix_string_clean <- sub("^[ ,\\(\\)]+|[ ,\\(\\)]+$", "" ,loc_prefix_string_clean)
        if (is.null(loc_prefix_string_clean)) {
          loc_prefix_string_clean <- NA
        }
        names_retlist[[names_found]] <- list(name = name_string,
                                             type = next_nametype,
                                             prefix = loc_prefix_string_clean,
                                             person_inds = items_waiting_for_attribute,
                                             verb = verb)
      } else if (names_found == 1 &
                 next_nametype == "unknown" &
                 !(name_string %in% placenames_checklist)) {
        next_nametype <- "person"
        # names_found <- names_found + 1
        items_waiting_for_attribute <- append(items_waiting_for_attribute, names_found)
        names_retlist[[names_found]] <- list(name = name_string,
                                             type = next_nametype,
                                             verb = verb)
      } else if (next_nametype == "unknown" & 
                 name_string %in% placenames_checklist) {
        next_nametype <- "location"
        # names_found <- names_found + 1
        names_retlist[[names_found]] <- list(name = name_string,
                                             type = next_nametype,
                                             prefix = NA,
                                             person_inds = items_waiting_for_attribute,
                                             verb = verb)
      } else {
        # names_found <- names_found + 1
        items_waiting_for_attribute <- append(items_waiting_for_attribute, names_found)
        names_retlist[[names_found]] <- list(name = name_string,
                                             type = next_nametype,
                                             verb = verb)
      }
      
      # remove processed tokens
      tokens <- tokens[length(next_nameinds) + 1:length(tokens)]
      token_type_string <- 
        substr(token_type_string, (length(next_nameinds) + 1), nchar(token_type_string))

      # if next token is of "ender" type or blank, clear attribute waitinglist
      token_type_string_next_token <- substr(token_type_string, 1, 1)
      if (token_type_string_next_token == "e" |
          token_type_string_next_token == "") {
        items_waiting_for_attribute <- c()
      }
      
      # strip leading commas, enders, joiners and others from next tokens to process
      token_type_string_pre_len <- nchar(token_type_string)
      token_type_string <- sub("^[cejo]+", "", token_type_string)
      tokens <- tokens[(1 + token_type_string_pre_len - nchar(token_type_string)):length(tokens)]

      # get next tokenset
      next_namedata <- get_next_nametoken_inds(token_type_string, verbtype)
      next_nameinds <- next_namedata$inds
      next_nametype <- next_namedata$name_type            
    }

    return(names_retlist)
  }

  
  get_single_verbhit_results <- function(single_verbhit, locations_accepted) {
    names_from_verbhit <-
      get_names_from_verbhit(verbhit = single_verbhit,
                             placenames_checklist = locations_accepted)
    return(names_from_verbhit)
  }

  
  get_verbhit_results <- function(verb_hits_with_tokens, locations_accepted) {
    number_of_verbhits <- length(verb_hits_with_tokens)
    # verbhit_results <- vector("list", number_of_verbhits)
    
    if (number_of_verbhits > 0) {

      i <- 1
      while (i <= number_of_verbhits) {
        single_verbhit <- verb_hits_with_tokens[[i]]
        single_verbhit_results <-
          get_single_verbhit_results(single_verbhit, locations_accepted)
        verb_hits_with_tokens[[i]]$names_found <- single_verbhit_results
        i <- i + 1
      }

    }
    return(verb_hits_with_tokens)
  }

  
  get_number_of_names_found <- function(verbhit_results) {
    if (length(verbhit_results) == 0) {
      return(0)
    }
    names_n <- 0
    for (result_row in verbhit_results) {
      names_n <- names_n + length(result_row$names_found)
    }
    return(names_n)
  }

  
  get_actor_type <- function(verb) {
    switch(verb,
           "stringstart" = "unk",
           "published by" = "publish",
           "printed for" = "print",
           "printed by" = "print",
           "sold by" = "sell",
           "sold at" = "sell",
           "printed and sold by" = "print_sell",
           "printed by and for" = "print",
           "reprinted for" = "print",
           "reprinted at" = "print",
           "printed in the year" = "unk"
    )
  }
    
  convert_verbhit_results_to_dataframe <- function(verbhit_results, publisher_data_string) {
    number_of_names_found <- get_number_of_names_found(verbhit_results)
    
    if (number_of_names_found == 0) {
      ret_dataframe <- data.frame(publisher_orig_data = publisher_data_string,
                                  verb = NA,
                                  target_string = verbhit_results[[1]]$object,
                                  person = NA,
                                  person_type = NA,
                                  place = NA,
                                  place_prefix = NA,
                                  actor_type = NA)
      return(ret_dataframe)
    }
    
    ret_data <- data.frame(publisher_orig_data = character(),
                           verb = character(),
                           target_string = character(),
                           person = character(),
                           person_type = character(),
                           place = character(),
                           place_prefix = character(),
                           actor_type = character())
    
    for (result_row in verbhit_results) {
      if (length(result_row$names_found) == 0) {
        next
      }
      names_found <- result_row$names_found
      
      # get locations
      # locations_found <- list()
      nonreferring_locations <- list()
      personref_locations <- vector("list", length = length(names_found))
      for (found_name in names_found) {
        if (found_name$type == "location") {
          if (length(found_name$person_inds) < 1) {
            nonreferring_locations[[length(nonreferring_locations) + 1]] <- found_name
          } else {
            for (person_ref in found_name$person_inds) {
              personref_locations[[person_ref]] <- found_name
            }
          }
        }
      }
      
      if (length(nonreferring_locations) > 0) {
        for (found_name in nonreferring_locations) {
          data_row <- data.frame(publisher_orig_data = publisher_data_string,
                                 verb = found_name$verb,
                                 target_string = result_row$object,
                                 person = NA,
                                 person_type = NA,
                                 place = found_name$name,
                                 place_prefix = found_name$prefix,
                                 actor_type = get_actor_type(found_name$verb))
          ret_data <- rbind(ret_data, data_row)
        }        
      }
      
      i <- 1
      for (found_name in names_found) {
        if (found_name$type == "person" || found_name$type == "unknown") {
          linked_location <- personref_locations[[i]]
          if (is.null(linked_location)) {
            linked_location <- list('name' = NA, 'prefix' = NA)
          }
          data_row <- data.frame(publisher_orig_data = publisher_data_string,
                                 verb = found_name$verb,
                                 target_string = result_row$object,
                                 person = found_name$name,
                                 person_type = found_name$type,
                                 place = linked_location$name,
                                 place_prefix = linked_location$prefix,
                                 actor_type = get_actor_type(found_name$verb))
          ret_data <- rbind(ret_data, data_row)
        }
        i <- i + 1
      }
    }
    
    return(ret_data)
  }
  

  # detect placenames
  # detect occupation names
  # detect person prefixes

  # "printed by Wilson, Spence, and Mawman; sold by G. G. J. and J. Robinson, T. Cadell, B. White, J. Robson, and J. Murray, London; and by all the booksellers in York"
  # "printed for J. Johnson, St. Paul's Church-Yard"
  # "printed for Dunlop & Wilson, Booksellers"
  # "printed by Peter Hoey, (no. 1.) Skinner-Row"
  # "printed by J. Moore, No. 45, College-Green"
  # locations:
  # "Philadelphia printed. Dublin: re-printed for J. Milliken"
  # "printed by Joseph Cooper; and sold by John Murray, No. 30, Fleet Street; J. Johnson, St. Paul's Church Yard; and by William Creech, in Edinburgh"
  # "printed and sold by B. Thorn, Bookseller; and Mess. Richardson and Urquhart, London"
  # "printed for John Brindley, Bookbinder to the Majesty, at the King's Arms in New-Bond-Street"
  # "Printed by C. Smith in Holborn"
  # "printed for Hawes, Clarke and Collins, in Pater-Noster Row"
  # "printed for E. Cooke, at the Royal Exchange"
  # "printed for T. Becket, Pall Mall"
  # "printed for D. I. Eaton, at The Cock and Swine, No. 74, Newgate-Street"
  
  locations_accepted <- read.csv("inst/extdata/publisher_locations.csv", header = TRUE)$location

  # working: 
  # publisher_data_string <- "printed by Joseph Cooper; and sold by John Murray, No. 30, Fleet Street; J. Johnson, St. Paul's Church Yard; and by William Creech, in Edinburgh"
  # publisher_data_string <- "printed for E. Cooke, at the Royal Exchange"  
  # publisher_data_string <- "Printed by C. Smith in Holborn"
  # publisher_data_string <- "printed by Peter Hoey, (no. 1.) Skinner-Row"
  # publisher_data_string <- "printed for Hawes, Clarke and Collins, in Pater-Noster Row"
  # publisher_data_string <- "Richard Lee, No. 47, Hay-Market"
  # publisher_data_string <- "for T. Smith"
  # publisher_data_string <- "re-printed at the Post-Office Coffee-House, in Fish-shamble street"
  
  # TODO - separate by/at/for after verb to find out if name is location/person
  # TODO - rewrite logic: tokenize first, find verbs then
  # TODO - type of results if no verb detected?
  print(publisher_data_string)  
  cleaned_publisher_data_string <- 
    clean_publisher_datastring(publisher_data_string)

  verb_hits <- get_verb_hits(cleaned_publisher_data_string)
  verb_hits_with_tokens <- add_tokens_and_types_to_hits(verb_hits)
  verbhit_results <- get_verbhit_results(verb_hits_with_tokens, locations_accepted)
  resultsdf <- convert_verbhit_results_to_dataframe(verbhit_results, publisher_data_string)
  
  # TODO - return verbhit results as dataframe
  # TODO - argument to main function: return data type

  return(resultsdf)
}


get_publishers <- function(publisher_data_string_vec) {
  return_df <- data.frame(publisher_orig_data = character(),
                          verb = character(),
                          target_string = character(),
                          person = character(),
                          person_type = character(),
                          place = character(),
                          place_prefix = character())
  for (publisher_data_string in publisher_data_string_vec) {
    result_df <- get_publisher(publisher_data_string)
    return_df <- rbind(return_df, result_df)
  }
  return(return_df)
}

# publisher_data_string <- "printed by Joseph Cooper; and sold by John Murray, No. 30, Fleet Street; J. Johnson, St. Paul's Church Yard; and by William Creech, in Edinburgh"
# publisher_data_string <- "printed for E. Cooke, at the Royal Exchange"  
# publisher_data_string <- "Printed by C. Smith in Holborn"
# publisher_data_string <- "printed by Peter Hoey, (no. 1.) Skinner-Row"
# publisher_data_string <- "printed for Hawes, Clarke and Collins, in Pater-Noster Row"
# publisher_data_string <- "Richard Lee, No. 47, Hay-Market"
# publisher_data_string <- "for T. Smith"
# publisher_data_string <- "re-printed at the Post-Office Coffee-House, in Fish-shamble street"

# not working
# "printed by H. Smith, No. 4, Red-Lion-Court, Fleet-Street; published by Ballard, Chandos-Street; Evans and Bone, No. 120, Holborn-Hill; and may be had of every bookseller in town and country"
