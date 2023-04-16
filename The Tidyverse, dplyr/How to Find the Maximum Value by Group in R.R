# create data frame
df <- data.frame(team = c('A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position = c('G', 'F', 'F', 'G', 'G', 'G', 'F'),
                 points = c(12, 15, 19, 22, 34, 34, 39))

# view data frame
df

# Example 1: Find Max Value by Group
library("dplyr")

# find max value by team and positioni
df %>% 
  group_by(team, position) %>% 
  summarise(max=max(points, na.rm = TRUE))

# Example 2: Return Rows that Contains Max Value by Group
library(dplyr)

# find rows that contain max points by team and position
df %>% 
  group_by(team, position) %>% 
  filter(points == max(points, na.rm = TRUE))

# Example 3: Return a Single Row that Contains Max Value by Group
library("dplyr")

# find rows that contain max points by team and position
df %>% 
  group_by(team, position) %>% 
  slice(which.max(points))
