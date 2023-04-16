# Example 1: Calculate Cumulative Sum Using dplyr
# create dataset
df <- data.frame(day=c(1, 2, 3, 4, 5, 6, 7, 8),
                 sales=c(7, 12, 10, 9, 9, 11, 18, 23))

# view dataset
df

library(dplyr)

# calculate cumulative sum of sales
df %>% mutate(cum_sales = cumsum(sales))

# Example 2: Calculate Cumulative Sum by Group Using dplyr
# create dataset
df <- data.frame(store=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 day=c(1, 2, 3, 4, 1, 2, 3, 4),
                 sales=c(7, 12, 10, 9, 9, 11, 18, 23))

# view datset
df

library(dplyr)

# calculate cumulative sum of sales by store
df %>% group_by(store) %>% mutate(cum_sales = cumsum(sales))
