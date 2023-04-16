# Example 1: Rename One Column by Index
library(dplyr)

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, 14, 19, 24, 24, 22, 30, 9),
                 assists=c(4, 6, 6, 8, 3, 7, 8, 11))

# rename column in index position 1
df <- df %>% 
  rename(team_new = 1)

# view updated data frame
df

# Example 2: Rename Multiple Columns by Index
library("dplyr")

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, 14, 19, 24, 24, 22, 30, 9),
                 assists=c(4, 6, 6, 8, 3, 7, 8, 11))

# rename column in index position 1
df <- df %>% 
  rename(team_new = 1,
         assists_new = 3)

# view updated data frame
df





















