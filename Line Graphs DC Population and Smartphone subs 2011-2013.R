library(ggplot2)

Year <- c("2011", "2012", "2013)
Pop <- c(617996, 633427, 646449)
Subs <- c(259558, 405393, 484837)

Year
Pop
Subs

data.pop <- data.frame(Year, Pop)
data.sub <- data.frame(Year, Subs)

data.pop
data.sub


##DC Population##
qplot(Year, Pop, data=data.pop, geom= "line", 
colour = "blue", group=1, size=0.1, 
ylab="Population",
main="D.C. Population")+ 
opts(legend.position = "none", 
axis.text.x = theme_text(size = 16),
axis.title.x = theme_text(size = 18),
axis.title.y = theme_text(size = 18),
axis.text.y = theme_text(size = 16),
plot.title = theme_text(size = 20))+
scale_x_continuous(breaks=c(2011, 2012, 2013))


##Smartphone Subscribers
qplot(Year, Subs, data=data.sub, geom= "line", 
colour = "blue", group=1, size=0.1, 
ylab="Subscribers",
main="D.C. Smartphone Subscribers")+ 
opts(legend.position = "none",
axis.text.x = theme_text(size = 16),
axis.title.x = theme_text(size = 18),
axis.title.y = theme_text(size = 18),
axis.text.y = theme_text(size = 16),
plot.title = theme_text(size = 20))+
scale_x_continuous(breaks=c(2011, 2012, 2013))+
geom_line(colour="#009E73")


###stacked line graph --- not that useful
qplot(Month, Value, data=data.set, colour=Offense, geom= "line", position= "stack", group=Offense)