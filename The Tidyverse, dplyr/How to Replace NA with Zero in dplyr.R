# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 pts=c(17, 12, NA, 9, 25),
                 rebs=c(3, 3, NA, NA, 8),
                 blocks=c(1, 1, 2, 4, NA))

# view data frame
df

# Example 1: Replace All NA Values in All Columns
library(dplyr)

# replace all NA values with zero
df <- df %>% replace(is.na(.), 0)

# view data frame
df

# Example 2: Replace NA Values in a Specific Column
# replace NA values with zero in rebss column only
df <- df %>% mutate(rebs = ifelse(is.na(rebs), 0, rebs))

# Example 3: Replace NA Values in One of Several Columns
library("dplyr")

# replace NA values with zero in rebs and pts columns
df <- df %>% mutate(rebs = ifelse(is.na(rebs), 0, rebs),
                    pts = ifelse(is.na(pts), 0, pts))

# view data frame
df
