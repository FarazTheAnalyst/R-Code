# create data frame
df <- data.frame(team = c('A', 'A', 'B', 'B', 'B', 'C', 'C'),
                 points = c(4, 7, 8, 8, 8, 9, 12),
                 rebounds = c(3, 3, 4, 4, 6, 7, 7))

# view data frame
df

# Example 1: Sum Rows Based on the Value of One Column
# find sum of points where team is equal to "C"
with(df, sum(points[team == "C"]))

# find sum of rebounds where points is greater than 7
with(df, sum(rebounds[points > 7]))

# Example 2: Sum Rows Based on the Value of Multiple Columns
with(df, sum(rebounds[points < 8 | team == "C"]))
with(df, sum(rebounds[points < 10 & team == "B"]))
