# How to Plot Mean Line by Group in ggplot2
# create data frame
df <- data.frame(team=rep(c('A', 'B', 'C'), each=5),
                 assists=c(2, 4, 4, 5, 6, 6, 7, 7,
                           8, 9, 7, 8, 13, 14, 12),
                 points=c(8, 8, 9, 9, 10, 9, 12, 13,
                          14, 15, 14, 14, 16, 19, 22))

# view data frame
df

library("dplyr")

library("ggplot2")

# calculate mean points value by team
mean_team <- df %>% group_by(team) %>% 
  summarise(mean_pts=mean(points))

# create scatterplot of assists vs points with mean line of points by team
ggplot(df, aes(x=assists, y=points)) + 
  geom_point(aes(color=team)) + 
  geom_hline(data=mean_team, aes(yintercept=mean_pts, col=team))

# view mean points value by team
mean_team
