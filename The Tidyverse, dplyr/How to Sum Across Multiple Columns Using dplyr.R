# create data frame
df <- data.frame(game1=c(22, 25, 29, 13, 22, 30),
                 game2=c(12, 10, 6, 6, 8, 11),
                 game3=c(NA, 15, 15, 18, 22, 13))

# view data frame
df

# Example 1: Sum Across All Columns
library("dplyr")

# sum values across all columns
df %>% 
  mutate(total_points = rowSums(., na.rm=TRUE))

# Example 2: Sum Across All Numeric Columns
library("dplyr")

# sum values across all numeric columns
df %>% 
  mutate(total_points = rowSums(across(where(is.numeric)), na.rm=TRUE))

# Example 3: Sum Across Specific Columns
library("dplyr")

# sum values across game1 and game2 only
df %>% 
  mutate(first2_sum = rowSums(across(c(game1, game2))))
