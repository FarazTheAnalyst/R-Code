# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28),
                 blocks=c(7, 7, 5, 9, 13))

# view data frame
df

# Example 1: Select Columns by Index
# select columns in 1st and 4th position
df[ , c(1, 4)]

# Example 2: Select Columns in Index Range
# select columns in positions 1 through 3
df[ , 1:3]

# Example 3: Exclude Columns by Index
# select all columns except columns in positions 2 and 5
df[ , -c(2, 5)]
