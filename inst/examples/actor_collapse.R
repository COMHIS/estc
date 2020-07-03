skip.init <- TRUE

if (!skip.init) {

  source("init.R")
  df <- readRDS(datafile.preprocessed) #match(df$system_control_number, actors$curives)
  actors <- read.csv("~/data/ESTC/estc-data-unified/estc-actors-unified/unified_actorlinks_enriched.csv")
  actors <- subset(actors, actor_role_author == "True")
  top.actors <- names(top(actors, "actor_name_primary", 10))
}

actors$decade <- decade(actors$pubyear)

# --------------------------

top.actors.harm <- "Defoe, Daniel, 1661?-1731."
top.actors.orig <- "Defoe, Daniel"


top.actors <- top.actors.harm
dfh <- actors %>%
     filter(actor_name_primary %in% top.actors) %>%
     group_by(decade) %>%     
     tally() 
dfh <- subset(dfh, decade >= 1470 & decade <= 1800)     
dfh$version <- "harmonized"

# ------------------------------

df2 <- df.orig
df2$decade <- df$publication_decade
df2 <- subset(df2, decade >= 1470 & decade <= 1800)
top.actors <- top.actors.orig
dfh2 <- df2 %>% 
     filter(author_name %in% top.actors) %>%
     group_by(decade) %>%
     tally() 
dfh2$version <- "original"

# --------------------------

df.combined <- bind_rows(dfh, dfh2)
df.combined$version  <- factor(df.combined$version)

library(devtools)
load_all("~/Rpackages/comhis")
p <- ggplot(df.combined, aes(x = decade,
                             y = n,
                             color = version)) +
       geom_line(size = 1) +
       geom_point() +       
       # scale_y_continuous(label = scales::percent) +
       labs(x = "Publication decade", y = "Title count (n)",
            title = top.actors.orig) +
       theme_comhis("continuous", base_size = 20) +
       scale_color_manual(values = rev(c("darkgray", "black")),
                          guide = guide_legend(reverse = TRUE))
       
print(p)

#pdf(file = "~/tmp/defoe.pdf", width=10, height = 5)
#print(p)
#dev.off()

# ------------------------------

editions <- read.csv("~/proj/marchmadness-wip/datainput/estc_works_roles.csv")

my.actor <- "Shakespeare, William, 1564-1616."
dfh <- actors %>% filter(actor_name_primary %in% my.actor)
inds <- match(dfh$curives, editions$system_control_number)
dfh <- bind_cols(dfh, editions[inds,])


# ----------------------

df <- actors %>% filter(actor_name_primary == "Defoe, Daniel, 1661?-1731.") %>%
                          mutate(pubyear = as.numeric(as.character(pubyear))) %>%
                          arrange(pubyear) %>%
			  
			  group_by(work_id) %>%
	mutate(first = (pubyear == min(pubyear, na.rm = TRUE))) %>% 
			  select(pubyear, work_id, first) %>%
			  
			  group_by(pubyear) %>% 
			  summarize(First = length(which(first)),
			            All = n()) 
			  

cols <- c("blue", "darkgreen")
p <- ggplot(melt(df, id = "pubyear"),
         aes(x = pubyear, y = value, color = variable)) +
       #geom_bar(position = "dodge", stat = "identity", color = "black") + 
       geom_line(size = 1) +
       geom_point() + 
       # geom_smooth(aes(fill = variable)) +
       theme_comhis("continuous", 20) +
       scale_color_manual(values = rev(cols),
         guide = guide_legend(title = "", reverse = TRUE)) +       
       labs(x = "Publication year",
            y = "Title count (n)",
            title = "Daniel Defoe") +
       geom_vline(aes(xintercept = 1731)) +
       theme(legend.position=c(.8, .85))
       
       
print(p)

pdf(file = "~/tmp/defoe.pdf", width=9, height = 6)
print(p)
dev.off()



df <- actors %>% filter(actor_name_primary == "Defoe, Daniel, 1661?-1731.") %>%
                          mutate(pubyear = as.numeric(as.character(pubyear))) %>%
                          arrange(pubyear)

df$decade <- decade(df$pubyear)
df$work_id <- as.character(df$work_id)

for (dec in sort(unique(df$decade))) {

  dfs <- subset(df, decade == dec) 
  write.csv(top(dfs, "work_id", 10), file = paste0("tmp/", dec, ".txt"), quote = F, row.names = F)

}




