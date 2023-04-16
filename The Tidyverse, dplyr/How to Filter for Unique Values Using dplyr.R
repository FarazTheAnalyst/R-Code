# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(10, 10, 8, 6, 15, 15, 12, 12),
                 rebounds=c(8, 8, 4, 3, 10, 11, 7, 7))

# view data frame
df

# Example 1: Filter for Unique Values in Column
library(dplyr)

# select only unique values in team column
df %>% distinct(team)

# Example 2: Filter for Unique Values in Multiple Columns
library(dplyr)

# select unique values in team and points columns
df %>% distinct(team, points)

# Example 3: Filter for Unique Values in All Columns
library(dplyr)

# select unique values across all columns
df %>% distinct()
