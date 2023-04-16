# create data frame with some missing values
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C'),
                 points=c(99, 90, 86, 88, NA),
                 assists=c(33, NA, 31, 39, 34),
                 rebounds=c(NA, 28, 24, 24, 28))

# view data frame
df

# Method 1: Remove Rows with NA Values in Any Column
library(dplyr)

# remove rows with NA value in any column
df %>% 
  na.omit()

# Method 2: Remove Rows with NA Values in Certain Columns
library(dplyr)

# remove rows with NA value in "points" or "assists" columns
df %>% 
  filter_at(vars(points, assists), all_vars(!is.na(.)))

# Method 3: Remove Rows with NA Values in One Specific Column
library("dplyr")

# remove rows with NA value in "points" column
df %>% 
  filter(!is.na(points))



















