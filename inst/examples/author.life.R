# TODO make a tidy cleanup function to shorten the code here
print("Polish author life years")
tmp <- polish_years(df.orig$author_date)
df$author_birth <- tmp$start
df$author_death <- tmp$end

print("Write unrecognized author life years to file together count stats")
tmp <- write_xtable(unname(unlist(df.orig[which(is.na(df$author_birth) & is.na(df$author_death)),]$author_date)), paste(output.folder, "discarded_author_life.csv", sep = ""))

# ------------------------------

print("Remove suspicious cases (very few) where birth is later than death.")
# In practice this concerns cases such as 1635-71 which should be 1635-1671
# but we have only two cases now so ignore this
inds <- which(df$author_birth > df$author_death)
df$author_birth[inds] <- NA
df$author_death[inds] <- NA

print("Author birth")
# For each author, list given birth years
births <- lapply(split(df$author_birth, df$author_name), unique)
# Authors with unique birth year (some entries may be NAs)
unique.birth <- names(which(sapply(births, function (x) {length(unique(na.omit(x)))}) == 1))

# For authors with a unique birth, use this birth year also for documents where
# birth year not given in the raw data
dfs <- df[, c("author_name", "author_birth")]
dfs <- dfs[!duplicated(dfs), ]
dfs <- dfs[rowMeans(is.na(dfs)) == 0,]
dfs <- dfs[dfs$author_name %in% unique.birth,]
births <- dfs$author_birth; names(births) <- dfs$author_name
inds <- is.na(df$author_birth)
df$author_birth[inds] <- births[df$author_name][inds]

# Birh year not known (NA)
births <- lapply(split(df$author_birth, df$author_name), unique)
na.birth <- names(which(is.na(births)))

# Authors with many birth years
births <- lapply(split(df$author_birth, df$author_name), unique)
many.births <- lapply(births[names(which(sapply(births, function (x) {length(unique(na.omit(x)))}) > 1))], function (x) {sort(unique(na.omit(x)))})

# ----------------------------------------------------

print("Author death")
# For each author, list given death years
deaths <- lapply(split(df$author_death, df$author_name), unique)
# Authors with unique death year (some entries may be NAs)
unique.death <- names(which(sapply(deaths, function (x) {length(unique(na.omit(x)))}) == 1))
# For authors with a unique death, use this death year also for documents where
# death year not given in the raw data
dfs <- df[, c("author_name", "author_death")]
dfs <- dfs[!duplicated(dfs), ]
dfs <- dfs[rowMeans(is.na(dfs)) == 0,]
dfs <- dfs[dfs$author_name %in% unique.death,]
deaths <- dfs$author_death; names(deaths) <- dfs$author_name
inds <- is.na(df$author_death)
df$author_death[inds] <- deaths[df$author_name][inds]

# Death year not known (NA)
deaths <- lapply(split(df$author_death, df$author_name), unique)
na.death <- names(which(is.na(deaths)))

# Authors with many death years
deaths <- lapply(split(df$author_death, df$author_name), unique)
many.deaths <- lapply(deaths[names(which(sapply(deaths, function (x) {length(unique(na.omit(x)))}) > 1))], function (x) {sort(unique(na.omit(x)))})

# ---------------------------------------------------------------------------


