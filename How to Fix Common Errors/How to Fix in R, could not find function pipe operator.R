# How to Reproduce the Error
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(6, 14, 15, 19, 22, 25, 39, 34))

# view data frame
df

# find  average points scored by players on each team 
df %>% 
  group_by(team) %>% 
  summarise(avg_points = mean(points))

# how to fix the Error %>% 
# The way to fix this error is to simply load the dplyr package
# before using the "%>%" function:
library("dplyr")

# find average points scored by players on each team
df %>% 
  group_by(team) %>% 
  summarise(avg_points = mean(points))
