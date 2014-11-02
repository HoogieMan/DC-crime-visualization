daFile <- read.csv("Line Graph Smartphone penetration 2011-2013.csv",header=TRUE)
library(ggplot2)
library(scales)

Month <- daFile$Date
Month <- as.character(Month)
Month <- factor(Month, levels=unique(Month), ordered=TRUE)

Number <- daFile$US

yAxis <- seq(30,63,1)
yAxis

Month
Number

data.set <- data.frame(Month,Number)
data.set

ggplot(data = data.set, aes(x=Month, y = Number, group=1))+ 
geom_line(colour="#CC0000", size=2)+
theme(axis.text.x = element_text(angle = 65, hjust = 1))+
xlab("Month")+
ylab("Number of Reported Incidents")+
ggtitle("Smartphone Share of Mobile Subscriber Market, 2011-2013")

###stacked line graph --- not that useful
qplot(Month, Value, data=data.set, colour=Offense, geom= "line", position= "stack", group=Offense)