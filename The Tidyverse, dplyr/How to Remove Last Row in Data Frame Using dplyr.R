# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'C', 'C', 'C'),
                 points=c(18, 13, 19, 14, 24, 21, 20, 28),
                 assists=c(5, 7, 17, 9, 12, 9, 5, 12))

# view data frame
df

# Example 1: Remove Last Row from Data Frame
library("dplyr")

# remove last row from data frame
df <- df %>% filter(row_number() <= n()-1)

# view updated data frame
df

# Example 2: Remove Last N Rows from Data Frame
library("dplyr")

# # create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'C', 'C', 'C'),
                 points=c(18, 13, 19, 14, 24, 21, 20, 28),
                 assists=c(5, 7, 17, 9, 12, 9, 5, 12))

# remove last four rows from data frame
df <- df %>% filter(row_number() <= n()-4)

# view updated data frame
df