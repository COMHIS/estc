library(magrittr)
library(dplyr)
library(ggmap)
library(ggplot2)
library(gisfin)
#theme_set(GetThemeMap())



# Top-10 publication places
top10 <- (df %>% group_by(publication.place) %>% tally() %>% arrange(desc(n)))$publication.place[1:10]
dat <- subset(df2, publication.place %in% top10)
dat$Value <- dat$n
dat$color.field <- dat$publication.place
dat$time <- dat$publication.decade

dat.folder = "."
fps <- 10


## MAP PLOTS #######

# Define common scales for all plot
col.scale <- scale_colour_brewer(palette="Set1", drop=FALSE)
fill.scale <- scale_fill_brewer(palette="Set1", drop=FALSE)
size.scale <- scale_size_continuous(limits=c(min(dat$Value), max(dat$Value)), range=c(8, 18))
alpha.scale <- scale_alpha_continuous(limits=c(0.0, 1), range=c(0, 1))
y.scale <- scale_y_continuous(limits=c(0, 100))

## Map for Europe
Europe.bbox <- c(0, 40, 30.5, 65)
names(Europe.bbox) <- c("left", "bottom", "right", "top")
Europe.map <- get_map(location=Europe.bbox, source="stamen", maptype="toner")
p.plain <- ggmap(Europe.map) + theme(legend.position="none")
p.map <- p.plain + geom_point(data=dat, aes(x=longitude, y=latitude, colour=color.field, size=Value)) + col.scale + size.scale

## ANIMATION ##########

# Package for animation
library(animation)

# Animation options
nmax <- 20 # span.days@day+1
ani.options(outdir=paste0(dat.folder, "animations"),
            interval = 1/fps,
            nmax=nmax,
            ani.width=1280,
            ani.height=720)
# Define duration of data point fading
fade.length <- 10

# Create video
library(lubridate)
span <- new_interval(ymd("1500-01-01"), ymd("1800-01-01"))

dat.init <- data.frame(Date=dat$time[1], color.field=factor(levels(dat$color.field), levels=levels(dat$color.field)), Value=0.01, CumValue=0.01, longitude=NA, latitude=NA)



saveVideo(

  for (i in 0:(nmax - 1)) {
  
    i.date <- int_start(span) + ddays(i)

    # Plot map
    sub.dat <- subset(dat, time <= i.date & time >= i.date - ddays(fade.length))
    p <- p.plain
    
    if (nrow(sub.dat) > 0) {
      sub.dat$Fade <- 1-as.period(as.interval(sub.dat$time, i.date), unit="days")@day/fade.length    
      sub.dat <- sub.dat[order(sub.dat$time),]
      p <- p + geom_point(data=sub.dat, aes(x=longitude, y=latitude, colour=color.field, size=Value, alpha=Fade)) + size.scale + alpha.scale + col.scale
    }
    
    print(p)

  }

, video.name="video.mp4", clean=TRUE, img.name = "tmpimage")
#}, video.name="video.mp4", clean=TRUE, other.opts = "-b:a 300k")




