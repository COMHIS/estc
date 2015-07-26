library(dplyr)
df2 <- df %>%
	 group_by(publication.year, publication.place, latitude, longitude) %>%
	 arrange(publication.year) %>%
	 tally() %>%
         filter(!is.na(latitude) & !is.na(longitude) & n > 0 & !is.na(publication.year))

# Remove London for clarity (10x bigger than other publication places)
mapdata <- df2 %>% filter(!publication.place == "London")
         
	
# Top publication places
#top50 <- (df %>% group_by(publication.place) %>% tally() %>% arrange(desc(n)))$publication.place[1:50]
#dat <- subset(df2, publication.place %in% top50)

# -----------------------------------------------

# ggplot2 static
# source("map1.R")

# Interactive
# source("map2.R")
# source("map3.R")

# Animated
source("map5.R") # Works! mp4


