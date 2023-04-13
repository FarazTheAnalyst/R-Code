# You can use the ungroup() function in dplyr to ungroup rows
# after using the group_by() function to summarize a variable by group.

# Example: How to Use ungroup() in dplyr
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 points=c(14, 18, 22, 26, 36, 34),
                 assists=c(5, 4, 4, 8, 7, 3))

# view data frame
df

# load dplyr
library("dplyr")

# calculate mean of points, grouped by team
df_new <- df %>% 
  group_by(team) %>% 
  summarize(mean_points = mean(points)) %>% 
  ungroup()

# view results
df_new

# Using this syntax, we're able to calculate the mean value of points
# grouped by team, but we've lost the assists column.
# To retain the assists column, we can use mutate()
# instead of summarize() and still use ungroup() at the end:
library(dplyr)

# calculate mean of points, grouped by team
df_new <- df %>% 
  group_by(team) %>% 
  mutate(mean_points = mean(points)) %>% 
  ungroup()

# view results
df_new
