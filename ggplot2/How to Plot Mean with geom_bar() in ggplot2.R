# Example: Plot Mean Values with geom_bar() in ggplot2
# create data frame
df <- data.frame(team=rep(c('A', 'B', 'C'), each=4),
                 points=c(3, 5, 5, 6, 5, 7, 7, 8, 9, 9, 9, 8))

# view data frame
df

library("ggplot2")

# create bar plot to visualize mean points value by team
ggplot(df, aes(x=team, y=points)) + 
  geom_bar(position = "dodge", stat="summary", fun="mean")

# To display the actual mean value of points for each team,
# we can use the summarise() function from the dplyr package:
library("dplyr")

# calculate mean value of points, grouped by team
df %>% 
  group_by(team ) %>% 
  summarise(mean_pts = mean(points, na.rm = TRUE))
