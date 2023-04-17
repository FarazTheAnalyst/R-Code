# select columns in specific index positions
# create  data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28),
                 blocks=c(14, 19, 22, 18, 15))

# view data frame
df

# Example 1: Select Columns in Specific Index Positions
library("dplyr")

# select columns in position 1, 4, and 5
df %>% 
  select(1, 4, 5)

# Example 2: Select Columns in Range
library("dplyr")

# select columns in position 2 through 4
df %>% 
  select(2:4)
 
# Example 3: Exclude Specific Columns
library("dplyr")

# select all columns except those in position 1 and 2
df %>% 
  select(-c(1, 2))
