daFile <- read.csv("Robberies 3q bars.csv",header=TRUE)
library(ggplot2)

Month <- daFile$Month
Month <- as.character(Month)
Month <- factor(Month, levels=unique(Month), ordered=TRUE)

Year <- daFile$Year
Year <- as.character(Year)
Year <- factor(Year, levels=unique(Year), ordered=TRUE)

Number <- daFile$Number

Month
Year
Number

bar_data <- data.frame(Month, Year,Number)
bar_data

qplot(x=Month, data=bar_data, geom = "bar", 
	weight=Number, position="dodge", fill=Year, colour= "#CC0000")

ggplot(bar_data, aes(x=bar_data, y=Number, fill=Year))+ 
geom_bar(colour="black", stat= "identity")+
geom_text(aes(x=bar_data, y=Number, ymax=Number, label=Labels, 
	hjust=ifelse(sign(Number)>0, 0.5,1)), vjust=ifelse(sign(Number)>0,-0.5,1), 
	position = position_dodge(width=.5))+
guides(fill=FALSE)+ 
ylab("Number of Incidents Reported")+
ggtitle("Number of Crime Incidents Reported in Washington, D.C., by Offense, 2011-2013")

