# create data frame
df <- data.frame(team=c("A", "A", "A", "A", "A", "B", "B", "B", "B", "B"),
                 points=c(12, 29, 34, 14, 10, 11, 7, 36, 34, 22))

# view data frame
df

# load dplyr package
library("dplyr")
# calculate percentage of points scored, grouped by team
# add new column percentage
df %>% 
  group_by(team) %>% 
  mutate(percent = points/sum(points))
