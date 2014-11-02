daFile <- read.csv("CrimeStackedLineGraph2.csv",header=TRUE)
library(ggplot2)

Month <- daFile$Month
Month <- as.character(Month)
Month <- factor(Month, levels=unique(Month), ordered=TRUE)

Offense <- daFile$Offense
Offense <- as.character(Offense)
Offense <- factor(Offense, levels=unique(Offense), ordered=TRUE)

Value <- daFile$Value

Month
Offense
Value

data.set <- data.frame(Month,Offense,Value)
data.set

###Cumulative Stacked Line Graph, by Offense Type

stackedgraph <- qplot(Month, Value, data=data.set, fill=Offense, geom= "area", group=Offense, ylab="Number of Incidents Reported, 2013",
main="Total Number of Crime Incidents Reported Over Course of 2013")

stackedgraph + guides(fill=guide_legend(reverse = TRUE))

###Line Graph by Offense Type, Individual Lines

multiline <- qplot(Month, Value, data=data.set, colour=Offense, geom= "line",group=Offense, size=0.1, ylab="Number of Incidents Reported, 2013",
main="Crime Incidents Reported, By Offense, Over Course of 2013")

multiline + guides(fill=guide_legend(reverse = TRUE))

###stacked line graph --- not that useful
qplot(Month, Value, data=data.set, colour=Offense, geom= "line", position= "stack", group=Offense)