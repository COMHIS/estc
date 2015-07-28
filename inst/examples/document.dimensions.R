print("Augment missing document dimensions") 
# Fill in the missing entries and area where estimates can be obtained
# area, width, height, gatherins (estimated+original)
df <- cbind(df, polish_dimensions(df.orig$physical_dimension, fill = TRUE)) 
