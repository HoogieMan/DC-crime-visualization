daFile <- read.csv("Crime Line Graph Over 24 Hours by Season2.csv",header=TRUE)
library(ggplot2)

Hour <- daFile$Hour
Hour <- as.character(Hour)
Hour <- factor(Hour, levels=unique(Hour), ordered=TRUE)

Season <- daFile$Season2
Season <- as.character(Season)
Season <- factor(Season, levels=unique(Season), ordered=TRUE)

Number <- daFile$Frequency

Hour
Season
Number

data.set <- data.frame(Hour,Season,Number)
data.set

qplot(Hour, Number, data=data.set, 
colour=Season, geom= "line",group=Season,size=1, 
ylab="Number of Incidents Reported, 2013",
main="Crime Incidents Reported At Each Hour of Day, By Season")

###stacked line graph --- not that useful
qplot(Month, Value, data=data.set, colour=Offense, geom= "line", position= "stack", group=Offense)