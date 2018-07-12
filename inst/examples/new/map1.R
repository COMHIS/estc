# See 
# https://github.com/louhos/takomo/blob/master/examples/20111117-muuttoliike.R

library(gisfin)
map <- get_municipality_map(data.source = "MML")

sp <- sp::merge(map, df2, by.x = "country", by.y="publication.place")

#p <- region_plot(sp, color = "Sairastavuusindeksi", region = "kuntakoodi")
#print(p)

