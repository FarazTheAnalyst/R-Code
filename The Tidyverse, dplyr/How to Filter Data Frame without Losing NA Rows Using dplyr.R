# Example: Filter Data Frame without Losing NA Rows Using dplyr
# create data frame
df <- data.frame(team=c('A', NA, 'A', 'B', NA, 'C', 'C', 'C'),
                 points=c(18, 13, 19, 14, 24, 21, 20, 28),
                 assists=c(5, 7, 17, 9, 12, 9, 5, 12))

# view data frame
df

library("dplyr")

# filter for rows where team is not equal to "A"
df <- df %>% filter(team !="A")

# view updated data frame
df

# 
# Notice that each row where the value in the team column is equal
# to A has been filtered out, including the rows where the value
# in the team column is equal to NA.
# If we would like to filter out the rows where team is
# equal to A and keep the rows with NA values, we can use the
# following syntax:
library("dplyr")
library(tidyr)

# create data frame
df <- data.frame(team=c('A', NA, 'A', 'B', NA, 'C', 'C', 'C'),
                 points=c(18, 13, 19, 14, 24, 21, 20, 28),
                 assists=c(5, 7, 17, 9, 12, 9, 5, 12))

# filter for rows where team is not equal to "A" (and keep rows with NA)
df <- df %>% filter((team !="A") %>% replace_na(TRUE))

# view updated data frame
df

















