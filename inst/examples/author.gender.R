# TODO improve: many names are missing gender now

print("Estimate author genders")
# Extract the first names, assuming that the author name is
# in the form "Last, First"
first <- pick_firstname(df$author_name, format = "last, first")
g <- get_gender(first)
df$author_gender <- g$gender

print("Write the mapped author genders in tables")
tab <- data.frame(list(name = first, gender = df[, "author_gender"]))
tab <- tab[!is.na(tab$gender), ] # Remove NA gender
write_xtable(subset(tab, gender == "male"), file = paste(output.folder, "gender_male.csv", sep = ""))
write_xtable(subset(tab, gender == "female"), file = paste(output.folder, "gender_female.csv", sep = ""))
write_xtable(unname(pick_firstname(df$author_name)[is.na(df$author_gender)]), file = paste(output.folder, "gender_unknown.csv", sep = ""))

