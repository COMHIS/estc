# List preprocessed data files
# (for parsers for the original XML, see README)
#fs <- list.files(ddir, full.names = TRUE, pattern = ".csv.gz")
df.raw <- read_bibliographic_metadata("estc.csv.gz", verbose = TRUE)
# save(df.raw, file = "df.raw.RData", compress = "xz")



