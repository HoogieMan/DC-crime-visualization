daFile <- read.csv("Crime Line Graph Over 24 Hours.csv",header=TRUE)
library(ggplot2)

Hour <- daFile$Time
Hour <- as.character(Hour)
Hour <- factor(Hour, levels=unique(Hour), ordered=TRUE)

Number <- daFile$NumIncidents

Hour
Number

data.set <- data.frame(Hour,Number)
data.set

qplot(Hour, Number, data=data.set, geom= "line", colour = "blue", group=1, size=0.1, 
ylab="Number of Incidents Reported",
main="Total Crime Incidents Reported At Each Hour of Day, 2013")+ 
opts(legend.position = "none")

###stacked line graph --- not that useful
qplot(Month, Value, data=data.set, colour=Offense, geom= "line", position= "stack", group=Offense)