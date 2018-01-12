
clean_publisher_datastring_brackets <- function(publisher_data_string) {
  publisher_data_string <- gsub("(\\()([1-9])", " no\\. \\2", publisher_data_string)
  publisher_data_string <- gsub("([1-9])(\\))", "\\1, ", publisher_data_string)
  publisher_data_string <- gsub("\\(", ", ", publisher_data_string)
  publisher_data_string <- gsub("\\)", ", ", publisher_data_string)
  publisher_data_string <- gsub(", *,", ", ", publisher_data_string)
  publisher_data_string <- gsub(", *$", "", publisher_data_string)
  return(publisher_data_string)
}


clean_publisher_datastring <- function(publisher_data_string) {
  publisher_data_string <- gsub("\\[sic\\]", "", publisher_data_string)
  publisher_data_string <- gsub("^-+", "", publisher_data_string)
  publisher_data_string <- gsub("([^-])(--)([^-]|$)", "\\1; \\3", publisher_data_string)
  publisher_data_string <- gsub("\\b([A-Z])\\[([a-z]+)\\]\\. ", "\\1\\2 ", publisher_data_string, ignore.case = FALSE)
  publisher_data_string <- gsub("\\[", "", publisher_data_string)
  publisher_data_string <- gsub("\\]", "", publisher_data_string)
  
  # brackets
  publisher_data_string <- clean_publisher_datastring_brackets(publisher_data_string)
  
  # printed
  publisher_data_string <- gsub("printen ", "printed ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("printend ", "printed ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("Priuted ", "printed ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("Prin-ed ", "printed ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("Prtnted ", "printed ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("pPrinted ", "printed ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("Sold ", "sold ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("re-printed ", "reprinted ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("printed, and ", "printed and ", publisher_data_string, ignore.case = TRUE)
  
  # published
  publisher_data_string <- gsub("\\bpubd\\. ", "published ", publisher_data_string, ignore.case = TRUE)
  
  # for, by, and
  publisher_data_string <- gsub("^(for){1}\\.? ", "printed for ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bfor\\. ", "for ", publisher_data_string, ignore.case = FALSE)
  publisher_data_string <- gsub("^by ", "printed by ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bby\\. ", "by ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\band\\. ", "and ", publisher_data_string, ignore.case = FALSE)
  publisher_data_string <- gsub("\\b&\\. ", "& ", publisher_data_string, ignore.case = FALSE)
  
  # location prefixes
  publisher_data_string <- gsub("\\bnext door", "_next_door_", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bdirectly opposite to ", "_directly_opposite_to_ ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bdirectly opposite", "_directly_opposite_", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bopposite to ", "_opposite_to_ ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bcorner of ", "_corner_of_ ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bover against", "_over_against_", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bover-against", "_over_against_", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\boveragainst", "_over_against_", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bnorth-side of ", "_north-side_of_ ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bbooksellers of ", "booksellers _locpref_of_ ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bback of ", "back _locpref_of_ ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bfront of ", "front _locpref_of_ ", publisher_data_string, ignore.case = TRUE)
  
  # anno domini
  publisher_data_string <- gsub("\\banno", "anno", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bann\\. ", "anno ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bdo\\. ", "domini ", publisher_data_string, ignore.case = TRUE)
  
  # roles
  publisher_data_string <- gsub("esq", "esq", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bmap and print-seller\\b", " _map_and_print_seller_ ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\b(his)? ?(majesty)?'?s? law.?printers\\b", " _law_printers_ ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\b(law printer)+ ?(to)? ?(the)? ?(king)?'?s? ?(most excellent)? ?(majesty)?\\b", " _law_printer_ ",
                                publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\b(law)+( |-)?(printers)+ ?(to)? ?(the)? ?(king)?'?s? ?(most excellent)? ?(majesty)?\\b", " _law_printers_ ",
                                publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\b(law)+( |-)?(bookseller)+", " law-bookseller ",
                                publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\b(his)? ?(royal highness)+", " _royal_highness_ ",
                                publisher_data_string, ignore.case = TRUE)
  # "the Duke of Clarence"
  publisher_data_string <- gsub("\\b(duke)+ (of)+ ([A-Z]+[a-z\\.'`]+)( |\\W)", " _duke_of_ _\\3 \\4",
                                publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\b(his)? ?(late)? ?(Royal Highness)? ?(the)? ?(Prince of Wales)+\\b", " _prince_of_wales_ ",
                                publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bbook sellers( |\\b)", " booksellers ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bco(\\.)?( |\\b)", " booksellers ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bcompany of stationers\\b", " _company_of_stationers_ ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bcompany(\\b| )", " company ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("\\bnews( |-)?carriers(\\b| )", " news-carriers ", publisher_data_string, ignore.case = TRUE)

  # -- names, initials --
  # "and H . Mozley," <- bring separated initials and full stops together again.
  publisher_data_string <- gsub("([A-Z]){1} \\. ", "\\1\\. ", publisher_data_string)
  # nonseparated intials: "J.J. Kugelberg"
  publisher_data_string <- gsub("\\b([A-Z])\\.([A-Z])\\. ", "\\1\\. \\2\\. ", publisher_data_string)
  
  # street number prefixes (no.)
  publisher_data_string <- gsub("\\bnumb\\. ", "\\no\\. ", publisher_data_string, ignore.case = TRUE)
  # some street numbers dont have a "." in the as in "No. 11 Some-Street" Add that.
  publisher_data_string <- gsub("( no )+(\\d){1}", " no. \\2", publisher_data_string, ignore.case = TRUE)
  # make all "no." lowercase
  publisher_data_string <- gsub(" no\\.", " no\\.", publisher_data_string, ignore.case = TRUE)
  # and some dont have a space between the "no." and the number: "No.240, Temple Bar"
  publisher_data_string <- gsub("(no\\.){1}(\\S){1}", "\\1 \\2", publisher_data_string)
  publisher_data_string <- gsub("  ", " ", publisher_data_string)
  # all "printed " to lowercase 
  publisher_data_string <- gsub("printed ", "printed ", publisher_data_string, ignore.case = TRUE)
  publisher_data_string <- gsub("in the year", "_in_the_year_", publisher_data_string, ignore.case = TRUE)
  return(publisher_data_string)
}


token_is_roman_numeral <- function(token) {
  if (nchar(token) < 4) {
    return(FALSE)
  } else if (grepl("^[IVXLCDM\\.]+$", token)) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}


token_is_arab_numeral <- function(token) {
  if (grepl("^[0123456789\\.]+$", token)) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}


# string has been sanitized before this (clean_publisher_datastring)
tokenize_publisher_string <- function(hit_object, fullstop_keeplist) {
  # separate commas, etc as tokens too
  hit_object <- gsub("([,:;])", " \\1 ", hit_object)
  hit_object <- gsub("( )+", " ", hit_object)
  tokenized_string <- strsplit(hit_object, " ")[[1]]
  # discard empty tokens
  tokenized_string <- tokenized_string[tokenized_string != ""]
  ret_tokens <- list()
  # separate full stops:
  for (token in tokenized_string) {
    if (grepl("\\.$", token) & nchar(token) == 1) {
      ret_tokens[length(ret_tokens) + 1] <- ";"
    } else if (grepl("\\.$", token) & nchar(token) > 1) {
      rom_num <- token_is_roman_numeral(token)
      ara_num <- token_is_arab_numeral(token)
      in_keepwords <- token %in% fullstop_keeplist
      keep_stop <- (rom_num | ara_num | in_keepwords)
      if (!keep_stop) {
        token_minus_stop <- substr(token, 1, nchar(token) - 1)
        ret_tokens[length(ret_tokens) + 1] <- token_minus_stop
        ret_tokens[length(ret_tokens) + 1] <- ";"
      } else {
        ret_tokens[length(ret_tokens) + 1] <- token
      }
    } else {
      ret_tokens[length(ret_tokens) + 1] <- token
    }
  }
  ret_tokens <- unlist(ret_tokens)
  return(ret_tokens)
}


token_is_initial <- function(token) {
  if ((grepl("^[A-Z]{1}\\.{1}", token)) &
      (nchar(token) == 2)) {
    return(TRUE)
  } else if ((grepl("[B-Z]{1}", token)) & (nchar(token) == 1)) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

first_token_is_verb <- function(tokens_and_types) {
  if (is.na(tokens_and_types[[1]]$type)) {
    return(FALSE)
  }
  if (tokens_and_types[[1]]$type == "verb") {
    return(TRUE)
  } else {
    return(FALSE)
  }
}


token_is_name <- function(token) {
  # should cover: "John", "M'Kenzie", "M`alister"
  if (grepl("^[A-Z]{1}[`']?[A-Z]?[a-z]{1,}$", token)) {
    return(TRUE)
  } else if (grepl("^[A-Z]{1}[a-z]{1,}", token)) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}


get_token_type <- function(token, tokentype_data) {
  # token_type <- "other"
  token_lower <- tolower(token)
  
  location_prefixes <- tokentype_data[tokentype_data$type == "loc_prefix",]$token
  enders <- tokentype_data[tokentype_data$type == "ender",]$token
  verbs <- tokentype_data[tokentype_data$type == "verb",]$token
  person_roles <- tokentype_data[tokentype_data$type == "role",]$token
  person_prefixes <- tokentype_data[tokentype_data$type == "person_prefix",]$token
  person_titles <- tokentype_data[tokentype_data$type == "person_title",]$token
  person_attributes <- tokentype_data[tokentype_data$type == "person_attribute",]$token 
  commas <- list(",")
  articles <- list("the", "an", "a")
  joiners <- list("and", "&")
  location_components <- tokentype_data[tokentype_data$type == "location_component",]$token
  timestamp_prefixes <- tokentype_data[tokentype_data$type == "timestamp_prefix",]$token
  
  if (is.na(token)) {
    token_type <- NA
  } else if (token_lower %in% person_roles) {
    token_type <- "person_role"
  } else if (token_lower %in% verbs) {
    token_type <- "verb"
  } else if (token_lower %in% commas) {
    token_type <- "comma"
  } else if (token_lower %in% enders) {
    token_type <- "ender"
  } else if (token_lower %in% person_prefixes) {
    token_type <- "person_prefix"
  } else if (token_lower %in% person_titles) {
    token_type <- "person_title"
  } else if (token_lower %in% location_prefixes) {
    token_type <- "location_prefix"
  } else if (token_lower %in% articles ) {
    token_type <- "article"
  } else if (token_lower %in% joiners) {
    token_type <- "joiner"
  } else if (token %in% location_components) {
    token_type <- "location_component"
  } else if (token %in% person_attributes) {
    token_type <- "person_attribute"
  } else if (token %in% timestamp_prefixes) {
    token_type <- "timestamp_prefix"
  } else if (token_is_initial(token)) {
    # Look for initials. -> Capital + full stop
    token_type <- "initial"
  } else if (token_is_name(token)) {
    # Look for names. -> Capital + lowercase
    token_type <- "name"
  } else if (token_is_roman_numeral(token)) {
    token_type <- "roman_numeral"
  } else if (token_is_arab_numeral(token)) {
    token_type <- "arab_numeral"
  } else {
    token_type <- "other"
  }
  return(token_type)
}


get_token_unified <- function(token, tokentype_data) {
  if (token %in% tokentype_data$token) {
    token_unified <- tokentype_data[tokentype_data$token == token,]$unified
    if (token_unified == "") {
      return(NULL)
    } else {
      return(token_unified)
    }
  } else {
    return(NULL)
  }
}


get_tokens_types <- function(tokens, tokentype_data) {
  results_list <- vector("list", length(tokens))
  max_i <- length(tokens)
  i <- 1
  while (i <= max_i) {
    token <- tokens[[i]]
    token_type <- get_token_type(token, tokentype_data)
    token_unified <- get_token_unified(token, tokentype_data)
    if (!is.null(token_unified)) {
      token <- token_unified
    }
    results_list[[i]] <- list('token' = token, 'type' = token_type, 'order' = i)
    i = i + 1
  }
  return(results_list)
}

