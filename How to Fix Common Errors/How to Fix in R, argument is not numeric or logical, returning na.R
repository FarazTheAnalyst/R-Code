# This warning occurs when you attempt to calculate the mean
# of some object in R that is not numerical or logical.

# How to Reproduce the Warning
# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# If we attempt to calculate the mean of a character column
# or if we attempt to calculate the mean of the entire data frame,
# we'll receive a warning:

# attempt to calculate mean of character column
mean(df$team)

# attempt to calculate mean of entire data frame
mean(df)

# How to Handle the Warning
# calculate mean of points column
mean (df$points)

# calculate mean of every column in data frame
sapply(df, mean)

# calculate mean of each numeric column
sapply(df[c("points", "assists", "rebounds")], mean)
