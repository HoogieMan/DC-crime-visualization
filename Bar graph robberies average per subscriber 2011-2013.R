Year <- c("2011", "2012", "2013")

Number <- c(0.016, 0.011, 0.008)

Labels <- c("0.016", "0.011", "0.008")

Colors <- c("#0072B2", "#0072B2", "#009E73")

library(ggplot2)

bar_data <- data.frame(Year,Number)
bar_data

#bar_dataReOrd <- reorder(Year,Number)
#bar_dataReOrd

ggplot(bar_data, aes(x=Year, y=Number))+ 
geom_bar(fill=Colors,colour="black", stat= "identity", width=0.5)+
geom_text(aes(x=Year, y=Number, ymax=Number, label=Labels, 
	hjust=ifelse(sign(Number)>0, 0.5,1)), vjust=ifelse(sign(Number)>0,-0.5,1), 
	position = position_dodge(width=.5))+
theme(
	axis.text.x = theme_text(size = 16),
	axis.title.x = theme_text(size = 18),
	axis.title.y = theme_text(size = 18),
	axis.text.y = theme_text(size = 16),
	plot.title = theme_text(size = 20))+
guides(fill=FALSE)+
coord_cartesian(ylim = c(0,0.02))+
xlab("Year") + 
ylab("Avg. # of Incidents Per Subscriber")+
ggtitle("Average Number of Robberies Per Smartphone Subscriber, 2011-2013")


## to make non-ordered, use aes(x=Offense, y=Number... instead
