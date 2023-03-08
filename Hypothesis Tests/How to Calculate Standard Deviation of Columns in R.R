# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 91, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Standard Deviation of One Column
# calculate standard deviation of "points" column
sd(df$points)

# Example 2: Standard Deviation of All Columns
# calculate standard deviation of all columns in data frame
sapply(df, sd)

# Example 3: Standard Deviation of Specific Columns
# calculate standard deviation of "points" and "rebounds" columns
sapply(df[c("points", "rebounds")], sd)

# using index values calculating deviation of "points" and  "rebounds" columns 
sapply(df[c(2, 4)], sd)
