# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 points=c(17, 13, NA, 9, 25),
                 rebounds=c(3, 4, NA, NA, 8),
                 blocks=c(1, 1, 2, 4, NA))

# view data frame
df

# Example 1: Replace NA Values with Mean in One Column
library(dplyr)
library(tidyr)

# replace NA values in points column with mean of points column
df <- df %>% mutate(across(points, ~replace_na(., mean(., na.rm = TRUE))))

# view updated data frame
df

# Example 2: Replace NA Values with Mean in Several Columns
library(dplry)
library(tidyr)

# replace NA values in points and blocks columns with their respective means
df <- df %>% mutate(across(c(points, blocks), ~replace_na(., mean(., na.rm = TRUE))))

# view updated data frame
df


# Example 3: Replace NA Values with Mean in All Numeric Columns
library("dplyr")
library("tidyr")

# replace NA values in all numeric columns with their respective means
df <- df %>% mutate(across(where(is.numeric), ~replace_na(., mean(. na.rm = TRUE))))

# view updated data frame
df













