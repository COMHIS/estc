# TODO make a tidy cleanup function to shorten the code here

print("Polish author life years")
df$author.birth <- polish_years(df.orig[, "100d"])
df$author.death <- polish_years(df.orig[, "100d"])

print("Remove suspicious cases (very few) where birth is later than death.")
# In practice this concerns cases such as 1635-71 which should be 1635-1671
# but we have only two cases now so ignore this
inds <- which(df$author.birth > df$author.death)
df$author.birth[inds] <- NA
df$author.death[inds] <- NA

print("Author birth")
# For each author, list given birth years
births <- lapply(split(df$author.birth, df$author.name), unique)
# Authors with unique birth year (some entries may be NAs)
unique.birth <- names(which(sapply(births, function (x) {length(unique(na.omit(x)))}) == 1))

# For authors with a unique birth, use this birth year also for documents where
# birth year not given in the raw data
dfs <- df[, c("author.name", "author.birth")]
dfs <- dfs[!duplicated(dfs), ]
dfs <- dfs[rowMeans(is.na(dfs)) == 0,]
dfs <- dfs[dfs$author.name %in% unique.birth,]
births <- dfs$author.birth; names(births) <- dfs$author.name
inds <- is.na(df$author.birth)
df$author.birth[inds] <- births[df$author.name][inds]

# Birh year not known (NA)
births <- lapply(split(df$author.birth, df$author.name), unique)
na.birth <- names(which(is.na(births)))

# Authors with many birth years
births <- lapply(split(df$author.birth, df$author.name), unique)
many.births <- lapply(births[names(which(sapply(births, function (x) {length(unique(na.omit(x)))}) > 1))], function (x) {sort(unique(na.omit(x)))})

# ----------------------------------------------------

print("Author death")
# For each author, list given death years
deaths <- lapply(split(df$author.death, df$author.name), unique)
# Authors with unique death year (some entries may be NAs)
unique.death <- names(which(sapply(deaths, function (x) {length(unique(na.omit(x)))}) == 1))
# For authors with a unique death, use this death year also for documents where
# death year not given in the raw data
dfs <- df[, c("author.name", "author.death")]
dfs <- dfs[!duplicated(dfs), ]
dfs <- dfs[rowMeans(is.na(dfs)) == 0,]
dfs <- dfs[dfs$author.name %in% unique.death,]
deaths <- dfs$author.death; names(deaths) <- dfs$author.name
inds <- is.na(df$author.death)
df$author.death[inds] <- deaths[df$author.name][inds]

# Death year not known (NA)
deaths <- lapply(split(df$author.death, df$author.name), unique)
na.death <- names(which(is.na(deaths)))

# Authors with many death years
deaths <- lapply(split(df$author.death, df$author.name), unique)
many.deaths <- lapply(deaths[names(which(sapply(deaths, function (x) {length(unique(na.omit(x)))}) > 1))], function (x) {sort(unique(na.omit(x)))})

# --------------------------------------------------------------------------------
