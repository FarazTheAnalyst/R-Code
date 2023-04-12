# This error occurs when you attempt to perform some mathematical
# operation (like taking the sum, mean, count, etc.)
# on a character vector.

# How to Reproduce the Error
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 points=c(10, 12, 15, 20, 26, 25),
                 rebounds=c(7, 8, 8, 14, 10, 12))

# view data frame
df

# attempt to calculate sum of values in "team" column
sum(df$team)

# view class of "team" column
class(df$team)

# How to Fix the Error
# calculate sum of values in "points" column
sum(df$points)

# calculate sum of points, grouped by team
aggregate(points ~ team, df, sum)

# calculate sum of points and sum of rebounds, grouped by team
aggregate(. ~ team, df, sum)
