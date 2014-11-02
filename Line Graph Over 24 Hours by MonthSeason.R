daFile <- read.csv("Crime Line Graph Over 24 Hours by MonthSeason.csv",header=TRUE)
library(ggplot2)

Hour <- daFile$Hour
Hour <- as.character(Hour)
Hour <- factor(Hour, levels=unique(Hour), ordered=TRUE)

Month <- daFile$Month
Month <- as.character(Month)
Month <- factor(Month, levels=unique(Month), ordered=TRUE)

Number <- daFile$Frequency

Hour
Month
Number

data.set <- data.frame(Hour,Month,Number)
data.set

qplot(Hour, Number, data=data.set, 
colour=Month, geom= "line",group=Month,size=0.1, 
ylab="Number of Incidents Reported, 2013",
main="Crime Incidents Reported, By Month, At Each Hour of Day")

###stacked line graph --- not that useful
qplot(Month, Value, data=data.set, colour=Offense, geom= "line", position= "stack", group=Offense)