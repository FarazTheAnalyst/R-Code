# create data frame
df <- data.frame(game1=c(22, 25, 29, 13, 22, 30),
                 game2=c(12, 10, 6, 6, 8, 11),
                 game3=c(NA, 15, 15, 18, 22, 13))

# view data frame
df

# Example 1: Mean of Specific Columns in Each Row
library(dplyr)

# calculate mean of game1 and game3
df %>% 
  rowwise() %>% 
  mutate(mean_points = mean(c(game1, game3), na.rm = TRUE))

# Example 2: Max of Specific Columns in Each Row
library(dplyr)

# calculate max of game2 and game3
df %>% 
  rowwise() %>% 
  mutate(max_points = max(c(game2, game3), na.rm = TRUE))

# Example 3: Standard Deviation of Specific Columns in Each Row
library(dplyr)

# calculate standard deviation of game2 and game3
df %>% 
  rowwise() %>% 
  mutate(sd_points = sd(c(game2, game3), na.rm=TRUE))
