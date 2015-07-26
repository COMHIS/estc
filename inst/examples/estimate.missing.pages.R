df$document.pages.total.orig <- df$document.pages.total

# ------------------------------------------------------

# Documents with missing page information and dimension 1to-4to (any
# number of vols) or >8to (with >10 vols) are assumed to be 'issues'
# and we apply different estimated page count for them
inds <- which(is.na(df$document.pages.total) & ((df$document.dimension.gatherings.estimated %in% c("1to", "2small", "2to", "2long", "4small", "4to", "4long")) | (!df$document.dimension.gatherings.estimated %in% c("1to", "2small", "2to", "2long", "4small", "4to", "4long") & df$document.volcount > 10)))
g <- df$document.dimension.gatherings.estimated[inds]
v <- df$document.volcount[inds] # number of vols
# Those with volume number constitute one item from multi-volume series
# so use 1 as volume count for these
inds2 <- which(is.na(v) & !is.na(df$document.volnumber[inds])) 
v[inds2] <- 1

print("Pick the estimated page counts per vol separately for each doc size")
pages.per.vol <- mean.pagecounts.issue[match(g, mean.pagecounts.issue$doc.dimension), ]$median.pages.issue

print("Add estimated total page counts for issues")
indsc <- inds
df[inds, "document.pages.total"] <- v * pages.per.vol

# -----------------------------------------------------------

print("Multi-vol docs that have < 10 pages or no pages")
# those with <10 pages are typically ones with
# only plate page information and missing real page information
# as an approximation we can omit the plate information 
# as it is much smaller than the real page count
# Exclude docs with >10 volumes since these are likely not
# following average volume-wise page counts
inds <- which(((df$document.volcount > 1 & df$document.volcount <= 10) | 
     				     !is.na(df$document.volnumber)) & 
	    (df$document.pages.total <= 10 | is.na(df$document.pages.total)) & 
               !is.na(df$document.dimension.gatherings.estimated) & 
	       !df$document.dimension.gatherings.estimated %in% c("1to", "2small", "2to", "2long", "4small", "4long", "4to"))
g <- df$document.dimension.gatherings.estimated[inds]
v <- df$document.volcount[inds] # number of vols
p <- df$document.pages.total[inds]

# Those with volume number constitute one item from multi-volume series
# so use 1 as volume count for these
inds2 <- which(is.na(v) & !is.na(df$document.volnumber[inds])) 
v[inds2] <- 1

print("Pick the estimated page counts per vol separately for each doc size")
pages.per.vol <- mean.pagecounts.multivol[match(g, mean.pagecounts.multivol$doc.dimension), ]$median.pages.multivol

print("Add estimated total page counts for all docs")
indsa <- inds
df[inds, "document.pages.total"] <- v * pages.per.vol
# Assuming that page counts <10 are in fact cover pages, add these to the estimated page count
inds2 <- which(p <= 10 & !is.na(p))
df[inds2, "document.pages.total"] <- df[inds2, "document.pages.total.orig"] + v[inds2] * p[inds2]

# ----------------------------------------------

print("Single-vol docs")
inds <- which(df$document.volcount == 1 &
              is.na(df$document.volnumber) & 
	      is.na(df$document.pages.total) & 
              !is.na(df$document.dimension.gatherings.estimated) & 
	      !df$document.dimension.gatherings.estimated %in% c("1to", "2small", "2to", "2long"))
g <- as.character(df$document.dimension.gatherings.estimated[inds])

print("Pick the estimated page counts per vol separately for each doc size")
pages.per.vol <- mean.pagecounts.univol[match(g, as.character(mean.pagecounts.univol$doc.dimension)), ]$median

print("Add estimated total page counts for all docs")
indsb <- inds
df[inds, "document.pages.total"] <- 1 * pages.per.vol


#--------------------------------------------------------------------------------------------
# Fraction of missing pages in each size category
#tab <- table(df[unique(c(indsa, indsb)), "document.dimension.gatherings.estimated"])
#tab2 <- table(df[, "document.dimension.gatherings.estimated"])
#tabr <- tab[names(tab2)]/tab2
#barplot(100*tabr, horiz = T, main = "Fraction of missing pages for each size", xlab = "Missing (%)", las = 1)
# Known page counts before estimation
#pdf("~/tmp/knownsizes.pdf"); ggplot(df %>% select(document.pages.total.orig, document.dimension.gatherings.estimated) %>% group_by(document.pages.total.orig, document.dimension.gatherings.estimated) %>% tally(), aes(x = document.dimension.gatherings.estimated, y = document.pages.total.orig, size = n)) + geom_point() + scale_y_log10() + coord_flip(); dev.off()






