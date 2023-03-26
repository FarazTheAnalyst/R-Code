# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(19, 22, 15, NA, 14, 25, 25, 25),
                 rebounds=c(10, 6, 3, 7, 11, 13, 9, 12))

# view data frame
df

# Example 1: Select Top N Values by Group (Ignore Ties)
library("dplyr")

# select top 2 rows with highest points values, grouped by team
df %>% 
  arrange(desc(points)) %>% 
  group_by(team) %>% 
  slice(1:2)

# Example 2: Select Top N Values by Group (Include Ties)
library("dplyr")

# select top 2 rows with highest points values, grouped by team
df %>% 
  group_by(team) %>% 
  top_n(2, points)
