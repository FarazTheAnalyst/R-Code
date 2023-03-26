# create data frame
df <- data.frame(division=c('West', 'West', 'East', 'East', 'North'),
                 points=c(120, 100, 104, 98, 105),
                 assists=c(30, 35, 64, 28, 23))

# view data frame
df

# Example 1: Use Base R to Select Rows Based on Values in Vector
# define values of interest
my_values <- c("West", "North")

# select rows that contain "West" or "North" in division column
new_df <- df[df$division %in% my_values, ]

# view results
new_df

# Example 2: Use dplyr to Select Rows Based on Values in Vector
library(dplyr)

# define values of interest
my_values <- c("West", "North")

# select rows that contain "West" or "North" in division column
new_df <- df %>% filter(division %in% my_values)

# view results
new_df
