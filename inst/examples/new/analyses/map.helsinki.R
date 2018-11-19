## Map for Helsinki region
Hel.bbox <- c(24.6, 60.12, 25.1, 60.32)
names(Hel.bbox) <- c("left", "bottom", "right", "top")
Hel.map <- get_map(location=Hel.bbox, source="stamen", maptype="toner")
p.hel.plain <- ggmap(Hel.map) + theme(legend.position="none")
# Get subset of dat within the map range
dat.hel <- droplevels(subset(dat, dat$longitude >Hel.bbox["left"] & dat$longitude < Hel.bbox["right"] & dat$latitude > Hel.bbox["bottom"] & dat$latitude < Hel.bbox["top"]))
p.map.hel <- p.hel.plain + geom_point(data=dat.hel, aes(x=longitude, y=latitude, colour=color.field, size=Value)) + col.scale + size.scale
p <- p.map.hel + theme(legend.position="right") + scale_size_continuous(guide="none", range=c(5, 10)) + labs(colour=NULL)
#ggsave(p, width=6, height=4, file=file.path(dat.folder, "Bonusdata_Helsinkimap.png"))

## Map for whole Finland
Fin.bbox <- c(21.0, 59.5, 30.5, 65)
names(Fin.bbox) <- c("left", "bottom", "right", "top")
Fin.map <- get_map(location=Fin.bbox, source="stamen", maptype="toner")
p.fin.plain <- ggmap(Fin.map) + theme(legend.position="none")
p.map.fin <- p.fin.plain + geom_point(data=dat, aes(x=longitude, y=latitude, colour=color.field, size=Value)) + col.scale + size.scale
p.map.fin

    # Plot cumulative values for shop categories
    cv.dat <- subset(dat, time <= i.date)
    p.cum <- ggplot(dat.init, aes(x=color.field, fill=color.field)) + geom_bar(aes(weight=Value))
    p.cum <- p.cum + geom_bar(data=cv.dat, aes(weight=Value))
    p.cum <- p.cum + y.scale + fill.scale + theme(legend.position="bottom", legend.text=element_text(size=20)) + labs(fill=NULL) 
    

