# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                 points=c(10, 10, 8, 6, 15, 15, 12, 12),
                 rebounds=c(8, 8, 4, 3, 10, 11, 7, 7))

# view data frame
df

# Example 1: Select Random Number of Rows
library("dplyr")

# randomly select 5 rows from data frame
df %>% sample_n(5)

# Example 2: Select Random Fraction of Rows
library(dplyr)

# randomly select 25% of all rows from data frame
# Since the original data frame had 8 total values, 25% of 8 is equal to 2.
df %>% sample_frac(.25)
