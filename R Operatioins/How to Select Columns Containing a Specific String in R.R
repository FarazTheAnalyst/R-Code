# create data frame
df <- data.frame(mavs=c(12, 10, 14, 19, 22, 25, 29),
                 cavs=c(22, 41, 14, 15, 15, 19, 22),
                 hornets=c(8, 8, 12, 14, 15, 13, 12),
                 spurs=c(10, 12, 12, 16, 22, 28, 30),
                 nets=c(9, 7, 10, 22, 28, 23, 25))

# view data frame
df

# Example 1: Select Columns that Contain One Specific String
library("dplyr")

# select all columns that contain "avs" in the name
df %>% 
  select(matches("avs"))

# Example 2: Select Columns that Contain One of Several Strings
# select all columns that contain "avs" or "ets" in the name
df %>% 
  select(matches("avs|ets"))
