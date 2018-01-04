token_is_single_cap <- function(token) {
  if (grepl(" [A-Z] ", token)) {
    print(token)
  }
}