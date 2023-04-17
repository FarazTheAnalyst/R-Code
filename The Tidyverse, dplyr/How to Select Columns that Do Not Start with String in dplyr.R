# create data frame
df <- data.frame(store1_sales=c(12, 10, 14, 19, 22, 25, 29),
                 store1_returns=c(3, 3, 2, 4, 3, 2, 1),
                 store2_sales=c(8, 8, 12, 14, 15, 13, 12),
                 store2_returns=c(1, 2, 2, 1, 2, 1, 3),
                 promotions=c(0, 1, 1, 1, 0, 0, 1))

# view data frame
df

# Example 1: Select Columns that Do Not Start with One Specific String
library("dplyr")

# select all column that do not start with "store1"
df %>% 
  select(-starts_with("store1"))

# Example 2: Select Columns that Do Not Start with One of Several Strings
library("dplyr")

# select all columns that do not start with "store1" or "prom"
df %>% 
  select(-starts_with("store1", "prom"))
