print("Cases where pages could not be estimated")
# Filter out those where it clearly cannot be estimated (not available)
#estimates <- unlist(pages$estimated.pages)
#originals <- unlist(pages$raw.pages)
#discarded <- unlist(originals)[is.na(unlist(estimates))]
discarded <- df.orig$physical_extent[is.na(df$pagecount)]

# volume, dimension, and other information where it is clear that 
# page numbers cannot be estimated
discarded.orig <- discarded
discarded <- remove_volume_info(discarded)
discarded <- remove_dimension_info(discarded)
discarded <- trimming(discarded, n = 5)
keep <- which(!discarded %in% c("? p", "NA", "bill", "2 ¹"))
keep <- setdiff(keep, grep(">26] p$", discarded))
keep <- setdiff(keep, grep("ill", discarded))
keep <- setdiff(keep, grep(";2⁾", discarded))
keep <- setdiff(keep, grep("\\[fewer than 50 pages\\]", discarded))
keep <- setdiff(keep, grep("various pagings", discarded))
keep <- setdiff(keep, grep("\\[No pagination provided\\]", discarded))
keep <- setdiff(keep, grep("[0-9][0-9][0-9] columns", discarded))
keep <- setdiff(keep, grep("Caption title", discarded))
keep <- setdiff(keep, grep("^[0-9][0-9] no$", discarded))
keep <- setdiff(keep, grep("^[0-9] no$", discarded))
keep <- setdiff(keep, grep("^[0-9][0-9] no$", discarded))
keep <- setdiff(keep, grep("^[0-9] v\\. \\([0-9][0-9] no\\.) ;$", discarded))
keep <- setdiff(keep, grep("^in [0-9]$", discarded))
discarded <- as.vector(na.omit(discarded.orig[keep]))

tmp <- write_xtable(discarded, paste(output.folder, "documentpages-discarded.csv", sep = ""))
