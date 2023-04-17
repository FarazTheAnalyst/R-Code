# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 points=c(17, 13, NA, 9, 25),
                 rebounds=c(3, 4, NA, NA, 8),
                 blocks=c(1, 1, 2, 4, NA))

# view data frame
df

# Example 1: Replace NA Values with Median in One Column
library("dplyr")
library("dplyr")

# replace NA values in points column with median of points column
df <- df %>% mutate(across(points, ~replace_na(., median(., na.rm=TRUE))))

# view updated data frame
df

# Example 2: Replace NA Values with Median in Several Columns
library("dplyr")
library("tidyr")

# replace NA values in points and blocks columns with their respective median
df <- df %>% mutate(across(c(points, blocks), ~replace_na(., median(., na.rm=TRUE))))

# view updated data frame
df

# Example 3: Replace NA Values with Median in All Numeric Columns
library("dplyr")
library("tidyr")

# replcace NA values in all numeric columns with their respective medians
df <- df %>% mutate(across(where(is.numeric), ~replace_na(., median(., na.rm=TRUE))))

# view updated data frame
df






















