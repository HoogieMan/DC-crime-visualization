daFile <- read.csv("Crime Line Graph Over 24 Hours by Offense.csv",header=TRUE)
library(ggplot2)

Hour <- daFile$Hour
Hour <- as.character(Hour)
Hour <- factor(Hour, levels=unique(Hour), ordered=TRUE)

Offense <- daFile$Offense
Offense <- as.character(Offense)
Offense <- factor(Offense, levels=unique(Offense), ordered=TRUE)

Number <- daFile$Number

Hour
Offense
Number

data.set <- data.frame(Hour,Offense,Number)
data.set

qplot(Hour, Number, data=data.set, 
colour=Offense, geom= "line",group=Offense,size=0.1, 
ylab="Number of Incidents Reported, 2013",
main="Crime Incidents Reported At Each Hour of Day, By Offense")

###stacked line graph --- not that useful
qplot(Month, Value, data=data.set, colour=Offense, geom= "line", position= "stack", group=Offense)