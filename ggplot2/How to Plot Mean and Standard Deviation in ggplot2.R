# Example: Plot Mean and Standard Deviation in ggplot2
#create data frame
df <- data.frame(team=rep(c('A', 'B', 'C'), each=6),
                 points=c(8, 10, 12, 12, 14, 15, 10, 11, 12,
                          18, 22, 24, 3, 5, 5, 6, 7, 9))

#view head of data frame
head(df)

library("dplyr")

# calculate mean and sd of points by team
df_mean_std <- df %>% 
  group_by(team) %>% 
  summarise_at(vars(points), list(mean=mean, sd=sd)) %>% 
  as.data.frame()

# view results
df_mean_std

library("ggplot2")

# plot mean and standard deviation of points by team
ggplot(df_mean_std, aes(x=team, y=mean)) +
  geom_errorbar(aes(ymin=mean-sd, ymax=mean+sd), width=.3) +
  geom_point(size=2)
