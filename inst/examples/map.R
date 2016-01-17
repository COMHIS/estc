library(dplyr)
df2 <- df %>%
	 group_by(publication_year, publication_place, latitude, longitude) %>%
	 arrange(publication_year) %>%
	 tally() %>%
         filter(!is.na(latitude) & !is.na(longitude) & n > 0 & !is.na(publication_year))

# Remove London for clarity (10x bigger than other publication places)
mapdata <- df2 %>% filter(!publication_place == "London")

# Top publication places
#top50 <- (df %>% group_by(publication_place) %>% tally() %>% arrange(desc(n)))$publication_place[1:50]
#dat <- subset(df2, publication_place %in% top50)

# -----------------------------------------------

# ggplot2 static
# source("map1.R")

# Interactive
# source("map2.R")
# source("map3.R")

# Animated
source("map5.R") # Works! mp4


