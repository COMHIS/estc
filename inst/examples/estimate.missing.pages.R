df$pagecount.orig <- df$pagecount

# ------------------------------------------------------

# Documents with missing page information and dimension 1to-4to (any
# number of vols) or >8to (with >10 vols) are assumed to be 'issues'
# and we apply different estimated page count for them
inds <- which(is.na(df$pagecount) & ((df$gatherings %in% c("1to", "2small", "2to", "2long", "4small", "4to", "4long")) | (!df$gatherings %in% c("1to", "2small", "2to", "2long", "4small", "4to", "4long") & df$volcount > 10)))
g <- df$gatherings[inds]
v <- df$volcount[inds] # number of vols
# Those with volume number constitute one item from multi-volume series
# so use 1 as volume count for these
inds2 <- which(is.na(v) & !is.na(df$volnumber[inds])) 
v[inds2] <- 1

print("Pick the estimated page counts per vol separately for each doc size")
pages.per.vol <- mean.pagecounts.issue[match(g, mean.pagecounts.issue$doc.dimension), ]$median.pages.issue

print("Add estimated total page counts for issues")
indsc <- inds
df[inds, "pagecount"] <- v * pages.per.vol

# -----------------------------------------------------------

print("Multi-vol docs that have < 10 pages or no pages")
# those with <10 pages are typically ones with
# only plate page information and missing real page information
# as an approximation we can omit the plate information 
# as it is much smaller than the real page count
# Exclude docs with >10 volumes since these are likely not
# following average volume-wise page counts
inds <- which(((df$volcount > 1 & df$volcount <= 10) | 
     				     !is.na(df$volnumber)) & 
	    (df$pagecount <= 10 | is.na(df$pagecount)) & 
               !is.na(df$gatherings) & 
	       !df$gatherings %in% c("1to", "2small", "2to", "2long", "4small", "4long", "4to"))
g <- df$gatherings[inds]
v <- df$volcount[inds] # number of vols
p <- df$pagecount[inds]

# Those with volume number constitute one item from multi-volume series
# so use 1 as volume count for these
inds2 <- which(is.na(v) & !is.na(df$volnumber[inds])) 
v[inds2] <- 1

print("Pick the estimated page counts per vol separately for each doc size")
pages.per.vol <- mean.pagecounts.multivol[match(g, mean.pagecounts.multivol$doc.dimension), ]$median.pages.multivol

print("Add estimated total page counts for all docs")
indsa <- inds
df[inds, "pagecount"] <- v * pages.per.vol
# Assuming that page counts <10 are in fact cover pages, add these to the estimated page count
inds2 <- which(p <= 10 & !is.na(p))
df[inds2, "pagecount"] <- df[inds2, "pagecount.orig"] + v[inds2] * p[inds2]

# ----------------------------------------------

print("Single-vol docs")
inds <- which(df$volcount == 1 &
              is.na(df$volnumber) & 
	      is.na(df$pagecount) & 
              !is.na(df$gatherings) & 
	      !df$gatherings %in% c("1to", "2small", "2to", "2long"))
g <- as.character(df$gatherings[inds])

print("Pick the estimated page counts per vol separately for each doc size")
pages.per.vol <- mean.pagecounts.univol[match(g, as.character(mean.pagecounts.univol$doc.dimension)), ]$median

print("Add estimated total page counts for all docs")
indsb <- inds
df[inds, "pagecount"] <- 1 * pages.per.vol


# Known page counts before estimation
#pdf("~/tmp/knownsizes.pdf"); ggplot(df %>% select(pagecount.orig, gatherings) %>% group_by(pagecount.orig, gatherings) %>% tally(), aes(x = gatherings, y = pagecount.orig, size = n)) + geom_point() + scale_y_log10() + coord_flip(); dev.off()






