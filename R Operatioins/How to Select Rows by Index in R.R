# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 points=c(19, 14, 14, 29, 25, 30),
                 assists=c(4, 5, 5, 4, 12, 10),
                 rebounds=c(9, 7, 7, 6, 10, 11))

# view data frame
df

# Example 1: Select One Row by Index
# select third row
df[3, ]

# Example 2: Select Multiple Rows by Index
# select third , fouth, and sixth rows
df[c(3, 4, 6), ]

# Example 3: Select Range of Rows by Index
# select rows 2 through 5
df[2:5, ]
