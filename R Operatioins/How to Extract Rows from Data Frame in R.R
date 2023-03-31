C#create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df
# Example 1: Extract One Row by Position
# extract row 2
df[2, ]

# Example 2: Extract Multiple Rows by Position
# extract rows 2, 4, and 5
df[c(2, 4, 5), ]

# Example 3: Extract Range of Rows
# extract rows in range of 1 to 3
df[1:3, ]

# Example 4: Extract Rows Based on One Condition
# extract rows where value i points column is greater than 90
df[df$points > 90, ]

# Example 5: Extract Rows Based on Multiple Conditions
# extract rows where points is greater than 90 and assists is greater than 33
df[df$points > 90 & df$assists > 33, ]

