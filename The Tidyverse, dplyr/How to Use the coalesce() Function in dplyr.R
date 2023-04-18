# Example 1: Use coalesce() to Replace Missing Values in Vector
library("dplyr")

# create vector of values
x <- c(4, NA, 12, NA, 5, 14, 19)

# replace missing values with 100
coalesce(x, 100)

# Example 2: Use coalesce() to Return First Non-Missing
# Value Across Data Frame Columns
# create data frame
df <- data.frame(A=c(10, NA, 5, 6, NA, 7, NA),
                 B=c(14, 9, NA, 3, NA, 10, 4))

# view data frame
df

library("dplyr")

# create new column that coalesce values from columns A and B
df$C <- coalesce(df$A, df$B)

# view updated data frame
df

# We can simply add one more value to the coalesce() function
# to use as the value if there happen to be NA values in each column
library("dplyr")

# create new column that coalesces values from columns A and B
df$C <- coalesce(df$A, df$B, 100)

# view updated data frame
df





















