dimension.table.orig <- polish_dimensions(df.orig[["300c"]])
df$document.dimension.gatherings.original <- dimension.table.orig$gatherings
df$document.dimension.width.original <- dimension.table.orig$width
df$document.dimension.height.original <- dimension.table.orig$height


# TODO: This could better go to enrich.R section
print("Augment missing document dimensions") 
# Fill in the missing entries and area where estimates can be obtained
dimension.table <- polish_dimensions(df.orig[["300c"]], fill = TRUE)
df$document.dimension.cm2 <- dimension.table$area
df$document.dimension.width.estimated <- dimension.table$width
df$document.dimension.height.estimated <- dimension.table$height
df$document.dimension.gatherings.estimated <- dimension.table$gatherings


