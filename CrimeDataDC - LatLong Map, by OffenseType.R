library(maps)    
library(mapdata)
library(ggplot2)

daFile <- read.csv("Latitude and Longitude map data.csv")
daFile
latitude <- daFile$Latitude
longitude <- daFile$Longitude
offense <- daFile$Offense
offense

data.set <- data.frame(latitude,longitude,offense)

##Mid-Atlantic region##
map("state", interior = FALSE, xlim=c(-80,-74), ylim=c(37,42))
map("state", boundary = FALSE, col="gray", add = TRUE)
map.axes()
map.scale()

### DC Only###
map("state", interior = FALSE, xlim=c(-77.15,-76.8), ylim=c(38.8,39))
map("state", boundary = FALSE, col="gray", add = TRUE)
map.axes()
map.scale()

##plotting lat and long##

ggplot(data.set) +labs(title="Location of Crime Incidents in Washington,D.C.") + geom_point(aes(x = longitude, y = latitude, 
colour = offense, group=1),data = data.set)

map("state", boundary = FALSE, col="gray", add = TRUE)
map.axes()
map.scale()