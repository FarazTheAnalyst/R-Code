# Example 1: Use "OR" Operator to Filter Rows Based on Numeric Values in R
# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'B', 'B', 'C', 'C'),
                 points=c(25, 12, 15, 14, 19, 23, 25, 29),
                 assists=c(5, 7, 7, 9, 12, 9, 9, 4),
                 rebounds=c(11, 8, 10, 6, 6, 5, 9, 12))

# view data frame
df

# filter rows where points  > 20 or assists == 9
df[(df$points > 20) | (df$assists == 9), ]

# Example 2: Use "OR" Operator to Filter Rows Based on String Values in R
# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                 position=c('G', 'G', 'F', 'F', 'C', 'F', 'C', 'C'),
                 conference=c('W', 'W', 'W', 'W', 'E', 'E', 'E', 'E'),
                 points=c(11, 8, 10, 6, 6, 5, 9, 12))

# view data frame
df

# filter rows based on string values
df[(df$team == "H") | (df$position == "G") | (df$position == "F"), ]
