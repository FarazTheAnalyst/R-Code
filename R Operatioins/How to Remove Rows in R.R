# Example 1: Remove Rows by Number
# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 pts=c(17, 12, 8, 9, 25),
                 rebs=c(3, 3, 6, 5, 8),
                 blocks=c(1, 1, 2, 4, NA))

# view data frame
df

# remove 4th row
df[-c(4), ]

# remove 2nd through 4th row
df[-c(2:4), ]

# remove 1st, 2nd, and 4th row
df[-c(1, 2, 4), ]

# Example 2: Remove Rows by Condition
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 pts=c(17, 12, 8, 9, 25),
                 rebs=c(3, 3, 6, 5, 8),
                 blocks=c(1, 1, 2, 4, NA))

# view data frame
df

# only keep rows where pts is less than 6 and rebs is less than 6
subset(df, pts<10 & rebs<6)

# Example 3: Remove Rows with NA Values
# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 pts=c(17, 12, 8, 9, 25),
                 rebs=c(3, 3, 6, 5, 8),
                 blocks=c(1, 1, 2, 4, NA))

# view data frame
df

# remove rows with NA value in any row:
na.omit(df)
