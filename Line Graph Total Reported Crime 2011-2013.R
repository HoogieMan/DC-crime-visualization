daFile <- read.csv("Line Graph total reported crime 11-13.csv",header=TRUE)
library(ggplot2)

Month <- daFile$Month
Month <- as.character(Month)
Month <- factor(Month, levels=unique(Month), ordered=TRUE)

Number <- daFile$NumReported

Month
Number

data.set <- data.frame(Month,Number)
data.set

ggplot(data = data.set, aes(x=Month, y = Number, group=1))+ 
geom_line(colour="blue", size=2)+
theme(axis.text.x = element_text(angle = 65, hjust = 1))+
xlab("Month")+
ylab("Number of Reported Incidents")+
ggtitle("Total Number of Reported Crime Incidents, 2011-2013")+
stat_smooth(method="lm", se = FALSE)

###stacked line graph --- not that useful
qplot(Month, Value, data=data.set, colour=Offense, geom= "line", position= "stack", group=Offense)