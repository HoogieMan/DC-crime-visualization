Year <- c("2011", "2012", "2013")

Number <- c(4163, 4268, 4373)

Labels <- c("4,163", "4,268", "4,373 (est.)")

Colors <- c("#0072B2", "#0072B2","#0072B2")

### if not coded above, below references input file ##
daFile <- read.csv(�Total reported bar graph.csv�)
Offense <- daFile$Offense
Number <- defile$Number
############

library(ggplot2)

bar_data <- data.frame(Year,Number)

bar_dataReOrd <- reorder(Year,Number)

ggplot(bar_data, aes(x=bar_dataReOrd, y=Number))+ 
geom_bar(fill="#0072B2",colour="black", stat= "identity", width=0.5)+
geom_text(aes(x=bar_dataReOrd, y=Number, ymax=Number, label=Labels, 
	hjust=ifelse(sign(Number)>0, 0.5,1)), vjust=ifelse(sign(Number)>0,-0.5,1), 
	position = position_dodge(width=.5))+
guides(fill=FALSE)+
coord_cartesian(ylim = c(3500,4800))+
xlab("Year") + 
ylab("Number of Incidents Reported")+
ggtitle("Robberies Reported in Washington, D.C., 2011-2013")


## to make non-ordered, use aes(x=Offense, y=Number... instead
