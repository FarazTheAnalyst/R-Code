# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F'),
                 points=c(99, 90, 86, 88, 95, 99),
                 assists=c(33, 28, 31, 39, 34, 24))

# view data frame
df

# Example 1: Remove Specific Rows
# dfine new data frame with rows 2, 3, 4 removed
new_df <- df[-c(2, 3, 4), ]

# view new data frame
new_df

# Example 2: Remove Range of Rows
# define new data frame with rows 2 through 5 removed
new_df <- df[-(2:5), ]

# veiw new data frame
new_df

# Example 3: Remove Last N Rows
# remove rows 4 through last row
new_df <- df[-c(4:nrow(df)), ]

# view new data frame
new_df
