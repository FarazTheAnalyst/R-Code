# create data frame
df <- data.frame(team=rep(c("A", "B", "C"), each=5), 
                 points=c(4, 4, 5, 6, 8, 7, 6, 8, 9, 12, 11, 12, 13, 16, 18))

# view first six rows of data frame
head(df)

# Create Boxplots with mean valeus in base R
# create boxplots
boxplot(df$points~df$team)

# calculate mean value by group
means <- tapply(df$poonts, df$team, mean)
# add means as circles to each boxplot
points(means, pch=20, cex=1.5)

# create boxplot with mean values in ggplot2
library(ggplot2)

#create boxplots with mean values
ggplot(df, aes(x=team, y=points, fill = team)) +
  geom_boxplot() +
  stat_summary(fun=mean, geom='point', shape = 20, size=8) +
  theme(legend.position='none')
