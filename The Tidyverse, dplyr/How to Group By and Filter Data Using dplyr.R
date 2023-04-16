# Example: Group By and Filter Data Using dplyr
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C'),
                 points=c(10, 15, 8, 4, 10, 10, 12, 12, 7))

# view data frame
df

library("dplyr")

# group by team and filter out times where no points value is equal to 10
df %>% 
  group_by(team) %>% 
  filter(any(points == 10))

library("dplyr")
df %>% 
  group_by(team) %>% 
  filter(any(points > 13))

