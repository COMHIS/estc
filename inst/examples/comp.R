library(dplyr)
library(tidyr)
library(devtools)
load_all()
library(ggplot2)

# df <- readRDS("df.Rds")
df <- df %>% filter(publication_year >= 1470 & publication_year <= 1800)

# Count print area, title count, and paper consumption
d <- df %>% group_by(publication_place) %>%
        summarize(area = sum(area, na.rm = TRUE),
        	  titlecount = n(),
        	  paper = sum(paper, na.rm = TRUE))

# Convert to long format
dlong <- d %>% pivot_longer(-publication_place)

#theme_set(theme_bw(20))
#p <- ggplot(dlong, aes(x = publication_place, y = value, color = name)) +
#       geom_point() +
#       scale_y_log10() + 
#       labs(x = "Publication year")
#print(p)       
       
p1 <- ggplot(d, aes(x = titlecount, y = paper)) + geom_point() + scale_x_log10() + scale_y_log10() + labs(x = "Title count (n)", y = "Paper (sheets)")
p2 <- ggplot(d, aes(x = titlecount, y = area)) + geom_point() + scale_x_log10() + scale_y_log10()
p3 <- ggplot(d, aes(x = paper, y = area)) + geom_point() + scale_x_log10() + scale_y_log10() + labs(x = "Paper (sheets)", y = "Print area (sheets)")
library(cowplot)
# p <- plot_grid(p1, p2, p3, cols = 3)
p <- plot_grid(p1, p3)
print(p)
pdf("~/tmp/comparison.pdf", width=10, height=5)
print(p)
dev.off()

# London versus Paris with different measures
barplot(unlist(filter(d, publication_place == "London")[, 2:4]/filter(d, publication_place == "Paris")[, 2:4] ))

