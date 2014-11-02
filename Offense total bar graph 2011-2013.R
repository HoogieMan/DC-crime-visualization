Offense <- c("Arson", "Homicide", "Sex Abuse", "Assault w/Weapon", "Vehicle Theft", "Burglary", 
 "Robbery", "Theft from Auto", "Theft (other)")

Number <- c(114, 299, 727, 6783, 8901, 10997, 12505, 28737, 36142)

Labels <- c("114", "299", "727", "6,783", "8,901", "10,997", "12,505", "28,737", "36,142")

### if not coded above, below references input file ##
daFile <- read.csv(“Total reported bar graph.csv”)
Offense <- daFile$Offense
Number <- defile$Number
############

library(ggplot2)

bar_data <- data.frame(Offense,Number)

bar_dataReOrd <- reorder(Offense,Number)

ggplot(bar_data, aes(x=bar_dataReOrd, y=Number, fill=Offense))+ 
geom_bar(colour="black", stat= "identity")+
geom_text(aes(x=bar_dataReOrd, y=Number, ymax=Number, label=Labels, 
	hjust=ifelse(sign(Number)>0, 0.5,1)), vjust=ifelse(sign(Number)>0,-0.5,1), 
	position = position_dodge(width=.5))+
guides(fill=FALSE)+
xlab("Offense") + 
ylab("Number of Incidents Reported")+
ggtitle("Number of Crime Incidents Reported in Washington, D.C., by Offense, 2011-2013")


## to make non-ordered, use aes(x=Offense, y=Number... instead
